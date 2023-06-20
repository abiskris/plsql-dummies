declare
	v_ind_nr number;
	v_current_nr number;
begin
	v_current_nr := 0;
	loop
		v_ind_nr := 0;
		loop
			v_ind_nr := v_ind_nr+1;
			dbms_output.put_line(v_current_nr);
			exit when v_ind_nr=4;
        end loop; 
		v_current_nr := v_current_nr+5;
		exit when v_current_nr >= 25;
    end loop;
end;