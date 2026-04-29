// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2.1 (win64) Build 6403652 Thu Mar 19 19:48:24 GMT 2026
// Date        : Wed Apr 29 15:24:07 2026
// Host        : DESKTOP-Q1F9NDB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ sdpram2_sim_netlist.v
// Design      : sdpram2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sdpram2,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20272)
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
