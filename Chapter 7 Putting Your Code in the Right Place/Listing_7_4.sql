create or replace trigger emp_bid
	before insert or delete
	on emp
	referencing new as new old as old
begin
	if to_char(sysdate,'Dy') in ('Sat','Sun') then
		raise_application_error(-20999,'No create or delete employees on weekend!');
	end if;
end;