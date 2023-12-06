Uses Crt;
Const n = 10;
Var i,k:integer; x:real;
a:array[1..n] of real;
begin
for i:=1 to n do 
  begin
  GoToXY((3*i+3),2);
  readln(a[i]);
  end;
x:=a[1];k:=1;
for i:=2 to n do
  if a[i]<x then
    begin
    x:=a[i];
    k:=i;
    end;
for i:=k downto 2 do a[i]:=a[i-1];
  a[1]:=x;
for i:= 1 to n do
begin
   GoToXY(3*i+2, 7);
   write(a[i]);
end;
end.

