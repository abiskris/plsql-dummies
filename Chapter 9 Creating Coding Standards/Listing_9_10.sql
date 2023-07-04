create or replace
package pkg_subtype is
	-- Employee First + Last + 1
	subtype fullName_sty is VARCHAR2(61);
end pkg_subtype;

declare
	v_fullName_sty pkg_subtype.fullName_sty;
begin
	v_fullName_sty := 'Margaret Chan';
end;