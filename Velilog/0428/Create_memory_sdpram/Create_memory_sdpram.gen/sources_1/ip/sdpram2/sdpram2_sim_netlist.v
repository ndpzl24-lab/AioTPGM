// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2.1 (win64) Build 6403652 Thu Mar 19 19:48:24 GMT 2026
// Date        : Wed Apr 29 15:24:08 2026
// Host        : DESKTOP-Q1F9NDB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/AIOT/Verilog/0428/Create_memory_sdpram/Create_memory_sdpram.gen/sources_1/ip/sdpram2/sdpram2_sim_netlist.v
// Design      : sdpram2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sdpram2,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2.1" *) 
(* NotValidForBitStream *)
module sdpram2
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.780507 mW" *) 
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
  (* C_INIT_FILE = "sdpram2.mem" *) 
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
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  sdpram2_blk_mem_gen_v8_4_12 U0
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
VK2B8EpFDkq1sAtOWyg=
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
