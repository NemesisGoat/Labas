uses Crt;
const m = 2; n = 3;
var i, j: integer;
    s:real;
  a: array[1..m, 1..n] of real;
  x: array[1..n] of real;
  y: array[1..m] of real;
begin
  for i:=1 to m do
  for j:=1 to n do 
  begin
    GoToXY(2+3*j, i*2);
    readln(a[i, j]);
  end;
  for j:=1 to n do
  begin
    GoToXY(5, 4+j*2);
    readln(x[j]);
  end;
  for i:=1 to m do
  begin
    s:= 0;
    for j:= 1 to n do
    s:= s + a[i,j] * x[j];
    y[i]:=s;
  end;
  for i:=1 to m do
  begin
    GoToXY(3*i+2, 12);
    write(y[i]);
  end;
end.