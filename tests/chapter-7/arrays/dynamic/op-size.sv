/*
:name: dynamic-arrays-op-size
:description: Test dynamic arrays operator size support
:should_fail: 0
:tags: 7.5.2
*/
module top ();

bit [7:0] arr[];

initial begin
    arr = new [ 16 ];
    $display(":assert: (%d == 16)", arr.size);
    arr = new [ 8 ];
    $display(":assert: (%d == 8)", arr.size);
end

endmodule
