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
m:=trunc(n/3);
for k:=1 to m do
 begin
    glass:=a[3*k];
    a[3*k]:=a[3*k-1];
    a[3*k-1]:=a[3*k-2];
    a[3*k-2]:=glass
  end;
  for k:=1 to n do 
  begin
    GoToXY(3*k+2, 7);
    write(a[k]);
  end;
end.