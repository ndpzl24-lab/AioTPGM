// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2.1 (win64) Build 6403652 Thu Mar 19 19:48:24 GMT 2026
// Date        : Wed Apr 29 14:21:15 2026
// Host        : DESKTOP-Q1F9NDB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ spram4_sim_netlist.v
// Design      : spram4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spram4,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  input regcea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire regcea;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.442147 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "1" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "spram4.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
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
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(regcea),
        .regceb(1'b1),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19344)
`pragma protect data_block
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
OrmV+gGyy1NkW7tdnubFLUqdqe0R
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
