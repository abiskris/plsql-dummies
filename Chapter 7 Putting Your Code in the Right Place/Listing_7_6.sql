alter table emp add note_tx varchar2(2000)
/
create or replace trigger emp_aiu
	after insert or update of comm, sal
	on emp
	referencing new as new old as old
	for each row
begin
	update emp
	set note_tx = note_tx||chr(10)||'Update of '||:new.empNo
	where empNo = :new.mgr;
end;