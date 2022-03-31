class packet_in extends uvm_sequence_item;
    rand bit [31:0] A;
    rand bit [31:0] B;
//	signA = [31] A;
//	signB = [31] B;
//	shortreal E = $bitstoshortreal(C);
//	shortreal F = $bitstoshortreal(D);
//	constraint input_range {E inside	{[-5000:5000]};
//							F inside	{[-5000:5000]};	}
//	bit [31:0] A = $shortrealtobits(E);
//	bit [31:0] B = $shortrealtobits(F);
    `uvm_object_utils_begin(packet_in)
        `uvm_field_int(A, UVM_ALL_ON|UVM_HEX)
        `uvm_field_int(B, UVM_ALL_ON|UVM_HEX)
    `uvm_object_utils_end

    function new(string name="packet_in");
        super.new(name);
    endfunction: new
endclass: packet_in
