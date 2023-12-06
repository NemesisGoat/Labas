uses Crt;
Const n=5;
var i, k: integer; s, z: real;
    a: array [1..n] of real;
begin
  for i:=1 to n do
  begin
    GoToXY(i*5+2, 3);
    readln (a[i]);
  end;
  z:= a[1];
  k:= 1;
  for i:=2 to n do
    if a[i] < z then
      begin
      z:= a[i];
      k:= i
      end;
  GoToXY(2, 5);
  writeln('    ', z, '    ', k);
end.