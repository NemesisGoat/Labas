var s, p, q, t, m: real; k: integer;
begin
  readln(t); 
  readln(m);
  p:= 1;
  q:= 1;
  s:= t;
  for k:= 1 to 100 do
  begin
    p:= -p * (t*t) * q / ((2*k)*((2*k)-1));
    q:= q * (m**4);
    s:= s + p;
  end;
  writeln(s);
end.