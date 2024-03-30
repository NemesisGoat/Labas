unit Stack;

interface

uses Crt;

type
  Ptr = ^Stac;
  Stac = record
  Inf: integer;
  Next: Ptr;
end;

var Top, Kon, Kon2,Top1,Top2: Ptr;
    value: integer;

procedure MakeStack(Var Top: Ptr);
procedure ViewStack(Var Top: Ptr);
procedure AddStack(Var Top: Ptr);
procedure MenuStack;

implementation

procedure MakeStack(Var Top: Ptr);
  var Ok: boolean;
  begin
    Ok := true;
    Top := nil;
    while Ok do
    begin
      writeln('Введите число');
      readln(value);
      if value = 999 then Ok:= false
      else
      begin
        New(Kon);
        Kon^.Next := Top;
        Kon^.Inf := Value;
        Top := Kon;
      end;
    end;
  end;

procedure Wait;
begin
  repeat until KeyPressed;
  while KeyPressed do ReadKey;
end;

procedure ViewStack(Var Top: Ptr);
begin
  Kon := Top;
  while Kon <> nil do
  begin
    writeln(Kon^.Inf:4);
    Kon := Kon^.Next;
  end;
  Wait;
end;

procedure AddStack(Var Top: Ptr);
var Ok: boolean;
begin
  Ok := true;
  while Ok do
  begin
    writeln('Добавьте число');
    readln(Value);
    if Value = 999 then Ok := false
    else
    begin
      New(Kon);
      Kon^.Next := Top;
      Kon^.Inf := value;
      Top := Kon;
    end;
  end;
end;

procedure ConStack(Var Top1, Top2: Ptr);
begin
  Kon2 := Top2;
  while Kon2^.Next  <> nil do
    Kon2 := Kon2^.Next;
  Kon2^.Next := Top1;
  Top1 := Top2;
end;

procedure MenuStack;
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
    1: MakeStack(Top1);
    2: ViewStack(Top1);
    3: AddStack(Top1);
    4: begin ClrScr; MakeStack(Top2); ConStack(Top1,Top2); ClrScr; ViewStack(Top1);  Wait end;
    0: Ok := False;
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