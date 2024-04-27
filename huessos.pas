Type PtrVertic =^StackVertic;
     StackVertic = record;
     Number: integer;
     Name: string[20];
     Next: PtrVertic;
end;

PtrHoriz =^StackHoriz;
     StackHoriz = record;
     Number : integer;
     Group : string[10];
     Head: PtrVectic;
     Next: PtrHoriz;
end;
Var Horiz : PtrHoriz;
procedure MakeMenuHoriz;
Var Vertic : PtrVertic;
  Top: PtrHoriz;
  GroupValue: string[10];
  Ok: boolean;
  k: integer;
begin
    Ok:= True; Horiz:= N:1;k=0;
    while Ok to
    begin
      writeln('Введите номер группы');
      readln(GroupValue); k:=k+1;
      if(GroupValue='n') or
      (GroupValue='N')
      then Ok:=False;
      else
      begin
        New(Top)
        Top^.Next:Horiz;
        Top^.Number:=k;
        Top^.Group:=GroupValue;
        MakeMenuvertic(Vertic);
        Top^.Head:=Vertic;
        Horiz:=Top;
      end;
    end;
end;


procedure MakeMenuVertic(Var Vertic:PtrVertic);
  Top:PtrVertic;
  Ok:boolean;
  NAmeValue:string[20];
  k:integer;
begin
  Ok:=true;
  Vertic:=Nil;
  k:=0;
  While Ok do
  begin
    writeln('Введите фамилию');
    readln(NameValue='n') or 
    (NameValue='N') or
    (NameValue='т') or
    (NameValue='Т') then Ok:= false
    else
    begin
      New(Top);
      Top^.Next:=Vertic;
      Top^.Number:= k;
      Top^.Name:= NameValue;
      Vertic:= Top;
    end;
  end;
end;

procedure ChoiceMenuHoriz;
var Top: PtrHoriz;
    n, k: integer;
begin
  Top:= Horiz;
  n:= 0;
  while Top <> Nil do
  begin
    n:= n+1;
    write(n:5, '-', Top^.Group:6);
    Top:=Top^.Next;
  end;
  GoToXY(30, 20);
  writeln('Выберите пункт меню');
  GoToXY(30, 23);
  read(n);
  Top:=Horiz;
  k:=Horiz^.Number + 1;
  while (Top^.Number + n <> k) do
  Top:=Top^.Next;
  PutMenuVertic(Top^.Head, n);
end;

procedure PutMenuVertic(Vertic: PtrVertic; n: integer);
var Top: PtrVertic;
    PozX, PozY: integer;
begin
  Top:=Vertic;
  PozY:=2;
  PozX:=12*n - 7;
  while Top <> Nil do
  begin
    PozY:= PozY + 1;
    GoToXY(PozX, PozY);
    write (Top^.Name);
    Top:= Top^.Next;
  end;
end;

