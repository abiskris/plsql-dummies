create or replace trigger emp_biu
	before insert or update
	on emp
	referencing old as old new as new
	for each row
begin	
	if :new.job = 'MANAGER'
	and nvl(:new.sal,0)<nvl(:new.comm,0) then
		raise_application_error(-20999,'Managers should not have commisioned higher than salary!');
	end if;
end;