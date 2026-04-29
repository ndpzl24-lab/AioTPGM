import streamlit as st
from google import genai
import os
from dotenv import load_dotenv
import google.genai.errors as errors

load_dotenv()
API_KEY = os.getenv("GEMINI_API_KEY")

if not API_KEY:
    st.error("API 키를 찾을 수 없습니다.")
    st.stop()

client = genai.Client(api_key=API_KEY)

# --- 1. 대화 저장 구조 설계 ---
# all_sessions: [{'title': '첫 질문...', 'history': [...]}, ...]
if "all_sessions" not in st.session_state:
    st.session_state.all_sessions = []
if "current_session_index" not in st.session_state:
    st.session_state.current_session_index = None

st.set_page_config(page_title="AI 비서", page_icon="🤖")

# --- 2. 사이드바 구성 ---
with st.sidebar:
    st.title("📂 대화 목록")
    
    # 새 대화 시작 버튼
    if st.button("➕ 새 대화 시작", use_container_width=True):
        st.session_state.current_session_index = None
        st.rerun()
    
    st.divider()
    
    # 저장된 대화 목록 표시
    for i, session in enumerate(st.session_state.all_sessions):
        if st.button(f"💬 {session['title']}", key=f"session_{i}", use_container_width=True):
            st.session_state.current_session_index = i
            st.rerun()

# --- 3. 현재 대화 세션 가져오기 ---
if st.session_state.current_session_index is None:
    current_history = []
    st.title("🤖 나만의 AI 전문가")
    st.info("새로운 대화를 시작하세요!")
else:
    idx = st.session_state.current_session_index
    current_history = st.session_state.all_sessions[idx]['history']
    st.title(f"🤖 {st.session_state.all_sessions[idx]['title']}")

# 역할 선택
role = st.sidebar.selectbox("AI의 역할을 정해주세요", ["친절한 비서", "코드 전문가", "영어 튜터", "요리사"])

# --- 4. 화면에 대화 내용 표시 ---
for role_msg, text in current_history:
    with st.chat_message(role_msg):
        st.markdown(text)

# --- 5. 사용자 입력 처리 ---
if prompt := st.chat_input("무엇이든 물어보세요!"):
    # 화면 표시 및 기록
    st.chat_message("user").markdown(prompt)
    current_history.append(("user", prompt))
    
    # 새로운 세션이라면 목록에 추가
    if st.session_state.current_session_index is None:
        new_session = {
            "title": prompt[:15] + "...", # 질문 앞부분을 제목으로 사용
            "history": current_history
        }
        st.session_state.all_sessions.insert(0, new_session) # 최신글이 위로
        st.session_state.current_session_index = 0
    
    # AI 응답 생성
    with st.chat_message("assistant"):
        try:
            full_prompt = f"당신은 {role}입니다. 질문: {prompt}"
            # 404 에러 방지를 위해 확실한 모델명 사용
            response = client.models.generate_content(
                model="gemini-2.5-flash", 
                contents=full_prompt
            )
            answer = response.text
            st.markdown(answer)
            current_history.append(("assistant", answer))
            
            # 세션 상태 업데이트 강제 적용
            st.session_state.all_sessions[st.session_state.current_session_index]['history'] = current_history

        except errors.ClientError as e:
            st.error(f"오류가 발생했습니다: {e}")