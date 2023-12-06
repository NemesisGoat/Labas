Uses Crt;
Const n = 10;
Var m,k:integer; glass:real;
a:array[1..n] of real;
begin
for k:=1 to n do 
begin
  GoToXY(3*k+2, 4);
  readln(a[k]);
end;
m:=trunc(n/2);
for k:=1 to m do
 begin
    glass:=a[k];
    a[k]:=a[n+1-k];
    a[n+1-k]:=glass;
  end;
  for k:=1 to n do
  begin
    GoToXY(3*k+2, 7);
    write(a[k]);
  end;
end.