declare
	cursor c_empInDept is
	select * from scott.emp
	for update of sal;
begin
	for r_emp in c_empInDept loop
		if r_emp.sal < 5000 then
    		update scott.emp
    		set sal = sal * 1.1
    		where current of c_empInDept;
		end if;
    end loop;
end;