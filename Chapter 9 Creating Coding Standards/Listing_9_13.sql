select empMgr.eName mgrName,
	emp.eName empName
from
	emp empMgr
join emp
	on empMgr.empNo = emp.empNo
where empMgr.deptNo in 
	(select dept_in.deptNo from
		emp emp_in
		join dept dept_in
		on emp_in.deptNo = dept_in.deptNo
		group by dept_in.deptNo
		having count(*) > 5)