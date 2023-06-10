create or replace procedure p_hello(i_tx varchar2)
is
	v_string_tx varchar2(256) := 'Hello, '||i_tx||'!';
begin
	dbms_output.put_line(v_string_tx);
end;
/
begin
	p_hello('Everybody');
end;
/