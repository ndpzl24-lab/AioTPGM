# Plotly 설치 필요: pip install plotly
import plotly.express as px

# Iris 데이터 불러오기
df = px.data.iris()

# petal_length 제외하고 3D 산점도
fig = px.scatter_3d(
    df,
    x='sepal_length',    # x축
    y='sepal_width',     # y축
    z='petal_width',     # z축
    color='species',     # 색상 = 품종
    symbol='species',    # 점 모양 = 품종
    size='petal_width',  # 점 크기
    title='Iris Dataset 3D Scatter Plot'
)

# 브라우저에서 열기
fig.show(renderer="browser")
