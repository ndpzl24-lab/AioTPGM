// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2.1 (win64) Build 6403652 Thu Mar 19 19:48:24 GMT 2026
// Date        : Wed Apr 29 15:23:24 2026
// Host        : DESKTOP-Q1F9NDB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/AIOT/Verilog/0428/Create_memory_sdpram/Create_memory_sdpram.gen/sources_1/ip/sdpram1/sdpram1_sim_netlist.v
// Design      : sdpram1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sdpram1,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2.1" *) 
(* NotValidForBitStream *)
module sdpram1
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    regceb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  input regceb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire regceb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_douta_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.729207 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "1" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "sdpram1.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  sdpram1_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[15:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b1),
        .regceb(regceb),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YdZPuaE7i9wWBjMDPDzAac1+DcCyHO7EglHQ4wrwYwzqXjKAIID+blPW2IWH5bQpQHEUjValo8E7
CnXWxPMkv8UKirT393ZfTBRIXT2wUblZZjMTfdc2nZy9jLO/bqB65Kw6cjQCwa87mKU+hMe02vRE
brgK78iRKKsG5B8NJ30=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
k3qVbJPdgL61y8h/yCDeNfqz35OZEY6KD9jN7hjGfvNPbTfSfmkuYdASGCi7PxBR8iNzADU+SkJl
Qo0EafquZcvNYceRNdPv3PCxUS2tkRgvZPwOD2PaCwFDOs1OX5sZXd0PByRrPfqZLdrH+TyHz26R
6hvJ+qAmUPWYcoyFBnXRW1YiNjXJljFBFtDEepcYoZ+07dUrKQivZ3+p+LeaGa36lstLskCzoW8k
TikRqg8HuqoE0Sr9WhvseP9BJ28vIXSt4JW32eR0UVCQpNdj/ijl4SpecpLyPhMYkKlOd4J8MH60
SiTDg9sJx2hJ+szLaXtmmHYpZGiiqLsn2HmS1A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tSP4e8QxCInaZJVDZzqHSXDCTwgA8dRNw+cOjtszqf848jXXIvsddITLBKgh3/es7Jsx2D6j3ADX
SNVqFBXNIRhQtiWneDB+cEAbnhHkQYADDmSXbUyzfIa7fMCRN4BnnJJsmOuF3MO1IViERsA8Gyls
2gNg+GeCAPp19IAAVNY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iqpRnkSG4UskoAWj1hYkO5Lgd6fPeeqbB3hN0V/dASLdpxhmVkNjuA8HzfPvrCKQPX3dYOtkJ9TU
cwc2DJr++HbQAISi1CSqJ9zLANyrEpGKC89h9jNp924t1jcNVIjc+BHgXwE6QjtWF/OLgkacgZnD
yu+NmxaD7cn20Eo0eW0yFg0ON0B6lfhrdzS4fkvQGHXh5XW58FVapc6MEv/3HGvCFPTkBrLp0fGf
4QnCnF4NxLr/w6I+imqFMCEIgV5jBTCTZq1qNoh+3l/w7rf8Bu29Pjlcf20OASkyoj3OUMZ5xu2j
a4yYJSB4Ocv6sD71poWiQ+Tg1D7TiqFasl1pAA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ezPLKFB9DAQIjJXY6BnKr2AHNadZHjjTs1HwkewNm6/kc+e3esRxzhN0OiMAO0PvPTmzB9eKS9KB
DL13M2K499ru2tH0NDRj/qYhftOdoINbIQGSl19HT7bIhUfThDNIhdR1hOsXKFysmHfQiAp/VJSo
d2eR4bv3tofFAPIn80KjqqyF/hZgsodTihRUKH7i/sMWw7aCHddffFCbf5f6rEBvFJrradP/Wehu
gv9oKYAnwKsiqfZAuNz3Q5QxEjOvQKrd9eiXb9+eZI78dzRvg4fetclDeIilhLv5odW3szVbJMbB
zXf5o2dZNh34Ua1th5/u553kj9jI4IY9hzdUJQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B7XeEXZNrGdDJJUsFqUiV+Bg6ryF9zdeOpmXtaGZF7SIskxu2ixLCSjL85LfA/gawbdfJIJTi5JF
s9WPHyOgSogD6W2ejyMu3YWzIYWChnnJBJ4PO5dQh8A/XLomXhsfBmA9LGMFwaRSgamwSKdfh1nC
cY3a3jYwp5KUqbK+tQqUSgJ1spTWSchCxkmeunrX6MXVjZMGWpX3ZssDWdJH1AtesjQONFIVB6jz
bkYjGfC0+uZ3XTGWkxq6iPa2k/H7Mi8nCEM5BcIKgmfZacT2EMlsgTHwkp9c3w5kPMPhvL5V8bav
gbNdlBu6EZBVZwY3FIol3KtmO432u89bSb9CEA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SSWxPD+82HwXqlz74fVCWG8yXPkMyYuLAGpFljTu/BglDEODkZRRMnuYv1sDUT0t2+bHqeZ4eres
R+YH+TlrL8cmwSre/BCW56O6T5gDhkzKvRRMndtNhNIkq4kX8jr1FSci8DVz8ZnaQ5c3KAHI4uby
MOU/me0KAiDQjwfHbJiyrXAUsMeEx4j3oR9Q4xhra48VT2IzrgmXstCFV1lBpWcY55Osph+85xDg
n2YWNGZLBTvN0NmTn0YFO7b6BQBgm6uQrbRx8vIq0xGEL7U+/qhY4WnVwmSBq3XsIAnAoWMbU25I
bj9o/5YoVjjQG+I0nLFA9Mj0/GZGVV/iv5R1cw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
RQPaE8wEjl6DrWTYEWnKJyeMkf8EacaTufRgNY74m/PGGmWDr0R3aGWZXPiGVV9WKkyQ/7eykeAL
caavOgbY0gy10mJQK6MhOOUnInU55zle/Exc1vdvHfslUBMGo8TakjBzpMb2rTb5mhHLfog2IrVt
cUNiNgcWGgLm47fTI50ZvLu3STNi1/MKrXQoQ+9LMOEc27nffUOzT0DQ1lSt8zo8hzryg2SxloxF
0YuVamN3S6syKa7JsH/RoFznmKobFhS16xr2uVlXSCueZeBl4uReKeykK76/j4ZJZFd6cWlzWRq7
uZyG0wnPLcmT2bSBqBheE4IwrPxGotSCUixVa1HsOQGFdSigTnh567+n52W5V8KJXSDWgV6nJSjt
QnG85m9DrwWBjSNWX9MIqCXdefhA6W3FSspJoc/HGi0gFygUiOT+6NN5eF0ISfadS1Sr3nmc4s5P
vlBSl7QW0Vukem3hRhUtTTYtLySx5TNlqEylLsEkbzcQ/lZp+Blt10Bd

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
S1dit1Yv4wRxEu+6T2izFgzXg/QZFB2saHNmy6T3e2fXNiFrLtL7UjQWUoCt8sZwYPztCGsJwDDG
eOdPPTKasYCoUnFuCdIYgvRe5RRQtWdPFLnA1jRNqi3XlNKDfeGiefPKPXpqTKSY0/LKZZZFW7qK
rLFOcs1PvS6+glHEL0Vsc74Ii8KI1XIWyWLMfW4guWkZ8RXNmVcoMoDz9HrxICoPn78T7OaeK9ku
zDrRbHbQ2GxZO9w507Wbk8a+f2C64uaGJQJ5+RXqrudXd69kv+4MFqf4heeol6hJLF4CBjnYyWoL
h6CvbtV68HO1F9ZVZsfsd194mNODshK98nXryg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fjSsuNSwYdc/Snzmg/BbkkGVyLynMny0aqi+PsZ9tg5s8UxUNQsBYAXA4k3U+NvjIZv1KJJx5h3C
eQWFNdvkqFuQaNxKerP4lE4MyrjFrUNjN7WLAciTEU27Kl9K+84J4DHx2VnowZVRyM7C9/eKM/lG
e5hqObwopmbuAZ3DHcwVMj3N87a+n1ZsxVCoXw6n/J4hGzuRId6RBGPzdpMrhZc7Vbgvu+J4BnGk
LKYur+kXZ6mb9ftl7x9qchv9RrYBMnfJuWbZ+GY7KvrLyKgeZX45p68NUD45Mxtv06jR1ZHHO58U
rQgVo0LpfDX3jpt3dmOpxbsKENxZ+UzAshAG6w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WrZyA3pVcsyIeqhaNRXfh3KFvRWWQv5fjbYD4k8tnrBzBtSMb91BNUAljjXtlPtwEk5amUm5syvD
wcRmK1Zod+A3T1I4c91fRLS3oHXxj7MSj4mljahaqldCWXB7JTYrBYUjzF9xSi8YBWyXxC2swrjP
TQNWVXSCnvVQ6CCN8elC2OjpTw2YGx0T0W6zcHeYeosOZDRh+gMmWNr4cwiz8z1x29w871ihhBJA
WKYSsCSokXugCJZ9LVVU+695UXadde4z4tO7lkLABuoPM75ILjO+wGXhcLjKijVqkv19ZGTDY0Zk
GZOw8KgdFThMKRlmWfysuPwY2tn6w0hu6tQBvQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20192)
`pragma protect data_block
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
L5QSOX4TKnIlSGoHVYk=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
