var x,y: real; n: integer;
begin
  read(x, y);
  n:=0;
  if sqr(x) + sqr(y) <= 1 then 
  if y >=0 then n:=2 
  else n:=1;
  write(n);
end.
 