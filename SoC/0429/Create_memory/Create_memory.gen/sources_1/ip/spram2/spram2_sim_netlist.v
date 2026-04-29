// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2.1 (win64) Build 6403652 Thu Mar 19 19:48:24 GMT 2026
// Date        : Wed Apr 29 14:20:21 2026
// Host        : DESKTOP-Q1F9NDB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/AIOT/SoC/0429/Create_memory/Create_memory.gen/sources_1/ip/spram2/spram2_sim_netlist.v
// Design      : spram2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spram2,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2.1" *) 
(* NotValidForBitStream *)
module spram2
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
  spram2_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18880)
`pragma protect data_block
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
XIMi6UYzl9qUQ/fqSw==
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
