  process (clk)
    file input_file : text is "fp_samples.hex";
    variable input_line : line;
    variable Qdata,FP_Ztemp : integer := 16#0#;
	variable Qdata_temp : std_logic_vector(31 downto 0);
    file output_file : text;
    variable output_line : line;

  begin
    if rising_edge(clk) then
     if (not (endfile(input_file))) then
        readline(input_file, input_line);
        read(input_line, Qdata);
		Qdata_temp := conv_std_logic_vector(Qdata,32);
        FP_A <= Qdata_temp;
		FP_B <= Qdata_temp;
      else
        null;
      end if;
      file_open(output_file,"fp_prod.hex",append_mode);
	  FP_Ztemp := conv_integer(FP_Z);
      write(output_line,FP_Ztemp);
      writeline(output_file,output_line);
      file_close(output_file);
	end if;
  end process;
