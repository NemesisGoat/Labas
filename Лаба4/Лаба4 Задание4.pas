uses Crt;
Const n=5;
var i, j: integer; s, z: real;
    a,b,c: array [1..n,1..n]of real;
begin
  z:= 0;
  for i:=1 to n do
  for j:=1 to n do
  begin
    GoToXY(4*j,i+3);
    readln (a[i,j]);
  end;
  for i:=1 to n do
  begin
    s:= 0;
    for j:= 1 to n do s:= s + abs(a[i,j]);
    if s > z then z:= s;
  end;   
  GoToXY(4*j,i+7);
  writeln(z);
end.