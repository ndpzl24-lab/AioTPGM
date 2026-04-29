// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2.1 (win64) Build 6403652 Thu Mar 19 19:48:24 GMT 2026
// Date        : Wed Apr 29 15:23:23 2026
// Host        : DESKTOP-Q1F9NDB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ sdpram1_sim_netlist.v
// Design      : sdpram1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sdpram1,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2.1" *) 
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
