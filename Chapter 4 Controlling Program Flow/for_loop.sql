declare
	v_main_nr number;
begin
    for main_c in 0..5
    loop
		v_main_nr := main_c *5;
    	for inner_c in 0..4
    	loop
    		dbms_output.put_line(v_main_nr);
		end loop;
    end loop;
end;