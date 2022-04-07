class packet_in extends uvm_sequence_item;
    rand bit [31:0] A;
    rand bit [31:0] B;
    constraint normalized {((A[22:0] * B[22:0]) && 32h'80000000) != 32'h80000000 -> A[30:23]+B[30:23] + 127> 0;}
    `uvm_object_utils_begin(packet_in)
        `uvm_field_int(A, UVM_ALL_ON|UVM_HEX)
        `uvm_field_int(B, UVM_ALL_ON|UVM_HEX)
    `uvm_object_utils_end

    function new(string name="packet_in");
        super.new(name);
    endfunction: new
endclass: packet_in
