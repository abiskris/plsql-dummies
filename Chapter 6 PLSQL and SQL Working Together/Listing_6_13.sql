declare
	cursor c_emp(cin_deptNo number) is
		select eName
		from scott.emp
		where deptNo = cin_deptNo;
	v_eName varchar2(256);
begin
	if not c_emp%isopen then
		dbms_output.put_line('Cursor is closed');
	end if;
	open c_emp(10);

	if c_emp%isopen then
		dbms_output.put_line('Cursor is opened');
	end if;

	loop
        fetch c_emp into v_eName;
		if c_emp%notfound then
            dbms_output.put_line('No rows to fetch');
			exit;
		end if;
		dbms_output.put_line('Processed: '||c_emp%rowcount||' and eName is :'||v_eName);
	end loop;

	close c_emp;

	if not c_emp%isopen then
		dbms_output.put_line('Cursor is closed');
	end if;
end;