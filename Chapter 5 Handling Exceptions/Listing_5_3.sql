create or replace function f_get_speed_nr(i_distance_nr number,i_timesec_nr number) 
return number 
is 
v_out_nr number; 
begin 
v_out_nr := i_distance_nr/i_timesec_nr; 
return v_out_nr; 
exception 
when zero_divide then 
dbms_output.put_line('Exception catched!'); 
return null; 
end;