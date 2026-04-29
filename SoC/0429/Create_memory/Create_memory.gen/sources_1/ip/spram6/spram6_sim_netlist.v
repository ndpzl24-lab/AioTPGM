// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2.1 (win64) Build 6403652 Thu Mar 19 19:48:24 GMT 2026
// Date        : Wed Apr 29 14:22:29 2026
// Host        : DESKTOP-Q1F9NDB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/AIOT/SoC/0429/Create_memory/Create_memory.gen/sources_1/ip/spram6/spram6_sim_netlist.v
// Design      : spram6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spram6,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2.1" *) 
(* NotValidForBitStream *)
module spram6
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
  spram6_blk_mem_gen_v8_4_12 U0
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
