uses Crt;
Const n=10;
var i, j: integer;
  a: array[1..n, 1..n] of integer;
  
begin
  begin
  for i := 10 downto 1 do
  for j := 10 downto 1 do
   
  if (i = j ) then a[i,j] := 11-i
  else a[i, j] := 0;
  end;
  
  for i:=1 to n do
  for j:=1 to n do 
  begin
    GoToXY(4*j, i*2+3);
    write(a[i,j]);
  end;
end.