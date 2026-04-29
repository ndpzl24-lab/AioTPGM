// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2.1 (win64) Build 6403652 Thu Mar 19 19:48:24 GMT 2026
// Date        : Wed Apr 29 14:20:20 2026
// Host        : DESKTOP-Q1F9NDB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ spram2_sim_netlist.v
// Design      : spram2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spram2,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2.1" *) 
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
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "spram2.mem" *) 
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
Okc0zkTD0v1mSiE=
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
