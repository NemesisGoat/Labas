uses Crt;
Const n=10;
var i, j, m: integer;
  a: array[1..n, 1..n] of integer;
  
begin
  
  for i := 1 to n do
  for j := 1 to n do
   a[i,j]:=0;
   
  for j:=1 to n-1 do a[1,j]:=1;
  for j:=1 to n do a[n+1 - j,j]:=1;
  for j:=2 to n do a[n,j]:=1;
  
  for i:=1 to n do
  for j:=1 to n do 
  begin
    GoToXY(4*j, i*2+3);
    write(a[i,j]);
  end;
end.