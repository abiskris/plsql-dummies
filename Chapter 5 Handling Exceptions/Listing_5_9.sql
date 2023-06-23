create or replace function f_makeaddress_tx(i_address_tx varchar2,i_city_tx varchar2,i_state_tx varchar2,i_zip_tx varchar2)
return varchar2
is
e_badzip exception;
pragma exception_init(e_badzip,-20998);
v_out_tx varchar2(256);
begin
	p_validatezip(i_zip_tx);
	v_out_tx := i_address_tx||','||i_city_tx||','||i_state_tx||','||i_zip_tx;
return v_out_tx;
exception
	when e_badzip then
		return i_zip_tx||' : Invalid zip code.';
end;
/
create or replace procedure p_validatezip(i_zipcode_tx varchar2)
is
	e_tooshort exception;
	e_toolong exception;
	e_badzip exception;
	pragma exception_init(e_badzip,-20998);
	v_tempzip_nr number;
begin
	if length(i_zipcode_tx)<5 then
		raise e_tooshort;
	elsif length(i_zipcode_tx)>6 then
		raise e_toolong;
	end if;
	v_tempzip_nr := to_number(i_zipcode_tx);
exception
	when e_toolong then
		dbms_output.put_line('Too long');
		raise e_badzip;
	when e_tooshort then
		dbms_output.put_line('Too short');
		raise e_badzip;		
	when value_error then
		dbms_output.put_line(sqlerrm);
	raise;
end;
/
declare
	v_out_tx varchar2(2000);
begin
	v_out_tx := f_makeaddress_tx('123 main st','redwood city','california','94016a');
	dbms_output.put_line(v_out_tx);
end;
/

