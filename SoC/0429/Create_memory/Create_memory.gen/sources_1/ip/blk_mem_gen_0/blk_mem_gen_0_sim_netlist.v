// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2.1 (win64) Build 6403652 Thu Mar 19 19:48:24 GMT 2026
// Date        : Wed Apr 29 14:16:15 2026
// Host        : DESKTOP-Q1F9NDB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/AIOT/SoC/0429/Create_memory/Create_memory.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18976)
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
