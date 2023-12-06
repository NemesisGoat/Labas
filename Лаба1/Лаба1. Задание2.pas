var x, y: real;
begin
  read(x);
  if x<= -0.5 then y:= 1/x
  else
    if x>= 0.5 then y:= 1/x
  else y:= x*4;
  
  write(y);
  
end.