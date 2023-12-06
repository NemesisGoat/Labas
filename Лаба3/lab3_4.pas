const eps=0.001;
var k:integer;
    p,s,t:real;
begin
  read(t);
  p:=1;
  s:=1;
  k:=0;
  while abs(p)>=eps do
  begin
    k:=k+1;
    p:=p*t/k;
    s:=s+p;
  end;
  write(s);
end.
  