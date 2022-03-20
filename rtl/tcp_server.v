/****************************************************************************
 * Author: Steven Halam Paek
 * Desciption: TCP Server Controller
 ****************************************************************************/

 module tcp_server (input clk, input rst);

    /* State Definitions */
    localparam
        STATE_00 = 4'b0000,
        STATE_01 = 4'b0001,
        STATE_02 = 4'b0010,
        STATE_03 = 4'b0011,
        STATE_04 = 4'b0100,
        STATE_05 = 4'b0101,
        STATE_06 = 4'b0110,
        STATE_07 = 4'b0111,
        STATE_08 = 4'b1000,
        STATE_09 = 4'b1001,
        STATE_10 = 4'b1010,
        STATE_11 = 4'b1011,
        STATE_12 = 4'b1100,
        STATE_13 = 4'b1101,
        STATE_14 = 4'b1110,
        STATE_15 = 4'b1111;

    /* Variable List */
    reg[3:0] state, next_state;

    /* State Machine */
    always @ (posedge clk) 
    begin
        if (rst)
          begin
          state <= STATE_00;
          end
        else
          begin
          $display("State = %d", state);
          case(state)
            STATE_00 : 
                begin
                next_state = STATE_01;
                end
            STATE_01 : 
                begin
                next_state = STATE_02;
                end
            STATE_02 : 
                begin
                next_state = STATE_03;
                end
            STATE_03 : 
                begin
                next_state = STATE_04;
                end
            STATE_04 : 
                begin
                next_state = STATE_05;
                end
            STATE_05 : 
                begin
                next_state = STATE_06;
                end
            STATE_06 : 
                begin
                next_state = STATE_07;
                end
            STATE_07 : 
                begin
                next_state = STATE_08;
                end
            STATE_08 : 
                begin
                next_state = STATE_09;
                end
            STATE_09 : 
                begin
                next_state = STATE_10;
                end
            STATE_10 : 
                begin
                next_state = STATE_11;
                end
            STATE_11 : 
                begin
                next_state = STATE_12;
                end
            STATE_12 : 
                begin
                next_state = STATE_13;
                end
            STATE_13 : 
                begin
                next_state = STATE_14;
                end
            STATE_14 : 
                begin
                next_state = STATE_15;
                end
            STATE_15 : 
                begin
                next_state = STATE_00;
                end
          endcase
          state = next_state;
          end
    end


 endmodule
