// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="test_ReservationStation,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.361250,HLS_SYN_LAT=5,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=281,HLS_SYN_LUT=776,HLS_VERSION=2018_2}" *)

module test_ReservationStation (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        results_address0,
        results_ce0,
        results_we0,
        results_d0,
        results_address1,
        results_ce1,
        results_we1,
        results_d1,
        name,
        func,
        Qs,
        Vs,
        Qt,
        Vt,
        Qb,
        Vb
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] results_address0;
output   results_ce0;
output   results_we0;
output  [63:0] results_d0;
output  [2:0] results_address1;
output   results_ce1;
output   results_we1;
output  [63:0] results_d1;
input  [7:0] name;
input  [7:0] func;
input  [7:0] Qs;
input  [63:0] Vs;
input  [7:0] Qt;
input  [63:0] Vt;
input  [7:0] Qb;
input  [63:0] Vb;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[2:0] results_address0;
reg results_ce0;
reg results_we0;
reg[63:0] results_d0;
reg[2:0] results_address1;
reg results_ce1;
reg results_we1;
reg[63:0] results_d1;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] ReservationStation_s_fu_219_p2;
reg   [0:0] ReservationStation_s_reg_407;
wire   [0:0] ReservationStation_t_fu_225_p2;
reg   [0:0] ReservationStation_t_reg_415;
wire    ap_CS_fsm_state2;
wire   [2:0] rs_tag_fu_231_p1;
reg   [2:0] rs_tag_reg_434;
wire   [63:0] rs_s_V_1_fu_235_p3;
wire   [63:0] rs_t_V_1_fu_242_p3;
wire   [0:0] tmp_i_fu_255_p2;
reg   [0:0] tmp_i_reg_452;
wire   [0:0] tmp_5_fu_249_p2;
wire   [0:0] tmp_i_2_fu_275_p2;
reg   [0:0] tmp_i_2_reg_457;
wire   [0:0] tmp_7_i_fu_319_p2;
reg   [0:0] tmp_7_i_reg_462;
wire   [63:0] rs_s_V_fu_325_p3;
reg   [63:0] rs_s_V_reg_468;
wire   [63:0] rs_t_V_fu_333_p3;
reg   [63:0] rs_t_V_reg_473;
wire   [7:0] rs_func_fu_349_p3;
wire    ap_CS_fsm_state3;
wire   [0:0] rs_busy_fu_355_p2;
wire   [0:0] rs_s_value_fu_360_p2;
wire   [0:0] rs_t_value_fu_366_p2;
reg   [0:0] ReservationStation_t_3_reg_158;
reg   [0:0] ReservationStation_s_3_reg_167;
reg   [63:0] ReservationStation_t_4_reg_176;
reg   [63:0] ReservationStation_s_4_reg_187;
reg   [0:0] ReservationStation_b_reg_198;
reg   [7:0] ReservationStation_f_reg_209;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire   [63:0] tmp_7_fu_378_p1;
wire   [63:0] tmp_9_fu_383_p1;
wire   [63:0] tmp_s_fu_388_p1;
wire   [63:0] tmp_1_fu_393_p1;
wire   [63:0] V_ReservationStation_fu_260_p3;
wire   [63:0] V_ReservationStation_1_fu_280_p3;
wire   [4:0] tmp_fu_299_p1;
wire   [7:0] tmp_1_i_cast_fu_303_p1;
wire   [10:0] tmp_3_i_fu_307_p3;
wire   [11:0] tmp_4_i_cast_fu_295_p1;
wire   [11:0] tmp_6_i_cast_fu_315_p1;
wire   [63:0] ReservationStation_s_1_fu_268_p3;
wire   [63:0] ReservationStation_t_1_fu_288_p3;
wire   [0:0] ReservationStation_s_2_fu_341_p2;
wire   [0:0] ReservationStation_t_2_fu_345_p2;
wire   [0:0] p_read1_i_fu_372_p2;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ReservationStation_b_reg_198 <= rs_busy_fu_355_p2;
    end else if (((tmp_5_fu_249_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ReservationStation_b_reg_198 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ReservationStation_f_reg_209 <= rs_func_fu_349_p3;
    end else if (((tmp_5_fu_249_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ReservationStation_f_reg_209 <= func;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ReservationStation_s_3_reg_167 <= rs_s_value_fu_360_p2;
    end else if (((tmp_5_fu_249_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ReservationStation_s_3_reg_167 <= ReservationStation_s_reg_407;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ReservationStation_s_4_reg_187 <= rs_s_V_reg_468;
    end else if (((tmp_5_fu_249_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ReservationStation_s_4_reg_187 <= rs_s_V_1_fu_235_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ReservationStation_t_3_reg_158 <= rs_t_value_fu_366_p2;
    end else if (((tmp_5_fu_249_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ReservationStation_t_3_reg_158 <= ReservationStation_t_reg_415;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ReservationStation_t_4_reg_176 <= rs_t_V_reg_473;
    end else if (((tmp_5_fu_249_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ReservationStation_t_4_reg_176 <= rs_t_V_1_fu_242_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        ReservationStation_s_reg_407 <= ReservationStation_s_fu_219_p2;
        ReservationStation_t_reg_415 <= ReservationStation_t_fu_225_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_5_fu_249_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        rs_s_V_reg_468 <= rs_s_V_fu_325_p3;
        rs_t_V_reg_473 <= rs_t_V_fu_333_p3;
        tmp_7_i_reg_462 <= tmp_7_i_fu_319_p2;
        tmp_i_2_reg_457 <= tmp_i_2_fu_275_p2;
        tmp_i_reg_452 <= tmp_i_fu_255_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rs_tag_reg_434 <= rs_tag_fu_231_p1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        results_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        results_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        results_address0 = 64'd0;
    end else begin
        results_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        results_address1 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        results_address1 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        results_address1 = 64'd1;
    end else begin
        results_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        results_ce0 = 1'b1;
    end else begin
        results_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        results_ce1 = 1'b1;
    end else begin
        results_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        results_d0 = tmp_s_fu_388_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        results_d0 = ReservationStation_s_4_reg_187;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        results_d0 = tmp_7_fu_378_p1;
    end else begin
        results_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        results_d1 = tmp_1_fu_393_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        results_d1 = ReservationStation_t_4_reg_176;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        results_d1 = tmp_9_fu_383_p1;
    end else begin
        results_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        results_we0 = 1'b1;
    end else begin
        results_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        results_we1 = 1'b1;
    end else begin
        results_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_5_fu_249_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ReservationStation_s_1_fu_268_p3 = ((ReservationStation_s_reg_407[0:0] === 1'b1) ? Vs : V_ReservationStation_fu_260_p3);

assign ReservationStation_s_2_fu_341_p2 = (tmp_i_reg_452 | ReservationStation_s_reg_407);

assign ReservationStation_s_fu_219_p2 = ((Qs == 8'd0) ? 1'b1 : 1'b0);

assign ReservationStation_t_1_fu_288_p3 = ((ReservationStation_t_reg_415[0:0] === 1'b1) ? Vt : V_ReservationStation_1_fu_280_p3);

assign ReservationStation_t_2_fu_345_p2 = (tmp_i_2_reg_457 | ReservationStation_t_reg_415);

assign ReservationStation_t_fu_225_p2 = ((Qt == 8'd0) ? 1'b1 : 1'b0);

assign V_ReservationStation_1_fu_280_p3 = ((tmp_i_2_fu_275_p2[0:0] === 1'b1) ? Vb : rs_t_V_1_fu_242_p3);

assign V_ReservationStation_fu_260_p3 = ((tmp_i_fu_255_p2[0:0] === 1'b1) ? Vb : rs_s_V_1_fu_235_p3);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign p_read1_i_fu_372_p2 = (ReservationStation_t_3_reg_158 & ReservationStation_s_3_reg_167);

assign rs_busy_fu_355_p2 = (tmp_7_i_reg_462 ^ 1'd1);

assign rs_func_fu_349_p3 = ((tmp_7_i_reg_462[0:0] === 1'b1) ? 8'd0 : func);

assign rs_s_V_1_fu_235_p3 = ((ReservationStation_s_reg_407[0:0] === 1'b1) ? Vs : 64'd0);

assign rs_s_V_fu_325_p3 = ((tmp_7_i_fu_319_p2[0:0] === 1'b1) ? 64'd0 : ReservationStation_s_1_fu_268_p3);

assign rs_s_value_fu_360_p2 = (rs_busy_fu_355_p2 & ReservationStation_s_2_fu_341_p2);

assign rs_t_V_1_fu_242_p3 = ((ReservationStation_t_reg_415[0:0] === 1'b1) ? Vt : 64'd0);

assign rs_t_V_fu_333_p3 = ((tmp_7_i_fu_319_p2[0:0] === 1'b1) ? 64'd0 : ReservationStation_t_1_fu_288_p3);

assign rs_t_value_fu_366_p2 = (rs_busy_fu_355_p2 & ReservationStation_t_2_fu_345_p2);

assign rs_tag_fu_231_p1 = name[2:0];

assign tmp_1_fu_393_p1 = rs_tag_reg_434;

assign tmp_1_i_cast_fu_303_p1 = tmp_fu_299_p1;

assign tmp_3_i_fu_307_p3 = {{3'd0}, {tmp_1_i_cast_fu_303_p1}};

assign tmp_4_i_cast_fu_295_p1 = Qb;

assign tmp_5_fu_249_p2 = ((Qb == 8'd0) ? 1'b1 : 1'b0);

assign tmp_6_i_cast_fu_315_p1 = tmp_3_i_fu_307_p3;

assign tmp_7_fu_378_p1 = p_read1_i_fu_372_p2;

assign tmp_7_i_fu_319_p2 = ((tmp_4_i_cast_fu_295_p1 == tmp_6_i_cast_fu_315_p1) ? 1'b1 : 1'b0);

assign tmp_9_fu_383_p1 = ReservationStation_b_reg_198;

assign tmp_fu_299_p1 = name[4:0];

assign tmp_i_2_fu_275_p2 = ((Qt == Qb) ? 1'b1 : 1'b0);

assign tmp_i_fu_255_p2 = ((Qs == Qb) ? 1'b1 : 1'b0);

assign tmp_s_fu_388_p1 = ReservationStation_f_reg_209;

endmodule //test_ReservationStation
