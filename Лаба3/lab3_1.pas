var k,m:integer;
  t,s,p:real;
begin
  read(t);
  p:=1;
  s:=1;
  for k:=1 to 100 do
  begin
    p:= -p * t * t / (2*k -1)/(2*k);
    s:= s+p
  end;
  writeln(s);
  writeln(cos(t));
end.