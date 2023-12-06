uses Crt;
Const n=3; m=4;
var i, j : integer;
  x, z:real;
  a: array[1..m, 1..n] of real;
  
begin
  
  for i:=1 to m do
  for j:=1 to n do 
  begin
    GoToXY(4*j, i*2+3);
    read(a[i,j]);
  end;
   
   x:=a[1,1];
   for j:=2 to n do
   if a[1,j] > x then x:=a[1,j];
   for i:=2 to m do
   begin
     z:=a[i,1];
     for j:=2 to n do
       if a[i,j] > z then z:=a[i,j];
       if z < x then x:=z
   end;
  GoToXY(4*j, i*2+7);
  writeln(x);
end.