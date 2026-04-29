// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2.1 (win64) Build 6403652 Thu Mar 19 19:48:24 GMT 2026
// Date        : Wed Apr 29 14:21:51 2026
// Host        : DESKTOP-Q1F9NDB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/AIOT/SoC/0429/Create_memory/Create_memory.gen/sources_1/ip/spram5/spram5_sim_netlist.v
// Design      : spram5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spram5,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2.1" *) 
(* NotValidForBitStream *)
module spram5
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
  spram5_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19248)
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
