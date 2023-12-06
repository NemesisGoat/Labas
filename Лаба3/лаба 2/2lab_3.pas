var s:real;
    n:integer;
begin
  for n:=1 to 33 do
    s:= s+1/(3*n-2)/(3*n+1);
    write(s)
end.