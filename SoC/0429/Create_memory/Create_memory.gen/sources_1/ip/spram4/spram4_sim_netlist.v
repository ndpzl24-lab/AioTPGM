// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2.1 (win64) Build 6403652 Thu Mar 19 19:48:24 GMT 2026
// Date        : Wed Apr 29 14:21:16 2026
// Host        : DESKTOP-Q1F9NDB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/AIOT/SoC/0429/Create_memory/Create_memory.gen/sources_1/ip/spram4/spram4_sim_netlist.v
// Design      : spram4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spram4,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2.1" *) 
(* NotValidForBitStream *)
module spram4
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
  spram4_blk_mem_gen_v8_4_12 U0
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
