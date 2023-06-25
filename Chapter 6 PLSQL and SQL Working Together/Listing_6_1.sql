declare
	cursor c_countDepts is
		select count(*)
		from scott.dept;
	v_out_nr number;
begin
	open c_countDepts;
	fetch c_countDepts into v_out_nr;
	close c_countDepts;
	dbms_output.put_line('number of depts is:'||v_out_nr);
end;