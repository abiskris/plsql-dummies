declare
	cursor c_emp is
		select *
		from scott.emp;
	r_emp c_emp%rowtype;
begin
	open c_emp;
	loop
		fetch c_emp into r_emp;
        exit when c_emp%notfound;
		dbms_output.put_line('The name is :'||r_emp.ename);
    end loop;
	close c_emp;
end;