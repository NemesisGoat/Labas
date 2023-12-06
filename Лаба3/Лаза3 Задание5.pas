const e = 0.001;
var s, p, t: real; k: integer;
begin
  readln(t);
  p:= 1;
  s:= 1;
  k:= 1;
  while abs(p) >= e do
  begin
    p:= -p * t*t / ((2*k) * ((2*k) - 1));
    k:= k + 1;
    s:= s + p;
  end;
  writeln(s);
  write(cos(t))
end.