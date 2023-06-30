create or replace function
	f_currAddr_tx (i_emp_id NUMBER)
	return VARCHAR2 is
cursor c_currAddr (ci_emp_id NUMBER) is
	select addr.addr_tx
	from addr,emp
	where addr.emp_id = emp.emp_id
	and emp.emp_id = ci_emp_id;
	v_currAddr_rec c_currAddr%ROWTYPE;

	v_addr_tx addr.addr_tx%TYPE;

	-- Local function begins --
	function f_empName_tx (fi_emp_id NUMBER)
		return VARCHAR2 is
	v_out_tx VARCHAR2(2000);
	begin
		select ename
		into v_out_tx
		from emp
	where emp_id = fi_emp_id;
	return v_out_tx;
	end  f_empName_tx;
	-- Local function ends --

begin
	open c_currAddr(i_emp_id);
	fetch c_currAddr into v_currAddr_rec;
	close c_currAddr;
	v_addr_tx := r_currAddr.addr_tx;
	return v_addr_tx;
end f_currAddr_tx;