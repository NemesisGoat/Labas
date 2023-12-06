var k:integer;
  mu,q,p,s,t:real;
begin
  read(t,mu);
  p:=1;
  s:=1;
  q:=1;
  for k:=1 to 100 do
  begin
    p:= p*q*t/k;
    q:= q * mu;
    s:= s+p;
  end;
  write(s);
end.
