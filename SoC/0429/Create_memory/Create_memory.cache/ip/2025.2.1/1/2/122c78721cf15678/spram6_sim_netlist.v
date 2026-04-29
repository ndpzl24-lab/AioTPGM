// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2.1 (win64) Build 6403652 Thu Mar 19 19:48:24 GMT 2026
// Date        : Wed Apr 29 14:22:28 2026
// Host        : DESKTOP-Q1F9NDB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ spram6_sim_netlist.v
// Design      : spram6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spram6,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2.1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.302734 mW" *) 
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
  (* C_INIT_FILE = "spram6.mem" *) 
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
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
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
Idp7k9h7e7+z7yA+j33vuwFarZZa
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
