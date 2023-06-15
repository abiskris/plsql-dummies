declare
	v_tx varchar2(50) := 'I just printed my <in> line!';
procedure p_print(i_string_tx in varchar2, i_replace_tx in varchar2 := 'new')
is
begin
	dbms_output.put_line(replace(i_string_tx,'<in>',i_replace_tx));
end;
begin
	p_print(v_tx,'first');
    p_print(v_tx,'second');
    p_print(v_tx);
end;