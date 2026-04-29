// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2.1 (win64) Build 6403652 Thu Mar 19 19:48:24 GMT 2026
// Date        : Wed Apr 29 14:16:14 2026
// Host        : DESKTOP-Q1F9NDB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
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
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
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
        .regcea(1'b1),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18992)
`pragma protect data_block
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
vqVPz0JLl+SpcnY=
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
