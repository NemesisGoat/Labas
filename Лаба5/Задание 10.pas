uses Crt;
Const n=10;
var i, j, m: integer;
  a: array[1..n, 1..n] of integer;
  
begin
  
  for i := 1 to n do
  for j := 1 to n do
   a[i,j]:=1;
   
     
  for i:= 1 to n do
  for j:= i to n do a[i, j] :=0;
  
  for i:=1 to n do
  for j:=1 to n do
    if (i = j ) then a[i, j] := 1;
  
  for i:=1 to n do
  for j:=1 to n do 
  begin
    GoToXY(4*j, i*2+3);
    write(a[j,i]);
  end;
end.