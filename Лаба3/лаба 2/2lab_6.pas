var n:integer;
    p,s:real;
begin
  s:=0;p:=1;
  for n:=1 to 50 do
  begin
    p:= p*(n*2-1);
    s:=s+(n*2 / p);
  end;
  write(s)
end.