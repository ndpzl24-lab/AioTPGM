// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2.1 (win64) Build 6403652 Thu Mar 19 19:48:24 GMT 2026
// Date        : Wed Apr 29 14:16:14 2026
// Host        : DESKTOP-Q1F9NDB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top spram1 -prefix
//               spram1_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2.1" *) 
(* NotValidForBitStream *)
module spram1
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
  spram1_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18608)
`pragma protect data_block
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
vyw7TlAdojmGZri1MKVSc3AEFSsNhlyUj4A=
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
