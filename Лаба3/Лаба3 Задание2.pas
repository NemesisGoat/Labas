var s, p, q, t, m: real; k: integer;
begin
  readln(t); 
  readln(m);
  p:= 1;
  q:= 1;
  s:= 0;
  for k:= 1 to 100 do
  begin
    p:= p * t * q / k;
    q:= q * m;
    s:= s + p;
  end;
  write(s);
end.