create or replace
	package pkg_global
	is
	procedure p_countryUSA_cd (i_CD VARCHAR2);
	function f_countryUSA_cd return VARCHAR2;

	procedure p_purchaseLimit_nr (i_nr NUMBER);
	function f_purchaseLimit_nr return NUMBER;
 	end;

create or replace
	package body pkg_global
	is
-- data variables
	gv_countryUSA_cd VARCHAR2(3) := 'USA'
	gv_purchaseLimit_nr NUMBER := 1000;

-- setter
procedure p_countryUSA_cd (i_cd NUMBER) is
begin
	gv_country_cd := i_cd;
end;

-- getter
function f_countryUSA_cd return VARCHAR2 is
begin
	return gv_countryUSA_cd;
end;

-- setter
procedure p_purchaseLimit_nr (i_nr NUMBER) is
begin
	gv_purchaseLimit_nr := i_nr;
end;

-- getter
funtion f_purchaseLimit_nr return NUMBER is
begin
	return gv_purchaseLimit_nr;
end;

end;