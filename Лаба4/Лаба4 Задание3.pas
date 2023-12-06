uses Crt;
Const n=5;
var i,j, k: integer; s: real;
    a,b,c: array [1..n,1..n]of real;
begin
  for i:=1 to n do
  for j:=1 to n do
  begin
    GoToXY(4*j,i+3);
    readln (a[i,j]);
  end;
  for i:=1 to n do
  for j:=1 to n do
  begin
    GoToXY(20 + 4*j,i+3);
    readln (b[i,j]);
  end;
  for i:=1 to n do
  for j:=1 to n do
  begin
    s:= 0;
    for k:= 1 to n do
      s:= s + a[i, k] * b[k, j];
    c[i, j]:= s;
  end;
  for i:=1 to n do
  for j:=1 to n do
  begin  
    GoToXY(4*j,i+7);
    writeln(c[i, j]);
  end;
end.