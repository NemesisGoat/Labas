Uses Crt;
Const n = 10;
Var i,m:integer;
a,b:array[1..n] of real;
begin
for i:=1 to n do 
  begin
  GoToXY(4*i+2,2);
  readln(a[i]);
  end;
m:=0;
for i:=1 to n do
  if a[i]<0 then
  begin
    m:=m+1;
    b[m]:=a[i];
    end;
for i:=1 to n do 
  if a[i] >= 0 then 
    begin
    m:=m+1;
    b[m]:=a[i];
    end;
for i:= 1 to n do
begin
   GoToXY(4*i+2, 7);
   write(b[i]);
end;
end.

