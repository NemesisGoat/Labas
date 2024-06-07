unit PiSiun;

Interface

uses Crt;

Type PtrVertic =^StackVertic;
     StackVertic = record
     Number: integer;
     Name: string[20];
     Next: PtrVertic;
end;

PtrHoriz =^StackHoriz;
     StackHoriz = record
     Number : integer;
     Group : string[10];
     Head: PtrVertic;
     Next: PtrHoriz;
end;
Var Horiz : PtrHoriz;

procedure MakeMenuHoriz;
procedure MakeMenuVertic(Var Vertic:PtrVertic);
procedure ChoiceMenuHoriz;
procedure PutMenuVertic(Vertic: PtrVertic; n: integer);
procedure ReverseStackHoriz(Var Top: PtrHoriz);
procedure MenuPiSiun;

Implementation

procedure Wait;
begin
  repeat until KeyPressed;
  while KeyPressed do ReadKey;
end;

procedure ReverseStackHoriz(Var Top: PtrHoriz);  // Переворот горизонтального меню
var tmp, Kon: PtrHoriz;
begin
  Kon := Top;
  Top := Nil;
  while Kon <> Nil do
  begin
    New(Top);
    Top^.Next := tmp;
    Top^.Group := Kon^.Group;
    Top^.Number := Kon^.Number;
    Top^.Head := Kon^.Head;
    Kon := Kon^.Next;
    tmp := Top
  end;
end;

procedure MakeMenuHoriz;
Var Vertic : PtrVertic;
  Top: PtrHoriz;
  GroupValue: string[10];
  Ok: boolean;
  k: integer;
begin
    Ok:= True; Horiz:= Nil;k:=0;
    while Ok do
    begin
      writeln('Введите номер группы');
      readln(GroupValue); k:=k+1;
      if(GroupValue='n') or
      (GroupValue='N')
      then Ok:=False
      else
      begin
        New(Top);
        Top^.Next:=Horiz;
        Top^.Number:=k;
        Top^.Group:=GroupValue;
        MakeMenuVertic(Vertic);
        Top^.Head:=Vertic;
        Horiz:=Top;
      end;
    end;
    //ReverseStackHoriz(Horiz);
end;

procedure MakeMenuVertic(Var Vertic:PtrVertic);
  var Top:PtrVertic;
  Ok:boolean;
  NameValue:string[20];
  k:integer;
begin
  Ok:=true;
  Vertic:=Nil;
  k:=0;
  While Ok do
  begin
    writeln('Введите фамилию');
    readln(NameValue);
    if (NameValue = 'n') or
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
  writeln(Top^.Number);  
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
  Wait;
end;

procedure MenuPiSiun;
var Mode: integer; Ok: boolean;
begin
  Ok := True;
  while Ok do
  begin
    ClrScr;
    writeln(' Укажите операцию:');
    writeln(' 1: Создать стек');
    writeln(' 2: Просмотреть стек');
    writeln(' 3: Добавить элемент в стек');
    writeln(' 4: Соединить стеки');
    writeln(' 0: Выйти в предыдущее меню');
    GoToXY(40, 23);
    readln(Mode);
    GoToXY(40, 23);
    writeln(' ');
    ClrScr;
    
    case Mode of
    1: MakeMenuHoriz;
    2: ChoiceMenuHoriz;
//    3: AddStack(Top1);
//    4: begin ClrScr; MakeStack(Top2); ConStack(Top1,Top2); ClrScr; ViewStack(Top1);  Wait end;
//    0: Ok := False;
    else
    begin
    GoToXY(30, 21);
    writeln('Ошибка! Повторите ввод');
    delay(4000);
    end;
    end;
  end;
end;

end.

