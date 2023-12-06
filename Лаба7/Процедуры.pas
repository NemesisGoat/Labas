const n = 10;
Type Complex = record 
               Re, Im: real;
               end;
     VectorC = array[1..n] of Complex;
     
procedure InputZ(var z:Complex);
begin
  read(z.Re); 
  read(z.Im);
end;

procedure OutputZ(var z:Complex);
begin
  write(z.Re);
  if z.Im >= 0 then
    write('-')
  else
  begin 
    write('+');
    z.Im:= -z.Im;
  end;
  write(z.Im + 'i');
end;

procedure Add(u, v: Complex; var w: Complex);
begin
  w.Re:= u.Re + v.Re;
  w.Im:= u.Im + v.Im;
end;

procedure Mult(u, v: Complex; var w: Complex);
begin
  w.Re:= u.Re * v.Re - u.Im * v.Im;
  w.Im:= u.Re * v.Im + v.Re * u.Im;
end;

procedure Inv(z:Complex; var w:Complex);
var q:real;
begin
   q:=sqr(z.Re)+sqr(z.Im);
   w.Re:=z.Re/q;
   w.Im:=-z.Im/q;
end;

procedure DivZ(u,v:Complex; var w:Complex);
var z:Complex;
begin
  Inv(v,z); Mult(u,z,w);
end;

procedure Prod(a:real; z:Complex; var w:Complex);
begin
  w.Re:= a * z.Re;
  w.Im:= a * z.Im;
end;

function Module(z:Complex): real;
begin
  Module:= sqrt(sqr(z.Re) + sqr(z.Im));
end;

procedure Zero(var z:Complex);
begin
  z.Re:= 0;
  z.Im:= 0;
end;

procedure One(var z:Complex);
begin
  z.Re:= 1;
  z.Im:= 0;
end;

procedure expC(z:Complex; var S:Complex);
const eps = 0.001;
var k: integer; P:Complex;
begin
  One(P);
  One(S);
  k:= 0;
  while Module(p) >= eps do
  begin
    k:=k+1;
    Mult(p, z, p);
    Prod(1/k, p, p);
    Add(s, p, s);
  end;
end;


var z, v, p:Complex; a:real;
begin
  InputZ(Z);
  InputZ(V);
  write('Add: ');
  Add(z, v, p);
  OutputZ(p);
  writeln('');
  write('Mult: ');
  Mult(z, v, p);
  OutputZ(p);
  writeln('');
  write('Inv: ');
  Inv(z, p);
  OutputZ(p);
  writeln('');
  write('DivZ: ');
  DivZ(z, v, p);
  OutputZ(p);
  writeln('');
  read(a);
  write('Prod: ');
  Prod(a, z, p);
  OutputZ(p);
  writeln('');
  write('Module: ');
  write(Module(z));
  write(p);
  writeln('');
  write('Zero: ');
  Zero(p);
  OutputZ(p);
  writeln('');
  write('One: ');
  One(p);
  OutputZ(p);
end.

  




