create or replace function f_getdatetype_tx(in_dt date)
return varchar2
is
	v_out_tx varchar2(10);
begin
	case to_char(in_dt,'d')
    	when 1 then
    		v_out_tx := 'Sunday';
		when 7 then
            v_out_tx := 'Saturday';
		else
            v_out_tx := 'Weekday';
	end case;
end;