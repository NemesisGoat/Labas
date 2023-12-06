Uses Crt;
Const n = 10;
Var i,k:integer; x:real;
a:array[1..n] of real;
begin 
for i:=1 to n do 
begin
  GoToXY(3*i+2, 4);
  readln(a[i]);
end;
GoToXY(5,6);
read(k);
GoToXY(5,8);
read(x);

for i:=2 to k do
    a[i-1]:=a[i];
    a[k]:=x;
for i:= 1 to n do
  begin  
    GoToXY(2+3*i,13);
    write(a[i])
  end;
end.
