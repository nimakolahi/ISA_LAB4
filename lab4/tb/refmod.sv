class refmod extends uvm_component;
    `uvm_component_utils(refmod)
	shortreal Z,A_temp,B_temp;    
    packet_in tr_in;
    packet_out tr_out;
    uvm_get_port #(packet_in) in;
    uvm_put_port #(packet_out) out;
    
    function new(string name = "refmod", uvm_component parent);
        super.new(name, parent);
        in = new("in", this);
        out = new("out", this);
    endfunction
    
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        tr_out = packet_out::type_id::create("tr_out", this);
    endfunction: build_phase
    
    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
        
        forever begin
            in.get(tr_in);
			A_temp = $bitstoshortreal(tr_in.A);
			B_temp = $bitstoshortreal(tr_in.B);
            Z = A_temp * B_temp;
			tr_out.data = $shortrealtobits(Z);
            $display("refmod: input A = %f, input B = %f, output OUT = %f",$bitstoshortreal(tr_in.A), $bitstoshortreal(tr_in.B), $bitstoshortreal(tr_out.data));
			$display("refmod: input A = %b, input B = %b, output OUT = %b",tr_in.A, tr_in.B, tr_out.data);
            out.put(tr_out);
        end
    endtask: run_phase
endclass: refmod
