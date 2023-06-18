create or replace function f_factorial_nr(i_nr number)
return number
is
begin
	if i_nr = 1
	then
		return 1;
	else
		return i_nr*f_factorial_nr(i_nr-1);
	end if;
end;