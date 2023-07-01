declare
	cursor c_employee is
	select emp_id,
		   name
	from c_employee
	where country_cd != pkg_global.f_countryUSA_cd;
begin
	for r_employee in c_employee loop
	-- process non-US employees
	end loop;
end;