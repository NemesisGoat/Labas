uses Crt;
const n = 3;
var i: integer; a, b, c: array[1..n] of real;
begin
  for i:= 1 to n do
  begin
    GoToXY(4*i+5, 3);
    readln(a[i])
  end;
  for i:= 1 to n do
  begin
    GoToXY(4*i + 5, 5);
    readln(b[i]);
  end;
  for i:=1 to n do c[i]:= a[i] + b[i];
  for i:= 1 to n do
  begin
    GoToXY(4*i + 3, 10);
    writeln(c[i]:3:0);
  end;
end.