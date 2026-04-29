// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2.1 (win64) Build 6403652 Thu Mar 19 19:48:24 GMT 2026
// Date        : Wed Apr 29 15:24:41 2026
// Host        : DESKTOP-Q1F9NDB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/AIOT/Verilog/0428/Create_memory_sdpram/Create_memory_sdpram.gen/sources_1/ip/sdpram3/sdpram3_sim_netlist.v
// Design      : sdpram3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sdpram3,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2.1" *) 
(* NotValidForBitStream *)
module sdpram3
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.589794 mW" *) 
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
  (* C_INIT_FILE = "sdpram3.mem" *) 
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
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  sdpram3_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20176)
`pragma protect data_block
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
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
