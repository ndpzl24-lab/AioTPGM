// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2.1 (win64) Build 6403652 Thu Mar 19 19:48:24 GMT 2026
// Date        : Wed Apr 29 14:20:30 2026
// Host        : DESKTOP-Q1F9NDB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ spram3_sim_netlist.v
// Design      : spram3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spram3,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2.1" *) 
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
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "spram3.mem" *) 
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
uIGAFjbNBIQvmjc=
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
