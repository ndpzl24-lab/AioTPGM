// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2.1 (win64) Build 6403652 Thu Mar 19 19:48:24 GMT 2026
// Date        : Wed Apr 29 14:21:50 2026
// Host        : DESKTOP-Q1F9NDB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ spram5_sim_netlist.v
// Design      : spram5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spram5,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2.1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.493447 mW" *) 
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
  (* C_INIT_FILE = "spram5.mem" *) 
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
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
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
xLNHgKjS0ssQleEiY3EwJjw6kL5SwF86rWiUksVb+xy/ZWIb3n7CyePlElbfRQHM9Z+bt+G0Ctrn
pC9OQVt+J7pswRxITzsO8MyVb9eBVOZzQwDktAWLzV6ESCrQtKnXZ36lGKrIAvPbkTNVtQwOC08i
kjB/MtLOv+OF6mzMRvLR4Bbn3/5EZYzE3eWP/7jUOsMsrb0NirHESlxfz/VP3r0g9og9irqI71QJ
kMHWcERl0YSdAnn4LV0N4EzVJaPHhrW3zoh1b5qxyEoI6qGK9RRy29xicPDYjlIKx8atiwQCvzlf
BOSXuBcakom8+ymUfrDBdxxEzBF6CjAxek/g2NsQdXkf4jKUb7l50Rsf7h5I4rBwRJ3B2GcV5PiO
RUIECXcaUGgvtvJ6Omh2Tf4BNx1MOxjHEs1MKoA3VP4WkaxGTmCLPhai4fgQcEFMxtSzWiOHBJNx
Kk/EfXYEojLuDELeWvlDuCOSLTfBgCS6Szf0hlBIexskUfk2+fAmyZOgNL1fChfKz7oVBxzrTLhZ
j6V+1fTAOgKY0pjngwm/FqoblJEigLwCqN+ELNXuNbin1vp0iqceJgbsVO2vqxRaRzTkKJJlnyrd
n8X1XEjdkF2ZltQA1kJWSFHi7fLoId8sO1ucNwlIa1siRNS0g51BqK7TNhY5HIQJSE6270/D2sQl
cdMAcyA1O8WeEMSfuXfynsgKMLildITJTI+7qOiOjgY4lnzjdD4uy49fm8WMUVyrRP1d44f/2NtQ
iHFF9eSNvDW1UpIT1g7mHItf2OA0M3W1D2Srr8L7lMuxz0+46wGFFKrJvzcR21OoMh3m3aeqoI+7
8dissqgEwzBxbPiU4hxsKBL8zQvNREhEKUoetdBSaFW4XDL4mVh9RGtxoDa+JNNTP5KhJr4R2I4c
grfTafgSrR3fTbb9eBgs9rVsQIXqFNpOxUpmR4QhJrir4ek3/RbAcPYC3Ia+7rovGJiwq+ATbYk/
d2A23fN1ns43KSO+laeYsnpc4J9bgPAsMx5/F7OSeXbmNuFXErYjUQr84yReGTab7C+N2c+/187H
d0qSfpq/GuguWd5ngzX9UMQpJMpiN246wxfUY91SMEe3QXRpCXaMal02JIr6+SnXTuKecFWi3VIG
HoukYcd4BE4MmlwNwWijSX2sTRSImG4HG7qpwNS18kNUVn0fLgtS8T+L8LBLfPjzLtw4QbVH2MCg
RQukLqWgI1TVo3IxnjKy6b+swixxadwzP2UMG5a3gdRYWiIEyRgCA2yo9EMeJ57Z1GwHCIUNDy9Z
+NMYv92DKnXGFCoARufoYK4C9jNILoGzxxbG+7Bnv0B2H8SofiFMZ7TVHkVK66lGg2V3sWHrJOkD
tswIjPlLEnG7YU/ILY7A0XlKpLNwTNoG2rvaqfg0z0sMXt25K4EratDNk8vc6hrajs1cZ0gds3Q1
OG4jB7Fx2NwLFdRQuL50kFiiKhuVaZadUUNxQZnp1Y5dlqEqNL465FirrdGeVuo3frCUL6ilOCaV
O3UbiURYG1tM0XuEJKZhnsWRqfazDgyrK+nXxgMImJ4IWGHipbPYVAuZrx6HgRWAiRUspFkZzgC+
lFPeatM2JsZjrBpIWS5wq0wdxjqEq0oUIeKB8oZnKPuhv4xdYSjqn/sUwy0C1tMTzGgWi+oxNKJm
ESs8bG3SvWNidAkKz1kjm+ntL2BF26YUuo8wvC6tJHcCKc1loJxcL6+miZtZyen4LtuinNbpdAFD
kp+L47XkFYmcf/X43jvnBtJBgpKhiOB5WtQf1kZY8/JaIq5fEVnpt48RnTkySal+J8z83+qAisSB
IClu0bDKbIixceUCSOOxOWBNqbcUKdGkfP478thFZ5+5/FfkdadAQMphPvxHr3TmEn1fr0DJ7fEE
PrxL1vGMlL4eort9hTY787vr6iumsJefsaRIBoT9zNXYKsdQxxL4qxaWaX1+rKFxtFTidcV0qK81
unSopkaq+NGSARm/kbufCApVRSzZlAWhXXAiZfrxxBw0x0FuSWjWoTC1WPTAzlaVxocNOM6z41YM
HLbeMD9HuCh1/dsS6/gIU3z/XEZnLY6jxm4GALmk3odQDH35qEsOdOf7mB1kGX3hLS0YxTfJGGdF
mwKsdzKLcVe4wDO2g07FpfVp8TVwls5bbGxWmjCERW2sVWctTfxjIkolgnv5ERtN0JELAwmXE8gz
jwYhh0NCCzykqzknsnVKle28L/ALMgbWF4A2p7/+qWnJPbJOBy8PG2knwSQ7o6OB+fFtcb/XK82J
4A9eEvsZZEMbi24wcUHpwYDViqcdb3SHSQruEiU8HeXmtyLbSnf5wiQ5IBkLqRytxMmLhwSslFl0
VJGhlmQCTdagPKZjI3/LWHA3XykLv5S0a580anIGzmUcvZoTGz4VfPdFmRDlB++YUWo6xspNm6XX
mVHl0CH+9lNtdEfVv6P71GS8FSx1LoYC9XJghfr49IkUXmbtNQa3ygHXkjw8RzVG2t677o9X1eLW
nrEIeEh6L+yquYJDnFWSA8PJ7FTqXb9krakZG0XdEhqpry5X5sv/WBln6/0CWXMzgVzyBlN57nW+
DiCBIRQUfrNfD+BaytIXJoyfaZ5H4bwDOZNcRz1COW9FatCmhnJcl8zDkVy8B6JupdrFLvdadblc
qKt3SVBwLyuGKHxhpqAx96+3X/JXtGQm+8mq5KHpGE4yvWI0+Wly0MKP2zOub+GjEoJvlRnbZmte
Bbs3cvqOBEwcdNX9/ixgJIKEe7zSDxUabyNKno7Dx75Q9CuWdcABqTxoFIt0MZgW3RhbSVpKklAz
3ZGfI2OqCw/zTdJce1iX9iCDcdWrp480P4iABQNjOeVSTjzn9iyBbUy3HUu13abRW8JynF1qQmP5
8d95PL093Qb0bo+bzJ1z7QJLcsSse/SMnYxm4LIdnpyj+pkXHhLOkI1TnyWssoWyaPQnI+nSmIpT
Dh6WgPx87b2iopLLzFZXHHFUk4tq/ijxK1q5HIqGS52GgoiIwr9NAOixH+avinnZzDwzvHkDD42G
0UMF4P1b7ADyqO5avqg6dtdMmRdBNumwAFT+ZCwBFzSAeMdKcD0u1lYD1ZaJcnKSPVZgbnRMyHzF
K7v0jciG7myV1k05DhJ/vbCzQ+WLOHM3IoONZbQcN3+JeLej0iImjQFC5obdGUuMzr417x9cyRsh
iybvwuK8oLofMIN8ZFlOqeT7dwAU8yZT9IuDUGvUX0V3zAoPWZ7tONZilmIZPha1CwHUVx0ZoFPs
Fbxk7jiZhavwm0+9P5uY1/p174ddRrP8e/Z23hrwjA/T3+pCB5TYWegukm++Wj4OF9obIwCHHxYf
NBoTOrXRGNP458XkgFX+64SxL/71TjF4CoaKxRpTAb07b+BSc3x5q4aDgkTfb/bxNF692PwSNy6R
oBH2UGF+51H8hCuwkb6BCK4MVv93NAy1XYHODiQ3zJ85erRfNTcJZpBcY9Ny8iuTf3BWQyiRntjK
D4Xg4m4VB+9bzQVP0igVcpKXt8X+VaTjg9DVFCATm5gJsLTGZD9MpLLTU8rNFPPpByhWHBxMDCMx
7glIlYkMyLyoHXgIFL8Aw/HBOfm4yb0cumPNitiheQzQldFYvkrjQFaY6qV/Hx/u2vSWXO3T2kqg
A54+csTwDRYbOvbUSMT/q7aZyrRmam/6knRQGGxqlAb8D8rg1XMDc0p5QDeGKGbs4IDM+7Lgsgia
u0dLVa0mTVcfIgzPgMC17rNLU6CCxYeIOkeASKqhHEigo16wM8/FJqi9ZGPraluD8+ezqa5xhpWd
N9/UJSkIWzHEOA2p4O/t+01X2nQxuLlvM1YoiPwQ8131s/Hc0K7mXEOzE8Hv3F1dCNEKghidF6cf
UU612XzNO9E/dFyMQZSfpem7h69o8AdVtDO4DggdZ9lVQMc+pjaH6iHCKO3XCwi/sm4Z2AEnGtoG
KCby967zStslZjOaHd3KBvu/efWbl3Tfe7fxSfjWlKMZiNb17V5Xl0Vc5K1lEV3tZotZdUPpt5+8
O3loEutGHyL+k86tk0iET9iJpfpBqWzz6Cx6t3jmqCku/d8JDngzelRJMMxPo1hzE+pM7cwOZbEo
+eR/OwiHd9W9rZS+Jt13w8hL9qcmbtvjliBDw3b2SmqpnTaz9Nx6hjn7tJPwLtb9RTLYL0U6qixp
22u+Jmgb8whpxR+sgA3BW3YT8EWagR2O6BncZSpa9XXbnCTom+46gRQXZoLWwtcu2JbOguUImkrj
gYwgC44LH0Y4GsFV9T3hQHdjkWEYaMU9eMut7fVmDOnNwQSO3HXk4OiJtAG2TNoaJWQKgNnVd1kd
Gvi3tjOQh4J7Wq5+mmOsOqaiALPZyL/ECeSurnZWpJDzrjydSKW9QZZecFGwWRMJnFsogibtVx/K
UCdMatIK+/14lrn/misOgvRgqrfyKfD9qstcuAFJNbVPR4SbomBt2DRJp1vxmCjANUiprPyTBo+Z
qXFbE2hPMdecMKUGMSqaQfFpBSuJv6cq7u0Ngq0ouo/WlFzpNVyHLHJLRj/s1nSFMpEuHLSKsxlm
OIRLgenspuqhA+KJeJ9r2l66DJ77BrRI/8kOZZ8rQoywLu9bwqj2OxY8ZzsjFKAkpGiNAM4lOmNm
/K5G0enqflkx2T9+8j9guRmxxQA/Q45Pu44SC+Jdmr9ME07yu9PbnDmvShfaSGfSK/iCAy0UpbsT
o51ReHjoci5m0xABU9zFCHAsh7QpOYrDkpEh7l2A1CsqIlxZXIQaJL3iQ28wae4TpA5zJU8rbPjg
8eQW3o6EVnPW89i8l9zXp/aX3twi7jhrzk11DXMb2h33gkRTNB0Dy3iRJc847dU+7YmTI3kLGa62
5e3/Bo6jMq8iPCrQWdY1HU6Gh985t3DG1R3iQILGf5MtYO+2xArT+G2thbhABgqIvjz0JrDXXQvr
zFz5YsoNBm73isMAGrk9ABNCIXNJmA6Q6B/KUbsWIuCb4QdjEWaCA8/p3hWtidWyDhwUnSbax5kH
wd0ABjtaw3Gp9xy5hlEi4mzvPJAHneo1SgzyV5clTXbCLKx7I6CychKIlCLwMDsVaS5XSu6Y6CLH
mFzuQhoJnHalwNHG9A29LB7nc7R3eP2ME6MQtxroCyk7bFjKXvASXqV6cgHL7dU2YLkJLFsb8ymG
GCiVXjN4Xu9Xj6sRXjOWAAgv7b2D9Reh9rqy+4p6Qlz6axVP7WCTLqX5LNikr0DuwibeFJAznsxK
a9ovUEHOLFPSXl0sI2gJBUwsSgb6uH7RdygKTqcioOXvra7yqqAofh1bADHQNFgy8Gq8s03ELDvz
R+rE38amz+NPkLp9fMTgpXxc9G5WtT0r6925NdA414bq+vlWjtoPr787AeF5zLi5cCkrYHxWCh4P
FkPYvXGPNoG8pq5u6Pt3viNv4JMoWV0PF3dD3pj/yjRm6jxhuATcFb+KO8B1l8VLFDrDsD8dZkaU
ypTWbjT9QiI62gnpSMTUpfhMGYWmJaIiig9gECwS8DilZix1CEt0/sQ1n2z6QnnoUB3a1Ez2MYqI
BftzgEdsuYXw/NFrKKxW0NhmVvvpG9MDSzqBthLSo784Vl6UqdImHNP0pNUsepJ68sy6RaXQhcmx
tP3u0n/9oeZLj4Iqr+R+9P8AD/C6KbakVYBQBeIhqM0YW0g5EbHOYCVyKQD6zD9MeJ3j1Q/4N7hW
ndvwBJcm+89CJIAhJMQ065oBBvwYvUrIafSo8BmjNu8fP5kSE8Sk7J4zQGwHErpzk0vzRHdNddxj
V0IXUs17drPsUqspq0/sMg6bEL4Cda0wKKwVj/SPkn/AIf3oXRUrST8SsAtnbQupRLbN466bj+3R
GMR0siMNfQt4x7uNQl37gpkVVhqbz2HOYnGS4d3c7Fken7kwca71hlGfO1vSuStYS3rSrnLCZ7Sc
ffT6N3K7fZS+6deqouKqfGnUIFDDXi1ya8gl8I2qKDlt3w1MsFcy6WFFYy6gYGRUKDJps3psHjNZ
1ZWkLa+BbiOgf8RdhqZn/kgESnzEARXEcZLAUlOeP7ruBEOh+j62oyFPjQf7aV/x8qpOanhFisuT
JLn9Or9PwxhF8Eyrcd48PFd9g5kPJmvi9girobWXG3nvKTer6NF0+FnGuM356CwNXDo9QN0fZ626
CpYv3zdwZUyUy2CcsmJ+IWrk1acP4jFgw3MBcmi7G8TwgWRBQzVKrWpL7DJBf8c+xXHQbtAIBWvh
DwyffizbJRanCduvrjVMB45P1APj2Jo56owEbOu+0p+yi+rX6mNGVVLk2pUIYhWwBtJfr4Qi8q5Z
qAQESfhF7IwW6BWi3Zml7MVuBvfRm53hlocvSpk5ByxjKrc5rKMHpCID/L/JJoiPPoHWRFArqC/S
7CBHu01pnbpE9QMYvKL12sI9C+MzEG4nFlfFKODmMJdrLTR4xl8fJKFNDM0nCGiXKeWnlYNKW/nQ
OM2UwipA1O5f8ZSs9cUImSvQlwNX3QD5So1wIASZpyyBPoOt2tnHb55aJ0lzN6/ISALtmsoCjKWZ
iTM51xNwlnT6d2VH6XCRd85j6cM+JzSWZPSWWumtOLt1gOK57/gWuB0lR3vRJ4b64pCofkN47/v5
qmXJjNi1/JVi6RtuL2u/Ititi5NyLmnIVd6QIiJ+q3Z8D7pI8pCJkBP1XsLdrLLQYi4arDptvTvb
08Cv/eeppfugS7tmjtgpD4/oQmn9MnoPbp6Yq2nC/Qa1V+WcLrkkuL7LXwVgniQppgKW6q/9dU9j
eDrEcwwsIX5PfRSK06KcGlhSPtNdITHn22G/9OkwTYIKDz4OmzHhAdwFVOTinRc0w39BnYez/4S6
M5jZhajU/AUGfT6Ni9NFMa0oToc9+qjpVLZZvrmIGSKNLYIDvD7tyIFEjLXYK4TeZD7NHitxptH8
gvPc62ezJ3Fu8YHVhTGTk+5UOHrKHVkpBZOo7qjc2CvDVB89pCVZeaObcG15sJVltdE2X/neoT3o
392ByyiiX2Xbc1WPWRT8OcNVPDSdtNgUAb8DnTtLbXDAjGES5fv7uwV6/b9dBZiXlFBQaaQHIRJh
YpVCw6dG3W1zniwgZWDgWI9mWUfo86XNttP1veCvGSLtdSGRg68tO6C3Yjv3LlxIIy2GzCFVd18Z
rxHZe35yUame0zbWJ4ROJ94DXYFecAj4pL0eMvIUp1g8Vo2e9atzbGXVT0wh+lYGLxaQMBGmcN8k
B70LGbvZbYJ5JzJJGRn5SUuJGkDLGBV43VvZrXYzNBWP3mFOZPy07vG1P4phmQ3MEnPF4W+yt3CV
0NAj3TU1m5x+tI/nxOxgvmnS3je6BY4UIjaIIZP85WbRQAMWjcOaMIeFe5tiIb22c2sS1nbKPpKl
vmeVLhFToLd+MAiYoZhbpWICx71M8OCT/oaPad5VlsREHFUKtt0qBEu5+scO6afpCnz6fhq+Yldp
cRN7qu1R/IMBqtRT9xLQfwVP1tEcvMTOM4a94QLqxu2lhhko52QYsBhifC3L2Kj4+cWOm+wtXXwX
aZRZnP/tRO3P4upe1yIFbb9g0plwaw0II+5vyOK0RGJnBA1mDgPAUAiAYXbxMc8h7WudIQw6VR1+
oB8mDYZit7ErWWdFboYOgTBFso71fIX4PX9sRbPlrWZcKISy2E8zSXb2GGvj245EzJVVlxycw8ep
naJ1F4Iu5nHWgEpLOwt5RCXZYsxYf8067RT2uXkV/aLo/AiDiW+UQGVQd9A++F/PR84rYISFT7OJ
aWTJUViUBChiFBrxBBHqvZcW1tFclpihE7U8/S+z2BkHgQa8Qha2hCYCZM6HKF2pE91A8UwxjkNu
wXxCXAx1L5ELLAmg84LxkRf70W32kFoniSU/QgYR/uSySNycPois9puWRul1U+0iW5hqo8bryCON
wQXTQdmHnKOAH7NW7bmFLld4zvWc+/ucFTikkpnq3CEbZdm2dGiXAq1s6oRR1ZIYbLKMhOMVp5f5
7FeX6Jl0VWql3GO2NAKH/tUL/aq1DqsgWXTGsju31m471mSBKwxRqgQWR8wza5CCG1m1yzE7y5eb
ML6msOtokt7a2j2s0bXhRLeUyxVoHsgxygyYMOJu8ttWvGZ4pmDv1COOCClrtzdz0qrBB3auQ/yF
d/EzrGt9Iw7tKXsclzLFtg0+c8pj9ebDmWlGwqkCja3OJOA40rTCVYzadIv91wqEZ9aAY7ZhGnF6
FVpFDVDArGeoxNVxcqkTFOPiti5GTnHF8cnR8n3wwbbXe6DPB1zzQ3FFIl9tytJub1E/Ll/V21Wr
TF5QMjBTap/iSenz2aRkPLnUFFhpiW7Iw4c8YJWCQBJUfw6dCa/Lukv1Tj/FSntHDWiY0+h4CF7h
ziiPfiUp5amMmVoDZWmQILds0RluuyruPeghvXMfaLIc725fDIMAiIWO/ZOQV0mwmfuo1dHJ+ty7
HGt3hHmFtVo3WmDv4HO5i/ff04UlQVZQy1A6desw44ACHElkwVlfqPbXFCiLm/0FHt38SAMJfjM9
Xbe11a7uooiG8V3aPUcuMgrdX9GXH1VDrSU2EGNVVDVoPs4IWz36LmWqlsbaReNsfZK1JSn8K6bS
MPV0lN1kdRa4Dbd06aTYT3WpydiLTF0vyc3DNNJIWeWwj4xZ4wY3yXXiRoNKQSfWTxjdIK16sFqx
ZPjv8B9mzsEmBo6PYH/7MvjwrYX40GTLZm+ffge7BcYz0p9W2iryLaqJoZGitWMK7U5IZ/p1JGZW
BJ/p48qYQ04by5zwKk0FwUSmBxm042BWyJuXTttjx+70wZFKoTZHV2TZaNfzkF2NNKF/fJYCxgf9
fQkvzwCvpjSIgvmA3Vndyof9msKZ/S+1T9D8C9VdMhkHEdbD7Tl6dQd7Cfw9eLQug9wUwtOs+DSR
82Q8h7R5VH6qNb/5hDur2BHpRVWvYoQdGdSQwNHGUJRPPnfpnDubsuWmPLWpk3f9MxT8DNKKwDfc
YSR+ssRSakTahSgSZvjxC1S42jZH3mPW8ex+0T8bCXcBnB19tTMvYwuxUCVYQ1DVnSigJubzmMXA
8fQn5yHO6osOuYNE6WH9ja09TvTkTOMoqHlYZh5usWydNqPeNJDVeXWF4MABj3EtqkejIj0qvsQU
Fw3KcwlOIAu+vA5Y/ezU9SRvKKySAX7pZn4QttaPrzmUkiSAuc2vcARVY6kcEfpc1nPiB2e6dSgS
7qEsJbQqDsiq+tEuCTw7X8cfz9j1wVIwEGqF+gfq26oEvd2iNzboZlPTtpP0ur7YS/gZaNgsvTZh
katzLkiJjypmvO9b/gBKI0dsPvlKOJ9Jd9dqzC3gdE8+tycwYdcUvje4e1xVS7NizHKZWcnhCWpd
Nk7QpnOvshdbx4QZK5ZZgFrZjt53BdBWi0Nk4AkKzctfPL3vuJCAsRdVP6UilxkUTGPqn6FifQ82
nhniJzG71LIcFa6ndtGiyJKTTCt7rH7GrPja8rQ04CC3ImXw0d6TGSzzdA+B8oeTk06f6QLoP3lP
7GJEZgW4oi6ADKlHP9dt9zrOUB9Y8lSp+64nbyE9IWsAW4mB8k72tAEUFq/3PszJpdit9nLf1yBS
+l7GbtKGQWrOeAsmRENk40fY8W0+RMANbuJglaytgrtZJoR53Q9q1rXW0eiXaF3uN4ydTDrAx+LM
Xn/q/yAJsm6HjCQO+xJvDvuvHpCD04aZP2LlhcX+zvyhsZAPmdOHtxpeBtyuvfu9Wunt/5RFCejj
rk4o63B5/iwMSbPvbolVWthAE5cZL/jdCZjpeAFjqkIlYlg7jPZSdUQGrQk7dDy8oq7icjMZwtNW
QzdHPtkt51Z0Ujccrmgts6UKhCpYCKXYieZhq6rDP7oDmFkK7eKoZUN/Gu9Rfzi8srAZCxRzWv+T
t2WQlPDMUFCOIk4deIHCDOGiQK+9A9tBanqP14Y2LG0+kskRF5GY7A6QFaKRrERzu7fAz39SdSoT
KP0+7u3IO2pwe7ln1D4PHF4gyvwzSjX0I2Ed+YvseJ7tsYOlXQE4nJuhxmi8YWSj1YhDGK07W3iz
yV2T9afECFSTAjNKG/vzGooX3ElRVczNqoJ+1UcJ+PRdJkWf1rT1SI7HGAHg0e1il+5pSFyHYIQ9
vhJ2LBx67O9xwoXV7TMjZm9Wquub7VQGw+pg/9imHUAMvfKff3QiU8pwlwvFS0O9T4TIGvcXB77B
XXjEATDjltoJfAtydlc8WxvO3tSuJzJLl2btHxUCrnuVJSkkB5MdoVMerQejN6A+fuRUfVKDIIbn
EznRWvHIeZQMKzEQF4QQ/InkKWsimr6+2lEhHeEhdxnzIZYGrBmXxny4O5Vo5Z+Bs82OeDc6leKs
j45giE1YZPRjBgaYceICLahrERW6Mk5liN73JIlsUsKHvdUZpE8Vy9dyi45dmp9zyH8HI+5jZlM/
u+bMKlp06os2rP/4FqKtjKtgTeHOnUVWzejYeSMg5DzVG4IpZBtjFpPQtROg0PmG7XKdNxHI3Dsm
uRQB6DXgJGeI4PhpWzavU5moSjst3jNjrODR7Cbj9X50Nv6dtt6e0tR1QojJCG90kaVAIBlsH8G7
MyJn9GQXyBHCJBZw2UU9VcgePFOd7Oc2NvjBkJrJyzFoy1Yy7jxy1+dPpj6kl2wbcGrp5Y2XM5YR
g5kldRJN77IJLfn/q7xUNmhUvmGIrZKOkz41twz7hAfSI1pNNsGG7R0IjzsqTByAudRYpe1zISTx
wi83P0DXJ68y3mHmkgiWQ+2CUG38jOP3/EpnudcbGeC89qhuA5OJ38D+tvjIIsRqzlZ5TqelMsKb
hXHYgLu5ZURZzupiFLyPkXUFaA7Ab0UGqsBQfCLTtrUlnjVd/tT+oskE0JaOCcJQqbzzq9SsGOUu
BcEpOVBbHio6+Z1eWos1SobX3KQ8smyUFYW7WMizlrnTHJK1XWUwzPmMdVKdfovPdqUlILUUuElz
mvH1Mmuq3Xs69Qf7D8qnsK6QuL9b1EXmBJwBoZ2Nf2hS2Hd9wr/EeSiMz3xQ7qBXXwqBOlUJARen
6uIQ5gVGvl5sFwlUVlQPvQcMvItXC6LGqBxn/uf3FLtv+BhgT/+cRJAoxhjYKq2XLEAWEAv+jyV7
su/hJZ6I3bPgpU1yJJKXIFIkHyeud2o3ugQyphU5sZmhYw4MuFs0BebV+w0h9nXnYVkyxghykEEi
AmY2hSWQUbgZjTThElfTiBwqWOE0QHYjTxRyS/kiTOC0/AMS2r0pQEj1Mq72AsE8obzufioDQGw1
jQtm0Lp8ZSNp7m+YheSlN/3hsPPock4uOzoeUNzaQ6hqJyiWt0ye5TM8Yc4InbqwQhnuQYb4FGSo
eIWn7tgzWdAOrwJgfzk8hhpa0Hc059H8P+OzYVyLLVHpiK3HI81/L7nEQGAAyQ9122BRE+LnYWb2
pSxHS4lhB32ZrevRnTroS/Km+0BYHAGLAwUy2pi2dEQ93Spa3uArubXKrF0zS3YCWezLH4JKQx6P
N7gp+5CUwmtMR7AAtm90nV8XVeQu1Tfmz2Y5DvgPRrxhYUfllwRq9Vglx83ID7VGpyOtpwfEMmvZ
G37rPmmiw9imJn1fV6SgaIBgL9u5wKgUCJvKGXRorqKpnTaoK8fAuGhHsXfy7pHcxdQFsxA1Ulen
Z0tZv8l3F8DI8ow6Gc0GcJH2K5gxsNLIJLSvabIpm4Y+eDhSuAeRMjxjOhXvv4dABOQ6Rh1Eb+Wc
dsLqbyRZoCxjj63Fq2eUKafS/wA9KOL5AG29Al2hyCOnt1uvUisbEOEB2IKjfsz8wjV4KvA4aLrL
/OcW79peI7bPFQH09edMki64zQrZTgGJDuf7YL0si3w9h5YtbTM2oKdqACO+LQdSk/ZfToDvqc2p
hIbZtrSXgEfiSkTF1GRZ0DKVEybZ8dh8hQJ7iB7RnCoY2Lf5vUhij3vafdhNXDbzlRNQ/ahCnIf7
SrsH3F/+OD1XfutP8+WVJ5bkH37npjw4FUM+tl7Y1Gi2ppzOERhNjJBLn9Xy1IaebO9djr4Mv8V7
ceNMIe6Rc3bbuKj7uuDPCgwtxbwevqhxVGNSdQIZowa5RXCuaDWJMiVAkbH4lNHsQHzXEsHdNFJ5
GGVc9+XD7LbSc3qZVWMEXj15yeoFYjHPuOg+pVdk5jYC7QAc12Mro8zI6pgkMznK+wCDZDPEtHOP
tCG2fYHw6na+xMdTmFjsZpQCP9hmFWzcl9oAxxM7/QUTApGyjE7Wemj+X+p6NgEznSsLanC39dMH
w6ATlz8mU9L2bUvDThzT1rAo/cQaf/hLWYqB+NY/MSg9e/J3dO4oPNmEy+9SnO3eFZXQWXPsF3cS
YYWZHgJc8w82lq1vjfGp5iq3RBSvScwuZSxAomYk+YWBwcLUOnczIiPJEXnwVcjr7nSRaaNFVkbm
gill//UHYkAUUSVNCE1Z0G1+VioE2AhFuSxBBvUlG/uUnIfa9Xq38O20z4xcf2idTnNnx8CB9txc
cHJnDFO5I6GW9HFCI/sJdL0xxPuy38hNS7kdow04STQ4Zd7npxyZ/n6d8KUc5SY76YtUnyp1YFLC
8sMWJVDdRgCevxPybab73x1Z2jYCu4d81RbeUG2tFLB1i9DVjSHlkb1R78E4Rna3YqryRBY6w7/u
1LFzPHgoikW22m6Zgx4RgL39IzcZXIc6tNeLeguvjCD9CbO97MA5FDwgHrzwl4jVibuCm0ylKq/n
C6YSTxH5f7Why7ruT0sJiwE9JjwPNABMYbi4proP/bCbKW6Nx+Sf5DtFsr1DJ7tUWOo/Zprn1W56
iYsNsFHTh8nAPOafxbwSV4AAAYFDhf7b2fM+G9Y/ZRnXT4C759kwZNBo+OfiOvn8tfxZ8pzO87MO
4d6nhA58TlGLYPaBsIiMqouHXoijB6HA+gzMdAm3ne1qSdZKK1fQZgKT5nsYbIiWPEx8jZJhZZNm
kdL6DTAu/Cp27v/lO5r2WEGg+l6CilboOy07qm+SiTd+x1ujNQb2SLErMVKdvlSAjpDvczO8dNna
80utGCHhYAkwaJ1PFKwehFGqfsXBwrt3Xnb7akeGymAVM2GhqAraCSlRNj2PfnJeEz7UI8z15lt7
NQ16jx8fXZu2QEr6+9oTbCxrtvDB1UGTvfwa2qHYdRui6WGaobBUXliYyZLdywefUPneD4yUyX+q
W/OlgT6Y1UUPODCBgis9JKrO2Xfw3KLyHDKhRv6blyTevJksUwq9YTBlU0SjQrOFZ15HTBdceG/U
Oog7r12mxiammNJLeiFsOZRAFIVIpDOvuV9QKBv1zCzCq252W5nY0wj6fQZAYFDKBLFXXe+Jb8fo
a9mOEB05Rd6mJ5+Id/W/QyEwbrzI7yfxqK19lzVePZchq30ncOfLgiWY8QAk3XOVApGxN7WkCgka
MS7nxezYk8s4u9MUkhzVNpBBBphobUpKCj/0ST9vh61FuiJ+gSKTCoSDQP8JC0DOWYnLF5H+4NZc
+wPgTFWFu85TTc+k3xvXNp13UM3CfhcwDO6GuzrKOlJS2JJJSp15OJdtpEh9jFceNakAB3n9RxHg
cx0YYU4TE4EAb4R4RxoJIYVnWDQvMdjmY30syRJJU3PoHDsBzP3xX3tDMapMcETIvoLBpqBOZNYa
UyMcjQp5JbfSnT8vS35FJXAL95p+CE4+IwDPI23ubjkslbbdckYZEWa0d+dRBmGSBGH/gMEv+K08
UJov9CpGCKTJ6hbrErmKWbHj7bdrAdYJeY34QhACW3zx8lPrwWYn51XAQNW3K6HLsOJcDuA8/OUj
KqIhKjfXFMwL4Gnrfyke3wcZTByyzLbElKtDtFwz718R8tn6UAQ6iiteMKDwc7i0H5wiJWznRxl6
aHtGLbW0F+6OoAWbqJcBwI0Of+kWIFmVLkmo8y/AW5ZDPdY18MHQ+dV9rT1Jx63bLgKQpttikrS3
DNZozl7ZjMEMvpcHYJTutj568Nth/fvCkZ2Z0XNTvCz6IjpUyPOsOD47kwfxFuzqqkM+fUjvmqO7
11i1817ATeQEN72RqFbMLZ7xzNHdYpE7xn0Qx7jblAmbvXdqjSXT65Q30cwrDW99xLWrtgKyFIH0
1T9+SW1QQS34rlRuC9+3f3f9qMp82yM321VSKX0LBwNdIFzxpajHomaIMQRsoR0fBW38DvUW8h0F
mzTv1dc0KAH887CYv3TCwOBtlTC5//HjIXOgPdy9FDrtAHGTu5n5n15ldmXRo+kGPHjsTAtJZrT6
d+T1lClpyXtXc2AokHzQDYh6bCA/OuKhkpQ6b8QdleuqtRCeMZUdOSkr2JBsjFdK0G0pBdgqmfDk
5IZlj/kxktvUshQwMIR7Vj9qxJyrJJu4qIfIFY24Q65oBZyfGmIr457EG9BV0+2/NUrH1D0olVQ8
v8LVtMqcs0JZh2iPesX7UdWUQT8atdp9VGkaMc8K+Q3z2Rbv0HQgCH+3aHGwUDcsqT0PE+ihpRMu
5Fe9YUD9+VMIV54FCihS1spXGEDdGRNryTKxBnVjbMxlIPzNEI+wN0Pc/32IpReyIRprOI7qKgam
A9fDFznrhUaJztFuQik+VzuDRcDy2q9S5P5ehtOCrJKtL3zVSm9r8qAzJ0S2BClMKhB7TLL9ktKO
lpbkk7t0RLCva3+12TV9GRj3S/NlFXp5hoGOpKu+kyJMfM8XmKtnSeqC0hzsKulbjgxjbPT4z3wp
lWUeVnYSCagYfaRLvCiG+K7G4AGb0rM8P2XCmBmxgHl/Sq/yFvmgKL5CI6MA0UBPwzijIN8OvBOd
5eMGUNaNm66+ZKx0wVfAX4k0NjQ+iojdtQw6z4V/Vu0a2z9CSCx8OsqWVINs1QTO+V8PIsSxmyaK
oNBWbA0OCmhtbgDALe0X3nx+gWriqSlV0rm+Mq7xOk1v0Ne7/MErL4MKtVuiuUFQDjOll3Rw3jr6
SDQLBZRch1Xidhaj/NdPThrwfXESP93ZcQkAoHyhhRQymXzSb8BGdlSXnNklWMr5SKgyVAQ+yBEh
CFWHXZ6uJnSddmh6kOF4DnZG1V9NIHTV3PRW0IudySqZc414j40/ehojS0SBvfxrX5Idb/CBlVII
V5UJsAFErnbKJ42u208ONjNcxGmtMPV1/rgnNOBaMZd4DohQiHk4tTrIPAcmqVth/IcDY90Hla3+
MrtSKRUUeuTJNAxXcaWo8juhHnlUc25Fzad2jOcZbKrS7SdPUjA3Bzpg09dJeePrLi9kB0YIUf8E
oWBK1gkE+6+N7i/6H8kMiOld81epONuhyHEWS+mncIX/YdzBSELlN7P/0tRbb3RVI2WQY32slOQo
eQ7oqKXjWiX8or6OzBo17awFPqRV+NBz4niTRY2bCkpCrnRtI29Wwdq9RHBustNgLxQ1mJnNAG3N
0va8EFY5a2njnPEC+n8697VrpijCwBKXg2i3ATHd5LAkDoBRMlprGtazbMGLM+BBfiDViGMQtjCD
t95Nbfm1yYwcY255FzgrmDdGHocptl1cCNUxzHOr8YpAfcUBy5V1WUB6pnKCtdMtVI247fUSSdC5
JiXzdhyUZG3Dg9HOMySM//7hqR/8Q62/GmSxk6sGMmX/62cjFCiJVDSPIoPAKSgDz1SrbjqtH/7C
j6EK5WZNHGeAl8BhqH09F4UCtyFwYdqEkA9fMiExCIghSwzP0iLORPWiX61wVcSGPBTbZg6nTi4x
DTQbCImemuAQ3wM1+qR4DO8coXXlziWBUHjB4lUOXgVyhw/IZjpfmk5zh0J/Jcqd9ysnJ6V8UM75
80J5UKQg+3K4E413ZAJqZcCNxWeKAxMjq10/oN3veK3zJwVQV4I6HvVJUHZVjP1QTWSfcvX8l1Fw
MytPH+pTo6gTf5yxX6VSTB1meHk5zvPO8BOoFN/duTNbGyaGVQg6XiD9/8nBdim7/YeEnMYco+mM
+KEYZsOo917Fn9YaTT44mdtr/LgjIffa6+b7OV4hwTF5VzuqGWMFkeI3e5CdVImVvpiAQgp80qP7
Pci1v1YDFjJwjoffP4sZz5p3xKapEbW9WfiT8YakP0C5t7intU7/2Fuypb2cMPcO4/9c1ptIAmNz
W1693cdcb9Qy/sUAO7FhqvuK+GcinwmiZEp24aYHtH+FH0CbAKNLusnPK3bZ8RM8D0SpjneLlhoM
lQ3XWhZ4bOqwc17VewNMHzEeAnwzSow8k7RpTxskLfKmJxu2d2tEVvPAr6FVG8Qd6EXRZj5Y6Zar
B8KwIthXatht4JfVPa+9xnYN7/SHc8g1M3FfNTjAAEBXO2clfDuF7cX77LJ20s1XawH8/K0VTc9e
RqBAqyTeG9MWOH1DrPeZyD5C5+QJzUFvE0uSuPcj40FuPGKfVBsrNErtpB9WaZ1Tsm9eJ4oUO73F
voSLSNGwE8W2Gg67EBI5QB2fAay27YQF/mkg0BXl+ZZJJc6g9Y5rIzzSt/VH4LA28Hk28YKapqUl
L5k0En4gnOpjuPKAC3F57FNb/qa3JEYmm1UHWwQg6QgWqflku5F9Sqp0/wf5t2/hChc3SW3iLzbe
Dnw/WmlNEne12aVWDvJYZUKEdxV7o6d8RYaDh3QkTmJVsCkfzIrQHZLMZu2Q5so5XW8HVmBarl3G
a5YrFiMNIJf1c7ppMd+JC3qFomJnMsBbjvvNWjYtBYWD5UIVPifR5HuzeMm211S1bPHJhj+T+ozG
qHnhwOv9ZI2fqiOKTaE55mphWaIU0yak5SbZP/DCiEzfH4RQUSujKY7EFhQaYB1Ck40hPHh/xDOu
mwdZ1wXmrjZGDPUZu162auODL5233STgZUIsPH4duv4rYlGvHHFIdcv+GXPnRMtwT2/bWjc0+w4k
iqCcscA6bq06H4g2YyZ1Y7+g0qlhcx0S8A9AInLPoTTHrTflPklomlgWttkY+EHnBdhilXbOtmTK
2vSPKmRFN+hCmJuMexgQXRJtQ5yWBLibrvJizhvKvKPymstInOVPqhTXrxSttFpwvIekuMqs+Sd+
fTugfKWfXJGfoRzC8L/TAA9b0zYNRSyIa6IgRzZVla+cCEIPoVxJ6qE4posjbq6uL4223BSuea+w
s2lmNXsdfsLonw+Vr9GYzKGA8aRwcB7MuMrwVSDd7pU74uQj1dysXd/0jmlS9K6C4IemN0Xh9A2J
j42i2laDqlJGCxeB9vUQmx+gaARhQ5JrbXCPt9agMagNqwQtcU/y154riSlpgxoQcdEIV8fmEi+9
6pGx2epcaCfDK1ZaCEw22sZZtLCxGnsh0CYky3un5oJTI7eEzgekyixECpnRZNDAytZGAVjhhXhQ
RgDiTBq/pPyORr20GySZcRj39+NFhsoU1/+oKiFlWCgdQAc1f+ICBCOKrJoppTYg8xzPdeTT8YV8
nsXm07IDT4b5VChGA/139P+AXbis8EjeCRlxPutHAoYOQzUX/0gxv6UNXNyiwgDvk5FOOztT9/bs
d1KNQTkpG75V49sqdZJN23CaeKh2mPqQ93ij4BWBJf/5eVqdJ0yBhdIQ+Y82lt9dImXCdj1Y1iaq
ELsTUAa2RCuqIWUS7uWgSG13hvSMm8NXWT0hC1tha8ulDpwU+GWVtnQiIm418QYlYACk8gYstP1F
a7wa5hujvozQQPuYUnxFRM9NYWUYTl/+2HaTFaf93e43x0BOVGEDIlKaMimaxhq912XWfHgDMXHm
VK42rHOYqIScx/l4NJxUeFwEIgYNTWJhVwGoABpsMHEUtF8JyAbsNgq+xScKTHgaqAHX7QYlTHRe
qVz162L+iq9QCxbKBBJV/bS7IISHdQXyrLdl0AqSEv0luB1gj40U3ORhTfd1yv2HnPPRe2bukLkM
63Ci7SqxnUDJXN4V67QxGw9gCwFV1OhGUytRxEe0IJoVpgQUlVYTqH0U8at8Ed05bM0WQvr+1/8F
QEi/Oz/9WQQkZxTAtxb7yWxjMbYORoxSSYZKBOPNMlLGvC2mboyl9Hq7ZSWl9dCYVn9vwlMIORES
W5E9JrK70rDwsVNdLYIMvNB8FqbbmGbAwIb64+p816MhqlkHS/ELkYgkZaMLLHgsS+LvjUAnxiZ6
noEotnj3cn+qoDuYv2ymcfpT/XEvTwO3QeEQJA/5IteGqVinBBLMi1h3hFCPGFODbgsoKHZoKGSn
BIMe90W3SXKbRKf/s99hEDqjBV31rUqBecJEF8r1U1JLGEHSobzOVIX8qBQ1YdHGuEWF2NDuNais
A54ivavvOtheYY+8GLw10iLVlmSispGalul3IXEuHA7hEfHvdD4sVzkx5ul7KMmgKnT4sMaIkMsD
c0OwBilOlbvp3uBla1CvPGuDzrknO6VQqDC9u7SGoTIZQ6JQo0DIp5vacFVnLnPvwW9g/ca04FQs
q9P15asoLpkiK13fwv1WL7IhXZDNmzqhTemtavWkpkqMZ/PR8jiOzUFINkRPtPlEaBwkeoBFIErM
4WiOr5fl9FEU3NURbJEjT/G1usBbEJ4IY1ARRYhB7aVbX9ddlao3HbQ/6lMBBLOMulAeWsjmWT9H
fkQER2NDwb2W7p7nnwNg/tScUfNnxTp2VEE0LTgr/huHqc46kVYyCNbQXV3+crvJiSZ95k7iWyVd
iQKhDmkBcSaiTqGM4ZlpJkSEAQpNUI9mhRiyrhpmn5FhpVWi4DEN3ECv576+jgrLXao6ofEqJ75C
1SncSUzNl5oqNDWOG+FJCcjXuEP1eQTUKpKJZ6GZaat8xqy0Br5I+8q76BDLOlraXbStY3oC/m5T
QF7CIUwCju3RA75a2v84c7EqedmTkHtGrqPtPhgwd7sPmeB79VrJCookEt3AAstaflBLNSA8UQRV
cJqmmoa6j4RMvz/14z9hfpYTYnwtBkRXcTBjMLzkQKl2hecCwP/BLVme2pviQ3lX2IWOVb5pIJu2
Zqh3ll1Jjq/XodC48X2uueASfcF4j8UDGkzEzRn8wund6gLvHbnpUjNyDyyEez/FZX8PYai7A3fG
QxhvYAwFnFn+tKy6gbFlQK5I6gWXSwpuc7qpj4bZxtoHVdyxzUPzS/1uT9Cw9xdbGR9wz0TGWbPU
OgqQw+fsnlfqgVvaaCdvRbTCDNvBKPaHQ3Og5kmfdByor0XCH7QjpZ6Yp8kXYgv8RNC1qVfgfsyc
QcVu7TdWxkFxnMr9sP1sN1uq4WbrRxR4JBtyjqelhzNJcBoNNUvkw1fg0Re243b58x/FZehjc3Ni
wu8HV8Eo8jB3snkcSkVGJ/bZosFnGmXBPxftV9AyeLtlNLEKGMPzGU0/4WJo+XsKGcpGW9yRVVzD
Rm392MOauVEbV7LflAajnp+MwEVTZsNbIjL4vbe2LwkZDScl7SxlqnW+44b8OaXBHOD+SDdKDSqG
mOa4Hq4gwxjIq/LBd4A44BtSOckhFSI2LiibIhhZ1lcjrss8qQjTdO65UrRHTb0YplE1plUevrY6
rq46sMcCc43q8rCBt/HvmFIh2Oca+Rxzbg4NIYBKFjVs6Q5v9l3KLG9V2gVteEDaz1eNnrp2kzcp
mPztwApRDEQhDp9cZy92KlNCsMPshyJaRPvdZcir7DtSOX4DLaZWUuog6DjgzLvrW7BX6EJIWA32
8wTZyzcIFcwzSJQMiAjhY5qTm/DJdHUJ7yCgIdtdSxBoQTeiqh+xo6mICW/lbBV0WRZ+rqawt5M/
JDbvUhoY3QV1g/twah9L2VOH57kn/1VMWYoWQcDnvEDD4fmTiOVwyC9LWaDmHgwXJbR+nSDwZTSI
uiLdaiz8SKwCs++t1R1VhyCmG+euUpU8xQIeKT1dQc3YoaSNK823wuqqcTv1+SibPSk0sSfm9TcO
u8J7AlENDJaE2BMXD+fcqb/MXTWcIjYNPy0f9ho0hTcgY52cfN/OPieV/oqD7188ExC5OOjd8JXX
wvjOxqIW4ZkJGNDb19MD+w5aRTlrOHL0HyYSxH/xAl/LKAWoHGOONyy9dxBSyBMwoXAnGFL+WBP+
ZPTszw66SQB8IECKOPsjoGKZpNDmje6W99MQVezUyp7ZtGgX2Tv1HcCLgYbVu+pPHogEEyRQ3o4D
EXXd2khOtbUAaBsJQQqgWIqED0rsyZid7O/Tv1EKgZO8XtIRpUtDX+lg/Te78gsoCVjjiOdlny0t
7ZvJdXSbEs0GKnFoVZCPw47I4QGgC3Izry9A6k3CqdCdw6OdxVqM9jJtjGsL4YRRrWNmm3oDxZfR
r68ZZVIG+0CB3m4mTj69YS3MXSosT7hGLh03S3JFbJTq7nMNcSRMr8KQAMO08PgQr96GIgqC2SD3
zfUGSz9nj6IAZ8HHAjE9N181fXu0DzJiUoSw7UVQ9aIb7lsUkEepZhgxd4oTJliV+ImlzDTT7pcs
crCEwwxOjscD6H/YFdlFMfVo3KL8L5qHiFcP4G9rveEj6LsmGqtuxlHbzuWhDf6Lk9bl361Yn/zi
+AGTlRJBNojsWuf1GZ1Q/7RtJGLmp3nZaLjHBB7U+SqdtJpPumP9Ly2Mtoj/6gjFl5bJkVgyRhqQ
3zfPqPA2gnnp+YJjiD/2JALy1tkrqP/69zpEiqfqwCcFmBlD4hyBHPdSvJmCb/qOq7plcuJG4C8k
bfVTLXpXeDED0XrD+vzr1JMWL9WlWTdUsGl0B77QBOopO4VUl5sYYSl9U65kbM+iWSIyUQg1XJSJ
RwebwSlIPI4WQhVVSHVOeFYI1H/XKKJAHEw1kT6cumtZtFVV90M5W9gPh9aLivbx3a4R6vV6BWkm
cj1JNVrRslMM5gi2uRcS3Bt1R10yIiUuOMtopozlobZ+1Rhw/afa/z+ACJgJRecSf3WJw7iJxNXQ
U6OtYb3gA+Fxg5e0OLFH/NWvPlPPdaxS0SA63KRDr+KDlepEeGC7l/fpgmjEEISGjtwtB6sQdD2Q
wqYeg4TEQJfG1HKSINDgZ12yc04YK32fpNdHBjmMboQteFngdwIKHSwIcvnuP4/Fg3jxuNncIHl/
KdZY+rsU7U2v+sb+XM4damfUyA/+c8705/l/pyHDQRwWiMUqeCKsxIQC3f5K4HuFox5+e3t9dVHg
gyLSUhzsnyOfRdy7FHeWud2XihHQKaaMQUhcDKcGJ+prNx6Zg5WP0i2Ic8CDEkQG3DMLOyxsNFuN
aqDlA/98ybYt6HCau1SIsWRAo59wOWiSPyyAJ+M45OcAmf8e8oZzWMr38lKhd5Zj4hDUq42dcNOe
wtKqo57aT1IUFufEOeZmOhFB4NnzqrGSsv3k8hhW5F9QoEXoeo5a1xU/y02aH6d+BQOilRb0IePH
yT2T1m7zUxIxa/pl4oryN1oRYtIf2U68DLi2vqdRmhD9eI/DqTFX639K3W/MhV9bNenIIRLfL5Rh
4VYUqttgiKrofAunsXsS/j2YGu8xLcxf/Sj7oPj0daQgQ+5u2wu34CaRQaJOwdHDqG6R5v3A7qGH
bUkk9DrsWRHxZGXUgUm3vaG0k211pYNJqf7+qxgKvPb2bdnAFWSGtoqnLZ429OpB1irhOaIpxgmc
CcCkz8QcUxdoBheY0rgPAQ2IKgQDbQAt1fo21mUdoni6/2+4y4TWiQjIZaEqg9UV8yNDRqV9TDqY
iUkB9mJ7pf5I/RHMnCR3VPM1dEOcnDUKr7GD/DSgjbe1+OJEtzACxmqTdJzUq+qJqD4rBRYwze56
iOU35pB5QF3tFmRCQ/edjuyd+YqnAuMUOaCIAgZnpqYWfEEvcKS7QOckqEH+J+kKcNPVjKp/2wTX
rAOZbTM/KWwFcDmskpDx7tp9h2XOZEChNebz2lV8vk+VzX0R7Bwpxv4nDddzgHgDvRJGc0FEX18G
8vc3/aoMLP8/bPf1ICi3Ugg8KgHVUrEke1wlpA0tb98qWdY6eKzZJPrw8ly6O7k/B+fS+GfG0l70
sAF/4s3v0jGmPpxdcQNgJWgTs/I1LmLEIFXazDiM+ZdsbaRyWljsQwHHxoMOJPVkXpK47/dMQgvh
Hp7o0GoAThYaYaXz3xVmLeF9+V8Cf0+9B6hYiRmmyc8YRizJSljaMulVjLHlQBwPizWn4LmbmWVl
wsgF+/KFx4Io9A/+EyPF2/aQFkOcrGnmJX/fR7XdWaIAv0GfeJ4Jmc9lvRvmSqQwLjgMhaM0BPyP
kPhJ8UVRK/yVey4F6PZyfmSKwoa+7kST+qNCybuw6DL+hJri1hayGlTiZ3b6BfhTX+GKSveilY/S
gkhCJxTGlbZxTNhn05quDI6LCwMBJ/VCiKyAustRmVL8uE1IZqwHkaOtpX4Ywb2uXffCQD/KPELI
omyJPgXtpx2eNiyfYpv6KekwrziE57YMUZfXRsF/SDYnWsmiDQn6MtxA/AxNNjI3NUi8ld60Oxz8
BdZD5WkiGou7+5OPzjZVpwplrQIcmpxUHKqF1hnZI5rK9HVQggbDrZkqa/v+tZacdU3hHxndLYtN
/nzm1xl0vnCYnnvSWJxxu2fnVLmOK40lddse+Him6z2ybVNQntwQd1Bw6Vhqkzi6jJJdohNjOQnP
Zso2RUZ8B8VGHQXHn+slG1RNtrbTOsX3Zo7FSGACdkicvCGwcp/tEIYqBJVnBuSy48wHXxb1AyMM
koWwqFYIQI2eqPDFyq9MqrsW/FE24qS6UUV21tO7SOcTFFEOngUrfelMQROMViR4oSpcIKwbiSgX
Fy1xRrj4A4V7Mb0W7Kj166e3LR8MPKXFlFVzPU3k8y5uSmcIctCDcEuLr8p2OrRpViBtMUJ7I0zV
MT5O5VWLGDHQ8kWd/yeSqCfHBAM4N1jiUun0duZzspuY0MstWWbjAdb1JUAEQc9zs/Jh5DkcAsEh
oLR+tDPVbhGMvqx6xGNMEyrMt4u7tHSYQOb9CAsiRwXcofvsVEewueBuoKHSBSdVcValDW7s/VRI
YoAycUTQ+dP1gq1ufEL3XzN4dlu43wtM6D2ZYYTIhPJIF2pH1JNPmunkgMK9iY2QfCpo/twtfGRQ
mXz4ztFX3qXvLOnzzZaPwGqxK9qrVMEVq2DaLx3GSFp2Llukvq/Y2eL6C4LwWrXYymabV3pnuKTE
nKuapvmI3IlY0mmYHaUg4JlMrLurbMSiRFyVPEf1lH2MlFS9ZpWhaXtr5fEWv/BuHnf+U4pP5PPw
3P7i4bMq17Jg+MpuDUK90iivwLWPIhMju5OjCvR1dNIaewYc0U4OiitHhMefdICnK6huBETq/aYT
3FNlTwS76Fwd8/wG+sqFqxkulR3JENrp9KSroy6GgP4Jp3NMz8JIhrkJzeK5sNroEV/J7L+ht15f
zP3z90oVEeMBpX9AdIfqeQYlLRyEWzQpdvAzHu6Mtx6EMMcBDFragxCNTPuOyb8iaPCH+YxUDcI3
ntTtfQBU1LBltaymr4AescyBpXbUu9akOzUIefjP4m6r7Y64psRult3Gm4tGX4CPSHO130w5YfGS
nQZIh4ii6hVVZWJWX2Crz7RhheET8O48/CifKO2eGRbqhp82RBvCD2B1A6iZssbDcOnz9yVvhu0K
MyGwrREQO2F1wlpgnXitXzIGMUcjfhyDgzvkG5/Q2p15OLPU49YE6vN4H3OpFpRT9ZVv5A8JxXCP
8Tzo7ON6XG3+Z42/2GcfTFI769kxnYcdypV/GYQOLe9x3JwgsUrGXdLwlRDlLi+4Ll49mZ7Yv4V2
3IrVQ5FMORoOxtNhItcf9kR6hHN33pvUygOpqGyBaKihgAFeOevq3ZXOK+b9toBYwbAc6+pkpdgV
hMeSvMwxCcql5/Spz6jVty7vdBVawf9oM2HN+24PI4ruVTiMWyLdDQrnIa3rlQlNnB3CsUW3TOX4
OU7ZrUzPBjImYiWC/qke0eNfKh3AW5xs9q5BW3wyDU0F4M8L8Hrs2jkO40ktl66Yg49Zk6DGIxtg
RM9oSg/Y+nC/MPs+coURiJh1FoJPlMfXF7qrv2lrc429yHvYOO2qP5G3+0ZmOlGBE0iTtf18jcDV
pxA1Fmj/FTECwyKhSgJ53cTIHhHYzKfzclW+sZ4E/qXIalt0ukT+mYQH9EcPeQxUHTKnd7Rl6dy0
b/VoFY/8NtysTC1C+o+TVvvdacz/vC1VuCDhnJS3mFkgqEPmbzuEvE5uCIeQh3tXy0VaG8PYxTZA
zpr86s24tDwsR38MAL2sv35i+ZzmkJLUxQeenaR2QvxPxf9WDjUF6jIt8nft4tdUSCTqXiZpetDr
nDkzDgpBjx25DyNo4PqdtbN3zaJaChivhcbBZ9GaizuvCgU5KqTtTegWbnzLwPwj5KKFgAIG4sq7
X/53SYz2v4w2UrCA+0Y7ZAXmVCk7SKPt1Dre2xG3nHAYnc+BCBNKsJGioURlSnlYTxACRUUwK7lB
obQJO3Vvb9vxUApfLTZGi4aLu4G3xzoy+OGTsbJFg4WOLeXAgLpkFFD3OZCoi+FD4QM9RFETTeLl
IK41ncSOxUdcLZLeBAJtQc4KmIWqEDUubROXXA2FxNuDkzLpFeajC1A2NB+rT0UxeEc0RFUVYxLl
Rus91ZP78NGQ0gtNmhH8nqQMJvTSM2NxfE0sGLg4wwTyM0SeypvUfIAWeJP8j57iaLaeL9EOLVTg
iQOGlRpXrRwaNrUMfk2KalKmmmRm7uEqcOM2k3RuiVuHwZ+0XoVe/+nUErqGGcO3NGtt3+BYWJj+
eREwHjDDX61PdKFqJPzqJLpg8U3hRqVZ+ng2cKen+O7fFYrT8ag7J0P3mwTEhba1klsM2gF70p3X
6m5DQ6TgZFJJbU6/F5Egdwh3VzLf1WEJgDCxiyRkVH2R97Ehz76GfnkWLLMOxxlOrNEgEXVcy6fN
iw4X3tAFywZxbELkzrCQ8+Fg89AMQY9Wgy2muUJXz5uz7CKSdwIj1WgzEAjXs6bym4hh/KINFxOZ
OQ0d3YwbAWWVamNmfA4O4NRV+zqTamJvu/d+STwEsGN6+7RxZwhDJBW8X7+vANht9Fz97F482dDO
C25h0fXnWKlwv10cvB9DUb5KRwYzYIn9+Fb8BVwQ3t5Rien471cZ28xinB38YVzY5HTMWTI4AvFJ
bY2jQoOXvirmOGnFh2IV2SXNPlX6VWkivkFouzjw6PodjFmwY+3AIUjx4aw70/1eXWSI9jqsS5ab
HnyIdmvIEOwdHs3G4ddNUmbG4hG2ClVwFcbp9dTfaTDM6GDHbFdq4HcXZckZg65GffAmvgJiteCO
jX8ARVOBGbfEwCCZwsjEe97TjxuNFcGjSFkPLZfOHB9r2Ps93TLev/iJT0O50cGWHmWyPeblOxjt
O9ynMWELazOWRhRX3v7HiOayOmVKjBAlTYZ8MCaKeK4JUZfrHF52xsQuyxetjFaZajkX8sHiKEMx
TUTOEPv0G50E7QHu+27exAYOx/rzfAbLZUL7YdsAv5Rl86CuuHW3M8GulZdPbl/F04+sJGYyoQys
KTE5LsuXG3WkGHOX2CbsVx/4xxMLKFi2bc4yX26S0uuA1X8p5TYZQNXi2WsLBu1Vg64Ir7ratPxE
w7YsqgfgRGxPuvFmNeh7Uyk1u5+l8qj1y96D3oVgqJ5mds0VRm/36pcEMeBSeKHJxarhX23NNZp6
jJ8jNkSAEvWOfToS37g5CoX51KpONJqFQIQjZ6WXDUk0/AhzVHuJ0IbnLW4vqtQGsziCWn1VCkvf
4O7UIK58PLnEsmp97Tq3uTC1W79+qvysCn6jBztiTOvr+y5yXbSgif970OqdxSD/tmyltihjA7Mu
e1hSoVGepochdxAFOb9CGOVGYrAi1a5OUGWMBUJcwcT1wv4H5J7p4aeuvkMeqFDsVgIXlsurhfdo
q82UGlcu3aQoMzSfWKAdalyeaNtcxE97LitiJ8Z/2DC6jsc5gOgAbMpeGq+YUV6tsKkAcMWtmq9R
Lww6CP3EVObAEOsgrgjr+NrVStxr
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
