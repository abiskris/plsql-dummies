declare
-- Routine to process payroll.
-- Author				Date			What
-- abishek@example.com	7/3/2023 		Initial Coding
cursor c_emp is -- main emp cursor
	select
		eName,
		sal,
		deptNo
	from emp;
v_dName_tx dept.dName%TYPE;
function f_dName_tx (fi_deptNo NUMBER)
	return VARCHAR2 is
-- Get dName for each emp
-- No exception handling needed
	--temp output variable
	v_out_tx dept.dName%TYPE;
begin -- f_dName_tx
	-- prevents no data found exception
	if fi_deptNo is not null then
		select dName
			into v_out_tx
			from dept
		where deptNo = fi_deptNo;
	end if;
	return v_out_tx; -- return null if no deptNo
end f_dName_tx;

begin --main
	for r_emp in c_emp loop
		v_dName_tx := f_dName_tx(r_emp.deptNo);
		--
		-- lots of code here to process payroll
		-- 
	end loop; -- main emp loop
end; -- main