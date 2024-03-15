unit Stack;

interface

uses Crt;

type
  Ptr = ^Stac;
  Stac = record
  Inf: integer;
  Next: Ptr;
end;

var Top, Kon: Ptr;
    value: integer;

procedure MakeStack;
procedure ViewStack;
procedure AddStack;
procedure MenuStack;

implementation

procedure MakeStack;
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

procedure ViewStack;
begin
  Kon := Top;
  while Kon <> nil do
  begin
    writeln(Kon^.Inf:4);
    Kon := Kon^.Next;
  end;
  Wait;
end;

procedure AddStack;
var Ok: boolean;
begin
  Ok := true;
  Top := nil;
  while Ok do
  begin
    writeln('Добавьте число');
    readln(Value);
    if Value = 999 then Ok := false;
  end;
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
    writeln(' 0: Выйти в предыдущее меню');
    GoToXY(40, 23);
    readln(Mode);
    GoToXY(40, 23);
    writeln(' ');
    ClrScr;
    
    case Mode of
    1: MakeStack;
    2: ViewStack;
    3: AddStack;
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