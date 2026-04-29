// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2.1 (win64) Build 6403652 Thu Mar 19 19:48:24 GMT 2026
// Date        : Wed Apr 29 15:24:41 2026
// Host        : DESKTOP-Q1F9NDB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ sdpram3_sim_netlist.v
// Design      : sdpram3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sdpram3,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2.1" *) 
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
9e96hUZvfnEsY9j3IcEa9ay5SjRFjPxvAlfyc38zZKFatCTxwof0aWRJpyxC3NDaEPVxJsL+w+20
HiPfTe3Byl5CaXbD5NjlQD0OEn5oq7QsZ/A9BuuJpMrO/C32m03lC7zfqGtUq4W5bbJUvrqml/hn
+x2pyckcsnfvh/zTflSOKGwPhBaAvmhb6WhfUDQ24CI3FZS5W/uCOGmvOwl3ynLjGg1AnKK2i7Gk
NJQAQZCuox6YwADQLknHz39JnmQkJHO4NYh16STLrip35ouyet44VGZaC7+wWEYExMGfN2A8f6hj
vs78jL0C4EaSJ5U0H95JvQ26mrxyv6UoNXuziWLbAe2Ur7w6iuJLcYkwOrk2+qbUChfig53xNuPh
zpo2HhQAOfoP+L3EFvqJ4g3biCHzACecjshNS1yo7il4btWqN1IjvpKiVXIFAxlS/rBchp8ct5B3
Oscff2ZYUF9gmnjINA5+N+aoEA8xCBMRe4tiGD05CmoAzv0Pr0HTIkJDZsYMJdpP5Bjs8EayHsuN
YTHOGIqS0XXuR8lmmNbrKoMRrgIF02bo9kCHr7VWx7psfts1Pr43FxU+6/+DrBuImoO6DybQ6jN+
0MFj1UHkO2Xix83LA5UqRqYDMFBvbyfijqQy2h0xYerrHxD3/FJv/I+yrA12S1u43v8DTT9aSLlO
dS/Zx9+hKOIDhuxza044f8SFb2rE8MKqcrjhyhC6dzGkvYfYG1dRdy+dSkZ+4550Je0MYXNgkUGi
6n7MHmLno1LVmqC8jVwAUFqTG3qwRMG/uUjeN/5N0q9QqM0wIQI9TR1WdGN0XbCIYpKgOFdtYEvd
JSEKk5d6oVrLIGor0kiambWHcnRXOQ847oVyxJw+QdcOJ9eOoRVKYWJI8FOwSeYwdRVnx/9KCWnh
2zM4rokR0UIk5WBDZOyL+96g/caIdb8smZEKh8iHNehEHLH2LUeTHiKGkC+vLytq22+PzqX7EF6v
vZKVz4jrG4NUWt/sro8IGeZxBWHmiFn9TR0wg2Ewa84QVuQwjk+KWVsbR1EvnPb3D4006AwcflzB
LnsnagIMH04e9IBuqHAwh8QwFxLLKW8sMSBo8ScqyBmYil1EaDsRmWWVxwYPJpl/PjutPudhrpMp
YPQrfUGTb8IumUWc4KfohfksP9xCsLrhziTYfFr3Va40HAvP9tF8oCV7A9n2ICevDrlg+n3MqCc7
U/uHE5KyLut9u/FkHi1ovlKjViMfUVf+fbOZbWRDUJ5mUepcQ8gvwdNI2P1kofes2x/cKw/qfQFo
/X3zzj/aQTdDMI/iBG0RuNAoub1GNfHamoInryGSHlCgFTxgsepgAPP8Jk2s91HQWicI0Ekik3lm
JHRN+7P4ht8ZP7E0kvMgzi9GLl+D8uXekYjqq+BCPrFOnrXB+UcdqvW7ngGLbZXP7ADMqUjxJrHI
n/tsC7kPx5tWGtaeIr+Gj04Ik0zAiKtvxfrEJfSfrUcjB1R/kTl1CDtksO45rbcDt5CXvjwKlf9B
AghkGT3F5RY+7Le7bzGM5roC5JJnTFJbot2cpAHJ/7nJa5eM8wJekV4lqrtFouKPI00/gKGxVdHU
QCpTN415PhASFnS6oi5bfeBsOt/2ByaQL52hgjTz2NUf7pcjIOzaz9gC+ZXrkZaR2MLLO9RaGnYz
wYNhjQlrcSeqLYcSqC4aGR3wGUpcosCss1Cg+xVLTuUOVL4R8Ajs9lN0Nse7apD7N3HhcztnctWD
/2097ecrxcsaUZ5Rc4S0U77YkMv0JgSqKgS1Gci9ONo3IDnI1GeTAX3XNovs2jl82NCShdpyYYuo
gU4QCh2NGiOfX4Sx07/vo4ltoJJtTbdlXy+TceT/2pAK6yQXTFPzRQLqZn8eOamCwWhzbpdXUl1v
kyTg9yp/ec9aWH+pAiKOX0HX31IXAYnOB6tjoEF0kFJvkTGJCLQe5m04ohD3mUgyJL4zN1+3tA20
+m6ZzWcSjoSMSXQ52v1WqECSRnF9BuRCLj39OWb8D3/gPByCJx5nUROBGOQwbZQaNIJ4h5jBNaZD
ZS/Ve6FKuhwh1wa/K1P0flM3eqspmyQTVy6Qj7QU7G8gw8tpKyVHbqHYIBpbcHAKUslcZeZfAfYw
9nw1IP25/ZhKLWeCZhNYEoJyj1sJaL30z3zR3KlpN427n7H89CkV51D3HUvvSIau3sVYj269zqPL
fSgqTmER4ym4Tf8n/o01Uz7e2jA209+ebq3ymajlcCeyackKb2fk+pkxa2orfTclVCe8DJDYaK/j
e6QfrfnnoOlGry0hzwP2lZKRqHltdhThiHDwRlkJ8hM4d3b3vyQKf23Pon1bXgksUbck8zNyrlPp
e578VPU3i9EB5zjTK5kS9HMDMYIvyWJio55bDhEuBYKNXltI5skD7w2qcI8FNZelFHaaXzgN5Roh
H9NTPau+Rj9VucI+L2fKOp5wOpwxQzOvsbbsXjwuVwewLieswsG/Fh2Dx5ZEn5zpd3fjGy8GnIKw
yxLC5WOuCyyMSo/XTc9nEFRqz68a3uK1D1qYoDmCf7Q8C4Kt1XRjaR494dUxikX1+Y1S3a4/DZX3
o/VcFbj9dHomh+e5ojuQyngpNqBB/iWNGQcrOU5szJyzYdflWmsPw1wT3iNJqxuwxJO8q6B6Vt1I
BMOS6S7AYEcu23iQ1rt1MuQc3M1REqpr1RKsOu22W4ILG07ubt7Ro/7c+9vgR8wppBLi1EesmvyR
Cg4+aaVukQksQtoSHMMuN/qUUOvB5N0EQfVZGaXbpZYSxs61xZMgnC2naR5bvcyobh5lrHTY85bE
7VVPVczRiiCzmqFTiquTy821lMfT8N824SxBZkkYQiQ2MeNSbSjnthQLuKlA1pH6+EoNAJHcwRrU
o5GRyqficU1g6uUoc8ABEiLb0ChATSijfsY5BzS5WP2E5AI2cGZdIvyFIzKazNS0/tnt3r7qKpTJ
+Gl9xG0lOknE7H+k7Rjn70KI9psbF0pvpYygGTlysY+q/RqsF4YQibcUphxpMTcvhL7syuKjSJbQ
uhNjxIojPnkYDsbWcEFc74F5tPEXgtok2hbf6hh1QiTiaFmuatTu5pNHhEjrezVWWVQGjX14cKV5
/T/yBD4xCeQeum7yimMPL2vEtAiT/bt+G1gOOkMl9Ivl666HYMLFOd9mM4acUUQrFuDJTr2MHKmO
o8CadCpWktpzoLEAQVThN6QVwDSfQBtaeMCNtgG6SF0EiA65t/Y8SKCpZNxhZBnn/011sOrp7tvW
/t0vJBxxJAkNVsAq5a62fBiXvRQ840Uac51bj8JCtocn7zOWbbATgW+UgH0kFfHFyKCuxH6rHRH/
XZF+/r97Ob49xWLQwxVchkI6ixFfDOEHNblXXoMBjykrH/mcM6kz8OJYd/e6uNhBTxKTZ5cUKheL
F9JbPGWDWg6MFtg2WEwEiP+QIi2k3TSa1KMGAFcJSJv2ZtOcgFWQtw6NdefwXJXTMGKl1AjEAeCm
mJ2pwM/YD/QlOoLWdq2Q2fLAs/ixHJ3pOCPy7Nhw2ySY/CzVXi2mC71Vv+Y/kngdH40/+1DovTje
ZPlyF/Yt5NLxbTYUPwkoobZYt+rIoIwqZsw8Cusojb3Y80RVnLEhP0MjQa18HMJVhV3KdXCFcnJp
GvWO/KFX0Pcb+7dJKIW9t0OuyFAU6EX06wq2j2XF9qtnvFf8CRpCXW5LVEZ1M0kHA5C1n8WhN6Be
FLEDPnDa4FJnXTiTjQ3pw2pnRIht61cO6KZvyrD21r2wOwDttJ2ctVr86qVINJMBLRJqCJJMzFdV
BFe8MkP5TBPOQANX+/GhAglY+v2BLuAmVwgRskAfjUUArgT0ONFvJIm0w6607ZQLRXIswRc6ONVE
Z8MlK2MOsN1ulq5XNZUtYsFc+Ymqai0BnYSKoIpNrNGbCyRAW17yIc8EB+VBs6BzHbLZtV5A9A+N
liPDZaVcHHokkdt8zCVHHhvBHpk5MCFQDl1HSUjB+xufQHqX1rKSA6/1levQiamG8VRQifgBNx/N
wGnqE0JwZqzT1aPtMvLIDelG7sK2XBXdxE8IoeDxG4iB4A9l5sDcCzWBhNSNaVHPNArz7SuKU8QA
0FL0RsZqM15cr2DtUjviXY2stfSqLxksqNXmuZUr+GBcZ5YwODj1h6BZHiAXuEt60rgVZ5bsz3Dn
yePNByM1AQBaPf+GsGAFFNVCVpadj4m8fNz9WndFlYlIdUyQTxKIatgLoRAXF/n1NCcAwe3VRhTq
SDiDBpDkgjQ6RTqw+GeVDV4GDgPITyu0PVmF7/voLIaL2q9uVyj0TZq1eET//Jb5BEDQyLFwmhGw
4AMfV6nMRnxmhHkvfe2bAdsuBS/yOfbwXqT2WKan7U+m/8GJnX7wkurJGLMy2+yRyGaVj4bauFPy
yrUe7Rp+Jam+rafdf04eEtfcivGwAlBQE36dD5r+gs2xF8/z9BOFAJVqKqyUEU7URjTpLX68GQLk
CFg2PN1TRB5V5U9kfY9F4IrQMzQA2L7K6n/XcFVJgO5dyDU/0wR+imUpyPGMsGLu8Knoz0s2OpiT
A/uOBN0XlzeBZ3CSIh2+xxA/2ZbGLrhAgIVmO3wMdVygXFFCeMMSKmQf6MhC9kdLePDrelFbvfTj
ow5kEgyEODBifOSYmJ3BfqREWpUAAkvCcQsqPgAvdPmpMEQqD0Q3DY8L1JB/w24LW9FahB3Sk+0u
aZ70hFkFCeLiFT2vXfpH8rZR6hNPlwf8nAiu/LoRDzton1cdSoadoS1qPuhSzylU1ShvWq+c4ADA
kWOcM8LYaQXx8i+SIM2HfZ8f6uE5+5l2NnFMauYM4JfKSdiZnwENyNoDsrYKr0uP/SbXlGZ2u6yH
MPsTLyPAMdjtRCGcx5tq4hMlnVwzjj7LSrTMmVyH0fZ/nnA0uNxbLFVP0RNae3oIohwxRpW1nOla
Zj6oyrq5EKcwvnY89G/It1eLypS8ZVPoQVgmW6qgkAadtfKqpcuJECY6jzog+1QTRTkc58auixFB
0pIVU0A1dU0N8rI53QP/YUC7WuSElZBO5+9q1M+IiUkfQA6wvb6ZNGKNh8ntC0EFaQTq+g+h7xCo
F70N158PLeoAxF6bnFagBap+193ND66TibabSNAetjkjfjL6d5m4mCTifdt6BbWEWvyRAfB1kopm
nxbTzI0ZS63jEOw7+PuULikk8RqDOQivu/Dk7CGBf/HH2TcQeSsTTyxnwAgzjrKwdbMs+YS9MAEn
dDzxfEgs0pXlDvzF7NmZsIl+1hITUsSAV3D5x1htLz5xk6U7MwPgrfUaQAWYJpekiBH780dSp7BL
aGltKxSO+0bIWdfNBQ4y3uzDNC4+yT1nBWVCEPqpK4Ns18n1KpML0pnrn9Ig/COHaOguFBpSHtWL
ffwEnoQphUv8FBWeT93TbUCy/5b3PjS0T8B1WfRXh4BHakOig/xEwfJ5nFMNJJMW1Jsdl7i9Z85O
znOlo7sueHVhXTSdm7aT36Unx5fCWLwTM5Qym3FzZ/tHTcj9RkqDWeg7Bx3P53ZuDQxEBWHX6Z1r
/SXZS//NvRBa7wSjRZ1kGa9pAm5d2mH0HIuw0aMFvA8vuroJJvsfaMpNkGtmN3ZZCGhQKeXWKFwh
OZUe6yc+rKh1N6ftsHMZYk+BH/A6CF/ZsyuRSEHazgOBkUxHFO4evTpiS6DQbo5DraUXQGIcI+bJ
nsNuWqPFnn6BLc1DVQRbCu3AZXb5VlnaqRVbPhka2BK36EumrUSAnUGFUX9mYdD9SHYNlRxFH0VO
l/LEBwf5HZ6IcdlSCfUl07c6Q0fNAKHG61kkuKebGcDH1NILNJvZsftz5JomSs9npemd1puZcXo3
b06aHT1xrynLPdmx81ONhlZd47rDOo7alRb+g6FnK5dEMytWXCO9TBRfsuJyYSLfGQI0kOSsLzt9
D4ZUME27l2qpnAvPdwy7yE3GQgdefSQW6j+QRVDRYIt+AvvBCi88sFDog6c7E9XWovxrvmxJ0Qm5
HvQ6dXp5L3jkUY3kmEcTt9Cs/xb/n3H5fB8oElvslOoN5uFOJ7EGxWaAmPaRHn4gig/PG4wDvH2c
tyZoXHYO7bpzXBXt7gKzN1rGrLjT6yTFyDjtkUIrXq5jIUBA0hB1NeWUOuLD30bcagSMNShmFu9d
MoTjpZZ8BeNEbFZloPEvP3pTJcN1454w8JR3w84k2RvaYMeM9BCnyUzS2h5UISFARyBBnQKIAnFq
GtDwovdRSH4FzkfQeaetuLFRHQrC6Zoi3+sTCwOIotjT392BqNgfgrL1XIGYM2Lnq8VWDGSP1Nro
IlxR6VY9vAXLFLjfWKskTxxJ556MV8wHIcoGd2HKHIUZMAzxTmZAYucNB9V9HVdSbzkLxwGfrnPh
hFRkxk783PXlqp1K2rKbXyAGO9HZCQSF8U7UOyu0mXNqLmmubBX3YlTMPPgtHeiUDfSpLkm9Vcpe
1NT9YbAPKcal8ahzAjLJg0PUQN3/rWq3Xw9bsAXhgPA66eixpXWWH1P/Ypz6Np2/xkglPWQDI7BW
VakC9aT/jNZ6s5N8UHdRCj+Hy37YSOW9I+b7lV6RI/Hp8wYy9hGz/x7CPzFIUDhDCRWWTDgh+c/J
IQtJ1tb/JO9/czjd39VL30ii3aAjEdpCyeUdvFEfuwB+bJ2gEpAgodNuBzEMw7n3kEfhBCRRyLzx
jXqoHS8IX4olay8ikkuCJkfE4SHcbAClBei5zvKtVniKbYRKRbrtDCUnRF6VWHOY+r3UBj1EDoQ3
SheQFeipxQXRH6xbSE0e3sAT/zDiCT+Ph9hpGcuTf6xuShZyw/kMKxfYkbc+zWT14Ipjp6gr4aij
zTIzZM1hKQrG7tyKnx0CNrTq0z4nIgJ9bzgqzZBcToA+sFOztMLR3DqRcCEhnyenMYfFkVqR+B6z
/8C5VU5t8AnwhHDp1aawDK+lyV7eIDvsblos4VZnC99IQIX1F1fTZvX1hgYxJhogb5JtSFRS1a+C
7tDQQjq+KL2U7Xp+PLVKxRdq64kTySm9JngBwj/nvSMkFfP5LPfda9AN/Lefe2L12bNPLULNdYHH
Fbwg6AyXmgjx/M5g6YNKHOsb7FbqtzX0kr7B4lLv2kkLEhZxJZTYSzX7Fk92wqu2TPJAhoTNEHz/
iqz7k793utzG+1MyTALAOINAg53cZXLQismViYm8Y/w6XuZRqKbepESwaXJlf+zLUo9P1g3gQQm5
XUt7pFikfMOAvKJS8mqm1vzt4/LXuBnFJgaTWog4KHGXQ6Vi7JW5m6zxyIgjU7j/wye8dSen65Kk
vyQzu0QMOMre6wIpbv/hCHrSz1T1h5cp/ZWyX7sKinkjrGhXLjq0kdQmj+1Atl5V8fkx96IQky0+
//HCVM6SoYIIh0luY/Kd5s+89sgEYzbWUdB2B8bYobpbhyIai7heCBszZdJiUDEB3RPw4zk5XWAo
quJbYw6rRLJticpCAMZ7cJewm0gCoHEYEbODTTVp1iJPEpedqD5LvPThrEVVTv4ro2pm8BafI1ZB
JwlWSDVX8rQ0fDt5E30KyMv7IVhTkDtmGenblERxEr0gt9Gkwx3j8Spdj1AL5aoLIQq0wW/dOCU8
jpDrN4t9IpktZtILW7IM2PUUJ6jXP6g3wuIMltztblLqiRJ735hg2XCjEts3I3rT59IwXlK+GyOn
rGvgt/oIkPcRsvNe3Z6K0yTT9yLL7Vi1OrFpHlD3AC68fRaTKtJkL7j2Kcbyt05PV62BBeZViZji
NdCpNJvuFqJ/2Tdkl7sQkaet4w82H1QDVWSHkJZ8B1vEAddgiPfWrsWD/UT8He46I90BmVL69WdT
2BPPQu4UhkTwl9uro+L0eu36U0xEsY7XWX4GviJGhtL+u2frQHCiiz4WMnspAk4LXcEenh9Vim9n
GoJvdQRc+uUU0pfWgVt86zTKOT/sm/8A69kZlSZGUd2o0JZvdj+m9k9w8PEJItmBohXiWTGsx1OY
AXyzORuIEOYTUIU6nUYm1QNzB4va9Bt02ODmWMH6CMTsLXUPMfLcc1/E86s1QZVLuC2SVjLPoqxx
AV9j/fDobKOP+dcpU/Q9y1vR/YsEehVmqPLYxeYxtJCqPrC8BXsZ2CVB9NBZ5q/opyjCWfj1UqJx
NzgQ+u/ns6zxeEsR3YsIeHr8874JdEdxKDOoCvH6ewE9/fGHp/MVfkFFbk6aiAkicOssmRyHLwTj
7gAR+9NbJ+t9nwySls+QwqkB5TRQ2a2Lvx9VYFxw2LlLuzNNI/182SWYtAVR+T8mLhhKZ/nTA3Zn
1rsLIMLsKVH5TF76pbb2oJT6yNi4TZGuOWMk8gpP/vrIKmDwqzjifFXF3YBYR0+8SkUy8nHX4j7c
ochKSpa9KdZ71iZqecw1KHo5wxhp2vbNLrU4aoHl5WvU+qStzJH41Upx0cXybgUHi+3YguT7ADbB
yOvrEYYYK+TynLSDfeeo7yCxTz5sNA04oJKc2GHsjoRfzClX0Y/p3r8Dx9TZKmI4/2v+uhrB5kFN
ptxqTOJhhpO0lnSt9oS2PWrL9FsuhaitR1llQRnmWHLt8kFtlj+OeepomIZ7tVG9i2ev7DcO84L5
qsR8/2qpNUGMTYJB1OkoUu4XJ0ND+af353mj2QQcL5hdYrcjZrRthKRNMySW6Op7JMZ6Bl0Yct7D
lk1bu7rmyK5aIT5mWyf1YOSfLHdSs1FYB9Lm/t+BbsTBqaXFUaZTH2YdJQhX5ZjuhZ8tC1SKg9Zf
mvtcD7xRQyCFj6AgynuN98o12whMjpROHk7kUF/XYXrDjYqFNQuGcB0B8xBrle6FVPtuOO62j7cd
NUI4wTW/z6eb503InZy+1yb4jl6P2awiA2aQJFASoPWIy//Q/oWUAqt5o3WMswo8gYCKPS9RsJTa
ufncbxIui40lFHpk46WX6pHuhVSQYvYfclL0z0Ch6+4FOgyLnQ8RLjWfANDrVbr0LiULEaS8MCbz
xKn7vpWt1WVF/AIMnV07zdpQg0FfrhQQ2TBEQTNmSOMt9NAOyAKKng1B3lzdcwSqSBY6WhQwnt21
isajudTYHc0pFjjoEgQ4ml0595lmy7yzAzT5blZZwLD+KJNTwtr0IlWgnh0kM2S3lStvtJJmTp2k
+EHQcdnAB01uYVrpGVNs14Lcw0vKlHKeRvcNV6VM3r2dn2f9psSxT/K45xxhsqv4SweE9EqBjSXz
0FYUqMlqrrJhQtMCPAjrMArzhTZMUr7xR5Z17hfuzQNcCdTLihTufaKbp5BTrcpGuT3A+TpVFbcO
TslCqb/p8oIj5lad/6Mvl1LYDvXP5iqNzbOPtw2RqqqWA+hew+Ygi2O32PhyB97hJBwlrSPrpRsX
alpDymqCUfJPEPM3sChRSCv5PiufMAvdsJdHi45d5+h9viCrm6/mpyBVnZTFyB/Ju8PorpDnewI4
SmyYX0vpZuK5llKHa5KPZDcX4lZr7mQ2pKzxlO2kHAQ8xmZvYs/rmmLhCxa6vQF7e88Pqgf1tA/4
Fa+kJA1uk+UVyo/w1htWcNHqKls7VcyUF6MUfJ4vLUsqFpQZR4l7jwpIuaRnHz8y/RY4Zkq8lbr3
Je7U9MkUTg5dTUNNE60ryRftY8MUNxJmojz4ViFlaWI60oVPCZIqqBEoVXlnaMVoDrqmINUnRyal
YVoFiXB7nhelwy4lzcogEn9kd6WNMXD2yWXWBS9gsj64amNeaEZbQbc5mIyLRpNHoECvIGb1HxiI
2eR3YCkN1YwLev4uYJp0cK40kC0GyVKWj2EF9++fkN6XOkFOV3B2Xp6CRwhlDXA//RSXbhJfto/U
rIAiypvpTSrpMplkEnmJxryA8EKkktWKcrCyR/GimQgX1lrAVproiVG0VFVLxKPVZlZgWxm5QqlC
CIUm2OaotPwHceuwJowMIfL7HUsGyEnFrwfuzfZuT8x4uOF5KdPVZD7o1CSjGp0f6F9WT6CtjFsk
tYYLRcfW1vbduWt6o1RnC78D0UR3xmLLsE/MnnxGSoowDanOtlGcxJIOpxozm7oL3u69uShygHBN
7yjL3qXY/28Ovz5BjiGbdrj6jY86vZ+VdIIc33ZXmKndJ79is37impwGQf8mE0MlUPXX3ptJMuRU
eGk96ryWRwdoSTpbOdgVDi95VxWvMEVLZZ6blOYbzxiqsrUX7xfTT23tH2RndBmnxSRWoJ29GThN
zQ+QTZw9j+d9oF9MuCD6YHZx78sAhU2su1RIKS4EzCiYb6cMyCFEJ2S49SttmoYlsPvytR4V5JzF
yhQEOOktGJjdivrNQRI/vazYUa8d9QYAME6zH2xWd9giTt0Y5jwVGgdbkQbwA7XyUst8N/PBxT2M
7dW24WbQScYEzN2Q/HtSh+mPWF9e4fzcrB/S3rxS8Sq9gceUPXe/GtUTxtQ6BneIm8Ph8rpU4wbj
lQtxGRX5Xw4DmdQrSNP9l3xe62PQYBAutwb46Supo2YA/n//QqR2pY+NmPWcWVexB/rk298ZRjpB
xP7jggSqXixyUmuKCMAzCHVKsYJYsfBjUl3PdG3r90tUNVufsAU79Kkzvi2gHFynnFNEtaFFC50u
XYLy3KNqMI4EfagYFABtvte3eJg3FRcESMZtKejU+K1cFKl5THLKmyityJxZ1C/CSzjdK6SI97mA
U9YYk+V7k62nIDa6hbY6M8TpQbxKhrr/4zuhi7MIZ6YpQ45HLozLRmtT2sdS8t+kWk6BQtiejGOb
imn5dovYUA2jIrwwaKQhcPmKbQ7XEv24zlRc78RskgGAFrX8ZmpFEHpWeFm3fQA9Iu7feJdr3hUO
pi9MfQ9Shq+O0L7prRgRRLyhagwDwtVk4GTJ3mrHT/BvxpVWY+qxf5GjmHmSOKvOZCjjkNDueGgu
aHgJz0T31R1L5lK3zuGrYn6nTzeEtbs7W6SBv0yozGkDItMDgWoWXgtLLdeKtU3wAPFp9i20Wuvg
YpvpixnYPkVVF8aybBO3OMiqIbF8JYCWA9K6kgGRtg+jMO/Y6BH5PT9xHl10RGJ6rjYOfjvHabJC
D9A9QGbKREXKjBjZAoeAtWJWoiX292NH78OLblhDdtMr/ieEJgQJmqfFW5Zs7Ynasx/pbSo646Oa
kzQtP2sqNoXYFoA4jek2GlkKEwwg3zfIHFqk59Wvgdhx3B517+fSn8AzVCRPqqGaqrd+IEtPqVT6
F865271xioBD0Ydv3Mhnh7E5hxAwWio/7jfH7ZdVqu2EOxD/NRbJ40LPp3odq41n7w/HNNbLzOYE
6gAsLFRfWo0y7Qon6VBglDroWjaKeq0fMc9SxcVqlE/Sq3JyWXYxfRlTIgv/TuYq1Fh2KbNUo1v9
i51HEc2c2MXNbaLKTwS2WcXiEcwCRjoRwkzomvzuH1l66rQH4Sa3USDPKEAQrkseJRkffKoveuHz
Mup7LOFjMnDeE7WQe+lLYi0fkuy7mwSqezYVQaKnwZBC/L4W7l002hl8Y65Q5ThGEBbkBpy4glTT
uxS5wE/m451n56qExzUyutDd8COENufVjoqN/YLYJsQIViDeGiVnsH2AxRY8SWSGPUkilZn5nvoh
LsqJ7ZWobhUI/nGpfRWwHyoGe/0bCaib10HgfY5ls+kBmygfO7GAVXSg8o+rrSNnXSmq0q0iHwBx
BmZHVqoB6R0wL3xoAImqewLYS5qYetyYkjr2u3CGiKAEqGKZ8iTC0x9VVOQPBen7DaVdDUwEJdBm
vbSyGVH2/dZisxth1XNSHnBs70mAmTrUzmRfsP3KIctBYadtsGUaH+SlqzJyvJIMJ0y+MdonaEte
7/Ww54SM5if/LDx314bxDGNFzlBdqadt7E2uAQOiQiUgvyxec1ZM904BN2VmwNuuGl20EQMWBczp
FygZ9mFk3TNaBKeThyoOgh+7JkahdAA1KBxhO9kJHoQD/eoQtw3XekxKkcQXZup0ntwFgCU4Veze
l+uccAcL0Mt9KKLEkf2yzS7TxA2poNTQPoEDJ48+31KHyjI/2spgw3MXM59SSoyYsbQbzrSWRAHJ
dvIeEWxCiFW0YfT5kLpKB0/xgUVBvtqaFU0+yIHgC5IgERpz1IOcFPHuyCgbykIrwViDUmH2dDY2
q8wwJar/aCUGTbcAwnMIV3cHTVKFB5MdOmOaCdD/YuURCmXSeFe2d/N/K9R8bQtgHGypf522PPB2
o9SN1C/AQfqcaJ1uwHdyZaxCH7h9UrfIm1qXUOAmQVQn2cKBA7RDEvZLbQrBFPFUSaBq3FQRk8SK
SNscsoDNCfZbh8zbXPaWwcyKEvlooR5pQfb/PfNqn7/AZyxvcvcT5jp2zjt4PDsX9+2rHFBhV0uV
D6t7U5NJXlNhdeT71BfY0ZL2U8eRs8wstLWhb8pjmChdcruQWiAB1+Il8ZyQR80T3eAdFo/yqNM3
4QxbrwxP963hwJPZNJNOrYtXv2uf1XokKN1yx5GJGZBNnOu2rvJNZbRWldOvHp3f8t3XUePuicZd
BS2tVeF3hoNnLODgfzxf2pz+p45sTS8HoT9V8MFCiLg8YswjQM9++g0IVQsDnBrEyQmIe6zZ9nev
smEL3jxNfGphM/r2Zp9dwLWp/k3aRriz1iX48RPbjt8y000KsTR5Z2qtymSABp8FbfJOcxl3Z17N
qGYGgWYVHprmB5wMTKRWpGwv70NBG4cV9WUvrlNt+dzRfte1ynT1A/snw2AprvvYzs8xWGsBAR//
KrpWapmPBCv9UcW+Frp0/5nRq7pbsk9EKCdnO0ppTrIOVEfQCTEY/Uyf23VPvednzUyp74YZhVFm
Pe6FWIHLibYpFk0eSWVkdkdWm0nF4BPYObezgegi9rzP905wDna8C7zHYU5LuMuQeG0XcZjeVVhT
dJlzUwytA/dYq8aNCkpUAGmfo9pvRH2HYfdIheZGCmK39vEgesD0IZnaZgUWlnHJvhddUCbDKgqx
dK4yXcPzmRcT/NkFNNAl80etaDhiS2aO9wlr5PqSO8w82Ek4hpaOGy+TDXiwvxQ+yP4muO/J973r
lpWHAnospRE7LztsqIueH9WhAjfqRXdjP/abIPa8aqeWajaD//KSRVnpkINhcuN0cbgpbo7adKlH
FqaHPat1wQpKDq7YL0Wi8rbheqDCw4353JQjVTdF4ihbCQb94d3rMKjbSGRz8/ee4rKzB9e8/iMY
u5QB47G24Vilmjh6kuOezII7AZgX88kUj/oshp+Jww5WjYzfaq+dHnTp0TVwaZ5ie3Mag0Q9HsTW
rqPTaQA740LOu7wKq4YEKORwkE2xrEcM85+WExaiNdw4+Cb11KG7X3tbA+9lq+tl8ihEZY74TlJl
83XcNT5OX6s3a1PZzVRircUex/0WPT3UDgoXa9ksvRiaSRDLiaRS8hLhf+U3mxoPOTVp088ygA0p
oqDn+3GTTKKORe4mMKvz+5wMppHfPi9buQR9dmVpIiantgoWRsRESGqhMr2YrHlfSKNoj19/G4AN
kejw/ul4ayLK4vDmox91wbZKP2u+h2P2Fiy9mfiHsp4enBscogsbRbNt1rgKjlQMHTROM7AYEeH4
Pd0i7LN2ATnk6gqIkOVAWZnhaNZ/PY3W91v9GAoyxsI+CimlPXdOm3e0ZWDo42WuZYF9O75isWEI
crpMYB2CUsHlbOC6uXQpO+TeGGdvZbK+JCkpSI5tPfp5Kie9yc/4Qg3YtxL9L+ldijLbKmI/+cCu
dycWORvizmBB8WAWOCKuP1rAUo7qXuhCHjo52YY0l2MUx+dgKcXj5kLwYIA/Icr0p37UuFIoFIF1
Xt32HVSjwMNlgTFQ/2oPie+JnOc9Bn/a42LfvtRXH8+ng7gOZUkQnUeWB8j2hSLgEtuZuzqsXyzo
J/RFj6jjEjpMnSYHFk2TWYs3WVRia5SptIjabI8C+6zpldVpSQXTRakxJIf+IMvJBm4/25CINyll
B/eLpV3Aj8ppjOeVAPWQlyPe2++YLOOBa+rtbemaIiX2cpqvFJNVWlU7j0Qub3VrhPHD6fEYk699
oFqGdNvcc5rtlfrjojO+rR7gFoeLA54wuKPlfBu09mZCaJrhJpLjl5GUnQ/U0nbrk7LEkJbfClb9
HfPKmpqpCN0LCGiQ6a+LqpuT69IY5LjVKjGnBxEiugejVCwTelvRPxcMQhM80k7hHdz6A2YYgEak
1TcsQ1tD6WdHgDILJ1ThmL7jGMcOaKHPgkhHXJ4NZFyDwGtU6PXxTJGmyn+CnjNGq1XCej+mvNs2
bz1zEwXWUckHAoM4xejcG+yWYHf2thxx18lI+k22VMg8UJeyitDWhTXueFNT7E2PMHWM5XPu9BB+
3tzIhnqDpNyhRZHYUXAWqFbGX95yUoVliD7fsHJJ3rCgIo1A+4gh9dktbD2nwvl72ufhpKXD1p8j
mQim7UntiXxXfr03qYi7pyVouU4ixsdz61P5BYfM7Y9TmXsV6oeuE7stHIS+HLYyszWqlQ3rQ7zz
+wrDupi3tUW2OIvNf5zlvNpqTPK1RuPVwihaY4iPMF9vw0b/mfohQMOa4o+7eZRBUtH/oKjUSPhu
B1HSwGPoJ8vJLEyna82Spx1qKwvI6WVj7o2yJbDb6dB7Hgk2I8iN42YARNIUQFspagPrVLDhdvbd
1Bh7xtJKLk0F9uI3SI81VDDPw3L7oyiYu9C5KBFwdnVj1rjeI25my2zXx6Wb+Kd9lAoEWlx0a+tL
7Bme2jR9k2xRdNYyg0c0cqvUEV3+20Zhg36fGT2NXnL43Zh3Cug6zEqlBCZp/tAJ9k593n28kFSN
r0yCD1WajnV672sGSasD3DlHS4twJrBdx7blSpqC8G0+SRSDVADnnf8jiTb7HEG4wupNVgnvTtOn
OKgZpup2Gd4YGucFJ9fjO9CmkRE1C4Nk80sOS6Qdy0sWJ+di0Ln+1U+fI2qxG8H39uRrmow5ggAn
8jqo6WcrB7HBDlLIGHg6g/zNBb26Or64Evw9tuUMl+dDhuY+TZ7OlcRWmMI8F/NPNayC6fKVeriR
u6ZUsFnI3XszSr4OB3OAi+UvnTjLQJAZV4mWDCBtB3QXDPRB7kZIQuG1Mr6BSN68Gi5xNsGWfNqy
lGR27mFtST6KIONGVEIM8AdQDM9ZaMU3EC2ZDgpfdEKrmNTH2YX8+48Gj9t2GquJg3haNog2bAp6
xGb0jElOuojAPFO2eWivjy85T8eNLNRrB/RaHtXLZL0rMBao2PtVq0kCCRNWt65yYXFDIwK7mB6p
LH0bWpCZP86yihM2vRyUt1vFjvusBn/noOtOYiyaxSxwjOHOVt93blX9f1TPZNhsUgc6c/ommcUn
c/SZWHrONb0f7oJ+hqdCLHREJ3+UDQrgchdiM29SGC35g/M0jOJWajK4+H43ChpX3ZUmcXiDF9Xh
y7KAIl/fQvBs/KEjkCyg221jqd8nQMBLud3QLxLTSaodlbMXpStvHrU5f/O8SMQypj5jYZF4XRg0
Px1/MFo7zb8jLMiyl89J2YozmrKjxIJqZ7UAcoMRHO6NWt9UixujJg2+ZSumJ2uGunPJERV222Eh
8M6f5/CP5L364jXYGTuSeTqKWyGGl2TCU6/lWILcGVmkrFkV1IjrhssCQdWHCCOD/RrbLQfvrx3Y
lgiCqywR2qEa5xMYoIPL34iEFnd5YaBV/tHFeU2wJdz+pxi4gzw6ME5kkB9T3c/FvtHILsqhCb0o
iT93BRXGe3dLFYvLFWf2g6lIw5+H+2hTlFlXY1w1PwMopPIsUkhzMG2CKov964exTG5PbxVF/1ai
T/GV0OaGCPEDh5d9vLCqw7LTFvz1MHObgY44q/UFFlGnZzEE4Vu3JyElF7yPO7nK/FcPiHP7C38M
FMv689CfiVL/HJQuq1ayikWSqfDjrKLY8zT4RaDgHiRIw6r4jb+3HikM5sLsNsiNT0GyPZn/aOoy
AnagQZAGhI/qZ+3utSIYNwMdu2ysJ1IZbJfN1ctOYemQlMUS3rg4KGyA4CV7p936WYvdGpkN+yBf
RD32D3E1J0GdLufIopPmOpAZPV5vfsLfsAy7MxA/wUzModbK5Ap35s1shS5pwcTm0LbQBkbhid28
T1k91uRVy0TSGSbWfxBnNM7YJ4me6lFsN8zMtOaBR/94fLt+Bj0cfr2SsAD//oBkW40Ufdb1ZdMq
F9PB9z2828CmRrzgbmUdLYhZdG2XZGN3iSEha2EJHBCAtF4ShR2rQvmHn+DH97zM/73YmcrshgPr
JzJ/eW7jsDFn/BIyAAD/fRODEdVJcN4V1Zjy6Yuq5QcRT9Hxw0QlYvECyArqYUIfBby9U8+SZn+H
sy0i7cLEFDRfdltHhRVL4lJeydduLDN3qk0ISlQpKL3fPUE45Bj26UB1NZl4RyvX1zaOI5qzjJ2y
3PcCP6AhZhOsn6psA7BqJ8Dr8K3Cka0KUZkxBrZojJNUIN2fM7OXWsQkGHxhCnPWanOvIMuafGs7
9Wm3OU6dO5lXxy7xRU1T6hrXKASN8qlSBfTRqvP1ZERDFM7ifal6oRhj+8b/NC4fXcvDF8j025R1
ADJFhnvLXkRNVQXj7NhnHHhrNZ1++plPLtgi5aYi+8bWUp8GK0xdI3LAJ96H/a7M9gYbBOnlDDP9
PEGrpb6GosEjwWjeKjVerCds98V3SCv9bloNDdi7qmg9bflfCq7/wLanOW0Ak4FLZrzWlJyWSlT1
+afLTI1uFwv/DQ65/F7HWtFvKRTj5N7brnNXB4PNPPTQDIkLp8EpeyS7+I6rqtl/hvQMIBDMLC4h
b8+SOoZ9B1Uj8dgsvNy0O0XzWxFbOVnwPBOAOdIDDC9ft5RD9YFKBIQy3oDroIKbo7efftVlqaex
jLe3A0uIF6tcGgj2n2cqzpxAC6F2WEfokEcsiHCyEIlZMV7J94uLBUWcLTsiVH7AJI30LporvGRF
UJhuflaR1bkTHkiK6ZBDvaCG/497GHchGYrRAg/TF7SzdUaU1DRoMeKJizAoFE/6Gsg84B4K50nX
hjBYLHSB8dV/NTNUw1okGfzrwMb4oY/3E77vzLDLSYtEMNVNE/cCQ9AdHMTnD6giPKcJmgeeZBUU
bjkXEnft3mg5iDf7FwL+DlSZ+IV6/r7GWqFbgTgOe7OSg1WqUaY7B3jWriTaJiHgg31z6fBCrpzu
Tgv+SqX6y5Lzz9nmGxwDMRg/DJwHPhl99Bf1dciHLL17F/dkumyXUif+e34RqUIl00TrnplFfQfB
tpI5JtF030TlovlpxFLU12djFq6qCRkSoSOqxz+ElDpVGSVEiL9/wlhv0TiLXr8PPS9nxw+8Skv4
6tJta9e0Kb0C17UH0+ARCW8cHswRPgUfPxk0Jlh668ruKxFyZbc2fMhZzZm62FzvfCN0/DAiDxge
E1vgVEvCYHBhtzjHlujHe9Zcl8q/lT6556W3LFgV48zIoxZZOKI3LVLxzFFMSQkb2RfIch5SSj34
4fyIhzZPOE7LDwvbK55L5+++899lGCXSlyiCh+mfs62mb+OQ/+eIVLummf1iRzAcWJnVGIXpLRG7
a3i//HsxgW0U8Obv+kNbI6pCYA9+F8Wx68hdYsbbq1+x/CiL4C0CAtpn1eoUf1ELfZWdgT0wzH8q
KxlrD6LOfdfUdBsvUdsZ/pnsUWvfpo9a2d9lIVTrMTA+3vUC3Wb+OxXE1r7AF8tKMPZS56RVYN7a
PkOpXyCCWCSJrr1XbAFInbMqI+fY+c9TN7J2Mjo7ACaaLCpVNAzaAPVKFzF72FjtgjiD/dtrvBVn
Ckhe0f4Fu3YId/jrftaQ7TMv45KiyGc/JYmT0+1ZaKysY5D/Vscs1cweMkAK+VnYcZriIcXvJ6wL
92PwfsbZ5FAj1aO1gCeEKZS9nA/ER0upjKXNRZu9GROL2lKBIcaYUFpyuloNtrDjmRk4kCWojv8e
isYSpGVM+LpCHMNrKtjA0g3zszGRpY9WHn+klBouuMIXade8XRS76otBAZbe21Cl5gI74SXW93/v
jprzgb6+Bkl3ZPtneRTsncQ362CEOnD5EeJYvUyBpTZL32ZFgN09dnzn5wVLEHYwYLlUWJBG6UMw
oLGm//X9FCnuGLC2+3plXra6fy2vrbL+KPgYxK6VnFJLDBF5wlINym1PYROBXMVwAcNYrVkBeNDz
cn9EbEdzsVjW/IgQQbzECZYP6hf9e96yR3DfqT1t9wms0jVl993HC/fk7dPqvLX7kg3lJE+I+0LP
Z1sRNwchHg4XWUQUZEub27vwr6+OB97xLkb+3q/2ALUseUxUP9+z4X0Y3qfgt9IQlxql2AS/FuHR
FXt88TAnV9cmyCK91jWt0yNat9bByoy1LyrqN3p3wBMrJ/DMbE4DBQ4YCym3VUfmUnKcqPTYTwuV
aNSS7bZ7hzbqgc1zyyirCYKUN947Nq1DJT3TD5IBiTj2ro8HRu306hjPlgc7AT6SElLjgVnuwDqP
GWarP9k6gYHqvHA15HSnqHboipf4VGNdSthXMjG1WsilgO1N6whI/LQ4E9rCpsKOdOhN6MegblIf
6XfiuVHEtPQV5ecC1zOUKoYJr5T5m39Gv39mVHJntc+pNgVQ/dJVyzwWGjbXynJ4HdmqtlPHq86R
8i98jJXmhGiMntjHwWvRr5SCfGZDDqXOLBzwqpI+ena0s3vK3UNaYo+T61OpOCzdrXUwRGQoMLJM
3NRmJxONYrm1qFYwJlGkibGW3c31Py/DROP2KsxP6pJTAsrr1XNyQ3SLj09b9AAIpCpqHHpCb+3p
QvbBtwjkgWPPXr6VdnVhYul99xqE94Lp85V+dbdxWPmAe5amXVP1sDIVC3P30Kp0eQbnVxviEmOv
pfLg99zyyuT45WV1hQ8FAsL1HXewZf0v560llIhFJNP7gHTHKX2E3Vp8zG2B9RYrfZGEJ39rD+7i
mL8K0g2gzuomlFyO1J1D6iTZyb/gYUkcOjVRpH3xFNZmvQ+eOeibIkkD7IpCF5UkPZAbzag+s0l7
ncD6JixpKzfrR3JjloH/2o67tC29qgNpQCzlQChgBZX3YNHrZi+CEeJVLzg5xzdF9hmd7R8JDIkS
yCISEU3Z2wcE5hNLJzZjEKHcTBmv7eBHZ24AaBesNwiNPnqjqR3lkntjg7dq/Xdo27QYX1+HAzSf
4N+Y977OTQ5Z1fYcvj9Ds+wFXAxu8JZ3NZEWG6jAm0fEvloF25EwzzhnPeJmxd63vClzuYaYAW4K
Mp+vEI1yQVnqcMOoyyFIQAnfuo220UA4w19LgMdHxSrosMEQjrXyL+zzBpwsF43aGu4CYK/W7VAE
ZKjknvrsmbSAPKGPXbxlzKsgaIDL0OoDgPFGWZXgYAfgzJYm0JH9BS7iJNWIsrovEmzQhCoQKdsJ
sK0oXWiH61ePrGdUQi4i3mxqsIKQcw9EnpT8Z0dMYbhO5gdN5kfxHCnMQkEN0+Q4Y0ZNXAIA+erM
aCFC3klU/+emswsURJB/yPecpHbxwSUH2Xd1SmopB1shH7g6i30hVjZr7pEkm6REvXrkovxeRghE
FAS/c/RpY98IG3ADnWtl65p+1yHvDj4EQTZD1W0SC4n6ZMCXd+NcyvSOBoN40jkSubUctsMloujT
Brk4ozGWgCnAFzIm/v0p1NHjCyMInZ1X2JnK6xXusV+eYHxed0wYOY4P6p/GWDNfHN5H+oGbRH2L
NHbk3YqV7eLDcM0zjs6eBt2paALrMaNqb4mJkRneZUdLQKAN7C+OlVTG/3LQ8UtfXo1kD4b1c+gK
sBOgzpF0FV2csDi8gtzWNod0IfBz7S/jfc1+plh3UI6m2XG/DLKC+h5yCIz3AtqsP1m2OQTORYM+
ixblG+577sNcK9oIfoMikoU+LQcMLyoaDQotaXozMJq19v8ZoBMc48XUdYCqAMUL/J8BDlnlzqMW
tjRTySpJjRCEr8hNGTM9lffZ4bvOkhNtC0E1mqb3DO1PQHzJG+vjFx7XjWzohvcr1Azh/urA8ib8
IPjUVqIDWaZkk7MJI+8Rocy5Fqv1MIYfVVs4ut1guHCM1SUbPuDXck7DhEsA1Xhos07+lHrLU8eG
/K/TY9BE1Ituu+RI9gR1eRsQw43nCzO70T/cbmhH9asoY0if+3h/67JNH+G1RMr+urTU8TQBfEkc
kBHLxqCExE8VdfMuXVhbK9IseSPKNM1HsvdSAJ1OfZytsr67OXtIWLZtC9DPsNZaiZXMjC0kc97W
AjrQ+VNLw+WGOL/I14+E/P3z4TWfpZxE0pGSIAraEMuSOdB26EFi6D7el4FiBvIMoa6G7wE7pk+X
CTTWawov1kvxlGmtoXW/M5p7Ko3L09XUo6wGsakhnvY7dwBqerjNnBahbLDjjYW9u9Z4fZO4rPLq
sSCPAGfp5mZMKbk6P/CaM2dXHqFr3zNMogusn4P9WGeDCXFhALRkYxQwjmqewKPdRrc77mkM0I7K
D6tUAfavrKUrfEq2f3y14FetVSsKcFHpYnAPFXGAHHrFkBMl1hPRdBhMVCBrjjY4WxjoI5GbZDxQ
GP4LgHrgeehAMkbUQBB3T1GBvudS94wRAtWSGNwoFOQE14oYIs0pOfefIACWchEz5e8sAnQS3Hu+
FYDapvdspq3mHEDzLoY5Aie00jvM0j27iRUlL/5vV9isAEJQjOqES6Pg/iVLXRlfUH0Gop+Z/2pw
w6lFrWCCFG3dlaYwDR4HBUYUyMV53QToXCas+Pe7VS+2NxeYtlhS+yGLep/EIfrQK2gq3u3Ql4oT
K+XdRPfkUA+CuqDg8SXs8AJ0qxM/fBkmEyjcE1vekmsGyKiS4458L+MDc7e2c0BX12JhXVhRwlpw
4FBIYBE7Rzbi8Rt6UsqK7hjSFUyvDyPV1/hURBSPsbMJxnRAm8y9AhOPNmcmBuxgk5O3tO2ggD4z
FOXQMC/Rpp1YleEBJ1842/3bkAPCLdbdUNmllsYjCz3T36JzR7mZekSPqOhCNShMVZvayvGTsR41
WP9Je6qVb0RGPr2n8JPP3JJAGEEBvZoKqoytkfzaxBp/TnjBq7yrxfQucwuJgaaZ2HFyjytKyf5j
dia8MF3FRd1opumgVIV6OqUCnP9C8GekRCN2bGqfgUN+zttGvXSB82rb3aEeqAGQ477+2hB8IIvC
eHK13SFi2z8iPKAnEKoKzKVPeMNTtjykajZQ9qPaB6cspK7mtXeAW/MqHZeoPJAA5JUJ4BR7Ik/I
WtUnsRgspfnlCNleiiqkd5yq8HJb0u443yVrU35BXNDwecKEgaBbofXRAaG1J0MZN+qQqF+2T6OK
3apfnWNghPoghCNP/6Z3qK7a1KT4pSTtcWzRxw4p2UtW00Myh6iwJkWZnfmo2OAQ2DyxOpQXo5Su
NmhqK5+ibhSBbuWekzfk83Mc8FzqC+N5tk2GEAq72I5E6tDSKzcKOqmVoQ4SAr7wEfksObeG8Pui
6CH06IILYlv3d0bIPNDmnbnnScNCVqxSZZxlOqEdGPApREGx++TjmJaE1ta+1JsvHTnLyHdHAYDy
800+rr7jtrdBp2aNySb78FGurPpfyQwqWx8vd+Uv5IgOPH1EUs/MJhOO7m5OREdFSO9JrRS61HQB
DdwJUryQD7ZwWIjN++VJ3xJZ98R46LMy6Vjlflt2EX7nNwN9fkqZUHJhHmR9V8X0l5Otdg426gQw
NQ5ZCRkA0m+sbm3phuvCssf/K9nksD5XQWCP2gBc0XwbMHmTJXWQKDhhMryJ2vxQz/cEiiHMr1oE
QUCTFZvxukwlO+pngPSsck398KI/WMDmEP2H00m6CRlnHJRK7uFpzUKKKnGvv4dYnTtydCyID5jV
uBM+oy59tT2DRADYLldMAZ85IxhSiVLA2Fh4YxvBNdtjKc4cjvv46dnt6rYFQn93rxAPzFmqwRXq
+2IWUw4X9mCxfB8auNwnL/KViUtq9u93OZNBfJAkngf6YBzYgb97lx7YtyqRz1QVyP26zJij7czb
GuX3pmPRGl3CSw0E3V6lZMNZtQB1i2ERRmF63u3TRMvmdAlwEzgQ3HI/LfgWmXjdknPvcwJLQaAS
/YSFDOzj9d4D8OXctvkLBO9PqtW1H1XOjMPAB18sbHZFCM+Au4bD5Pbt6sPUUR3BqxEwBtemrBuQ
9tS+HdWuOBtqPyQu++0xtX3r8+/EXhfpf7wiVqpQLHbvcQMW8vfNtMONKXAIsQHCo6VmkvWlgiCX
OoetEH6ZKuHxRJU5yTQ76bIH31yA+f61It+co1ilC7+Hr7BCSvtw1C3kmq1jJyMJS1UoZK1JfRpP
Ds5PraoB5sDMTIi+IQxAcr56u++8qLOOLtoG1j9dKLOOx9oLwXfnghRJaC7AqNMEBrwSZjVQmckw
oJIiaXD75P5R0Zc9tee2Tvu46apUlzytOt0+h4F2dQ8Nmx2NxujY/y+b+KkaLMwrHEtogX2AqFHL
qPksF1RnsYQIVVDRbJz8cfgKOumItD0Y23T6wVeio/eTX/ZL8SnPmQ/o4SmPgQteLBFoH1tZP1fX
qGyp1Syfg4Nj7wHn1E+atFJYfOXbo4vBsLT5bn5EnzWoFudj4hCMTinlyK9b3CSzRBi67Wv51xdz
nA4r0zF3Ia3oHs3LoMp2Im+gQogbysHaBaJDvJS3e197+I/w4Wl2ntMlFoQOZ6n1ksMSIjXWoezn
QGX/HgX9zY+On8+ZdyMw4uvHlfi5wEDWhWsSJipsN5fR5im3al3xCrWbPLthxNVRt7AFG354aLoX
tMQtbbv9uvh5TG6TpquLeDSy/s9LoP0Hd4luKc5pgYvzcGiIP9woqZ1UyfKYm9/8EpeR3ofxr+do
BIzobJHwRbi8jjeDNNOOYuCibWPQ1dBW4OpSkltzwAg9+X1mnJYwl15Vw0qWBODdGVUZHX/OwUT5
J7FXdSnjObF1dV1xOJFDal3JG3ZtoDdFh+k63CUph9tGTr1zwhCjEusnsN3t9yzsUJalseyuuYvq
2ECzq1f3BMGdiGoIh9yP4JQ2zg5P3IdXYsOLpnZyCKIrDFHMcS28GCd2DlRAdT/+B17foY9YblYJ
LyANsrNO9LG6tljotcAFJtUVDevH0b7muXG2XD4d45CjXqz0RLo4lOe0yTAy0Ia6S/SFhjovDBGZ
1bc8uS3sT8c3glQAH+r0F788HafSlhhS5CHEUaWtHrehJ5jx9+qthfjnBkOuqm1DJkjV4ElCyU8+
TeW/hT7I+xP8NEJHmYQLOKvB0I5VKSWd9CjR61XvWhl4jTeHirnDe8iUBsTDkGvqHKXqSKzi5w6L
vsgJLLrliYlqB4jKLG9OClLo/aptzQX4TDllVJrm++wIEWDK3HEzoTC9c4qiyIUy2j8jknoh0d54
bJYfxWXEGm4hXmqpi/IYQgDSjoYYHGxa1uJQsiMGv7sNjP0iv2d5FFuJ/dTdhW9UAs8DJL0Q03rG
mh03rqljXP3EomLC5AjLGbqF16LWewBnbik26oAG/JABjTVsXfUHWXUkDpGa/hp+uooZOZK+SNQw
mlXyx9Sjy1gjK4E/i4CYYnyK8vjVwoQ00aXokBdiHV3GiVO4t9Ke/G3OdhTMpahgMg032/05Hbrd
y9yGPT+m2w0hFil4jNQv52TkMhZuW9godvUmEB6+Cbtm32T6RQvbQElm0qRDrYffqzFVyPcWntxA
yHmmfIH/DMG0lSAEUlW3YkUZNTJh8hBdcw1YFSB2U0bU6K8KBii9QthQDsWDNkKsMZ7Il4PG5LJG
uB4QCYyFLZsjMoJnvfBZciZXhrpDHfgSj42Uf5mv3Cu11kHzBVWekmvNhuraSONNiihu67Y4+n/E
l586ZPu/98H+er7BrlUWfFpD6oNyqu8+28VMlmLFTzH0NZd4Z2qml7aT+g8ALp5vz0ZV/rxC8iI2
s01bh4umjQuAaqy8mNYn5L+G3LOIuLyglSZLEt3+A927W+T3NrOJv6kQmNKCVJiJXnbtWPB6SW3w
dC4ms9G9eBjaKEyYGfuQH+mra/zQlElRB6UddybalpPpRNrY+BnVz2N5f6RTXxw4r2CwRRKBwYfR
gie3Q+kQaKrbfwLF//IAtoH3fSqK0j7vFf1KXr75eHHAcU/Kw9XrzYqt6wC06ixwFUIeTs9bqIvS
ugB123bwi+j9Gn6hvxa4UI4uoUaZeOvAxylnpB+B2lGbNlW0VpYgqzpsTJvZdehMV3RoILzInIZF
Li8pmw6EianqKqF9iq/mXeFcBm/FZWIN0U0ZgP8uxmfGJwZBAjoRizw3umdaPUvI8ThXIReXZuY9
GZuwrLPX4gjjHHuEYektO7FKrP4DOF0kA3pYdumWB+PfBIMpmAWnwyKesw/lc7YURV1OphXtulFV
hB1Yi/69OFX7AQ1SLR6JhcyzamzSUnIJbD43m85Kx/GI0eWHAwhEuaXJT+hOQ2+eMjTJ4Omxk5wj
ENtYsClRQ0MhKrA1SF3ob5uSx/HpI38S9fYKVA39f18zRebHqgt9uc4c8vK41D9dv5//uZL6fqyK
zcThWcHEjMpi/AMKTbX7IVyhUMCYQnRak44jPyxWK4Re+XlRcSEMRowYMPKoWL3avV5F2wKhEeLs
BzRK+6gQKkZoYsW0xT/+gvHjn4W+ArxAQC07uF4rSbcsk7a3oLEDGLwLJmyA2ztOiMtt1qgBHN3b
2osdCW+VcqNQnb33NHxIVFi1vwveeJxA4L7vTMwWjecwA/UB+5oPBtMQ9+YGMMOmWLDtzQWu2upW
QuNK9qF1dLuRuc6IM8FfWR9yp+DZV4f6TdR9RcBpEoCtg3CYstTz1cyynMCwMSfiEPAC81iuDdUM
XftxJgAVrw38X5M6zxvpRtI1PttQj4i/QU3CJvfgFMVgN95DKpRMTw1yVrf5j/gLPdTo4BpVb1kl
jj9wE72c8ps8iyfJP6PjwcFIOu8V+3epBCeoWZSA3moEJwDXP4qtRxqFiyAvIrsjOOfj88amS8Un
IBo6zBUAyjKL61uXiNn0b+CnFeG9p7iq259cp29isXZleSvcGKcCbYMeJ2A+FX424mGgd44Ur+GJ
wYc+9E/583GBiCWV8a8pABIeph6WwCga2oP+xd43srXE3FAkGZ9hzg1l87wi/ZssxLpAKHe3FGd4
ySSrGNL1pD2ZG9SMMaVyoU9CWXZL+nU37cPipQKJMtSNSE1pKaKByvCCtNCxLGRLcynDGrHR7MDI
gJjCVn3ejMcSHvrslJGIZMJ6Jkr3TgVz2imR5rcBXsiCz0T8oYWxKDE7YjigZsZvpBuaOAAR+Gk3
BsJHJazJewtCmj+nuVAaLvKz6cNphkCfpcNz2eyKg+zpEKyT2bDlkPwUZJZJ0ay0D7Kmxofk7UYZ
eo8t3ImYyUVU3NEYapH+TZvOVsW3n6R/aXVTphQVs6LWDft0jIc/T3dcagsFmODHqMqWK0z7J1Vw
Ns9wzcYLg4X16qzo37r/kQlPM+qWwKvS5hkfNW5sVDCY4ZRzXdom0zD8KEMZx6VNRvBxzAIZLOcH
KNA29N6Ru0IVoChr/3bKciMBYrn2tTRo2YxXYqNIohpjeATT0r1Piax1TusMqhCOFsWq0PWime62
a4clMjeHhx60vjZHpkuWlaPfl8qithAVB42VtSLE6ArqzsF2/qBN8aP1HYUKf8fTcI+rYHkFcuf8
hjsmvxFzw8jZuKITAF7TV6nr3L4MXHXi7dxfPHMu42aFfSmakZ7GvjBuD6/x6iKkWigePvz9W9Tw
v1woQthN8Em7HyjcJpHQOnyHAk2z9vma/GDGU97cUuaa8Aiobpl/fWT7FTpr/HBVccs2aD2FFUhD
ZiiLNLQP+JWazWD7R5Mu90Sd0uN7049YLJlUgMujHUUkNH2cMBKTL3kc117ch897LmL9wRXT0DAV
7W1hfIyOzAjqIZ6H7pHDV6twrFIvI+t/VD/9Zxy9bqcii84H1EQEzKskQMfYofpFO4AeK51sbE2n
UOW5STWPPjrgRvduYI68toCeuEULR15MEKCuS/5GS1sV+McAmb9dkeGYbLoamyyAbCX4vHw9OrPo
Lk0P1AP4AJf3eu9Y2gd0+E7t4SX5BvaixlBv/toLURoD2QefK4SoV0urctX1JYgKNGrQ3EeqUNe6
8LUzAtkxAFwzuiFLm6VH7VjZ7SjJVPZKX9UuYpYeCe8eNqA4T7f7G6AlY8kk8GYQPf1sZuRDyCkv
wi7dUWMd5eOyx/xSG35rufHoqjLcAwYCPwrnDs61mR283ngSbCzwfsPnF8w3haPfJgp7sYFh+eRC
lM+hDV6ii4sUkNAHq0LTtvAVrIM12fP8GbP1Us550UgZWx0jamDuTqcsxpTaSkSnwOFF34zUS5DQ
5iokUEP+JoSyCJVAnZfcA0YCBrWD+ZERhdrYucWmJpixyL0SSfSoAgrwkl8wKRXUO9vnCrIUsdM0
t/ginj+0JODfndyABFnuOf/feT3vq9EoOwQN6bjCatRMBSuKDqHVoeQ58Qyh2Ys4RJGZcEH8vP1b
FulqBWMbiVwECOcOhzY9FbU0Xy6o7tUBJLCRB6IXSqJSBzu7RtiwYkbZwT7gtz99mMfp44D5/96x
waozfVPmtYuphz1bAsrB30WXo9z5gZLHb7x3MWo2vOdhyZpyUkl4L7E8RCqkffXU7seRaHQNxI+T
CWimFEmFYFfYwxnMWAR95VJTtgfDrsca+1jk8s4/zY6ly4O81+6SqW310fhANb+yWFF2M2ujuc+6
ri4hakKOjgT+lRG/324q795tgQF6flgd1uoUzKE6fBd/UrBU8fuxiwXUqWJsySvhD0KhmXYKzgVo
4Pamqpu1aHqTVOAvNOvqRbW03VWhXJBuFvBIZALtFPri7KQnsashxuYF8UczzJ6P4tmLZVjr6m4b
Z35lTIPAtjj8x6Lzx5TSv/sYb1us1rG9teteYhnZ4aVhk99AH3570PuBWViErHK9bbJC9S5AmMDl
RDXzxTLVv9Ty5dBhglMZsnEGXwIG3V+3UQ9ie1QtUQb5i3XyAG1kogJI3GIdiVgUKzqROJop2aZB
YnqFvgQo8RMg8W+W8rmHMrf5sE5rRaWfHW4c2DxiZHLpDq5hs+pCRy6uxAjrHt5lOjM3XQ2JEX2+
ZkmOtJnPxjYTZsaHmG0AK687bNma8URYVxrrhvceEYf11senzg==
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
