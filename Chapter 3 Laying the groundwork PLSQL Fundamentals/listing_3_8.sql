declare
	v_pi_nr NUMBER := 3.14;
function f_getDiff_nr(i_rad1_nr number, i_rad2_nr number)
return number is
	v_area1_nr number;
	v_area2_nr number;
	v_out_nr number;
	function f_getArea_nr(i_rad_nr number)
	return number
	is
	begin
		return v_pi_nr*(i_rad_nr**2);
	end;
begin 
	v_area1_nr := f_getArea_nr(i_rad1_nr);
	v_area2_nr := f_getArea_nr(i_rad2_nr);
	v_out_nr := v_area1_nr - v_area2_nr;
	return v_out_nr;
end;
begin
	dbms_output.put_line('diff between 3 and 4: '||f_getDiff_nr(4,3));
end;
