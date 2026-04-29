// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2.1 (win64) Build 6403652 Thu Mar 19 19:48:24 GMT 2026
// Date        : Wed Apr 29 14:20:31 2026
// Host        : DESKTOP-Q1F9NDB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/AIOT/SoC/0429/Create_memory/Create_memory.gen/sources_1/ip/spram3/spram3_sim_netlist.v
// Design      : spram3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spram3,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2.1" *) 
(* NotValidForBitStream *)
module spram3
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
  spram3_blk_mem_gen_v8_4_12 U0
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
yPzigYui+NvGVdLN5g==
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
