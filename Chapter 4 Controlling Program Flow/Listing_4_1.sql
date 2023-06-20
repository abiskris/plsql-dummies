create or replace function f_isSunday_tx(in_dt date)
return varchar2
is
	v_out_tx varchar2(10);
begin
	if to_char(in_dt,'d') = 1 then
    	v_out_tx := 'Y';
    	dbms_output.put_line('Is a Sunday');
	end if;
	return v_out_tx;
end;