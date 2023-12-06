const e = 0.001;
var s, p, t, zn: real; k: integer;
begin
  readln(t);
  p:= 1;
  s:= t;
  k:= 1;
  while abs(p) >= e do
  begin
    zn:= ((2*k) + 1) * (2 * k);
    p:=  -p * t / zn;
    k:= k + 1;
    s:= s + p;
  end;
  writeln(s);
  write(sin(t))
end.