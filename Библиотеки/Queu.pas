Unit Queu;
  
  Interface
uses crt;
Type PtrQ=^Que;
  Que = record
    Inf: integer;
    Next: PtrQ;
  end;
var
  left, right, top: PtrQ;
  value: integer;
procedure MakeQueu(var left, right:PtrQ);
procedure ViewQueu(var left:PtrQ);
procedure AddQueu(var right:PtrQ);
procedure DeleteLastElement(var left, right:PtrQ);
procedure DeleteFirstElement(var left:PtrQ);
procedure ReverseQueu(var left: PtrQ);
procedure wait;
procedure MenuQueu;

  Implementation

procedure MakeQueu(var left, right:PtrQ);
var
  ok: boolean;
begin
  ok := True;
  New(top);
  writeln('Введите число: ');
  readln(value);
  if value = 999 then
  begin
    ok := False;
    top^.Next := Nil;
  end;
  top^.Inf := value;
  right := top;
  left := top;
  while ok do
  begin
    writeln('Введите число: ');
    readln(value);
    if value = 999 then
    begin
      ok := False;
      top^.Next := Nil;
    end
    else
    begin
      New(top);
      right^.Next := top;
      top^.Inf := value;
      right := top;
    end;
  end;
end;

procedure ViewQueu(var left:PtrQ);
  var tempNode: PtrQ;
  begin
    tempNode := left;
    while tempNode <> Nil do
    begin
      writeln(tempNode^.Inf);
      tempNode := tempNode^.Next;
    end;
  end;

procedure AddQueu(var right:PtrQ);
  var Ok: boolean;
  begin
    Ok:= True;
    while Ok do
    begin
      writeln('Добавьте число: ');
      readln(value);
      if value = 999 then 
        begin
        Ok:= False;
        top^.Next := nil;
        end
      else
      begin
        New(top);
        right^.Next:= top;
        top^.Inf:= value;
        right:= top;
      end;
    end;
  end;
  
procedure DeleteLastElement(var left, right:PtrQ);
  var tempNode, prevNode: PtrQ;
  begin
    tempNode := left;
    prevNode := nil;
    while tempNode^.Next <> nil do
    begin
      prevNode := tempNode;
      tempNode := tempNode^.Next;
    end;
    if prevNode = nil then
    begin
      Dispose(tempNode);
      left := nil;
      right := nil;
    end
    else
    begin
      prevNode^.Next := nil;
      Dispose(tempNode);
      right := prevNode;
    end;
  end;
  
procedure DeleteFirstElement(var left:PtrQ);
  var tempNode: PtrQ;
  begin
    tempNode := left;
    left := left^.Next; 
    Dispose(tempNode); 
  end;
  
procedure ReverseQueu(var left: PtrQ);
  var reversedQueu, tempNode: PtrQ;
  begin
    reversedQueu := nil;
    while left <> nil do
    begin
      tempNode := left;
      left := left^.Next;
      tempNode^.Next := reversedQueu;
      reversedQueu := tempNode;
    end;
    left := reversedQueu;
  end;

procedure wait;
  begin
    repeat until KeyPressed;
    while KeyPressed do
      ReadKey;
  end;

procedure MenuQueu;
var
  ok: boolean;
  Mode: integer;
begin
  Ok := true;
  while Ok = true do
  begin
    ClrScr;
    writeln('Выберите пункт:');
    writeln('1: Создание очереди');
    writeln('2: Просмотр очереди');
    writeln('3: Добавление чисел в очередь');
    writeln('4: Удаление последнего элемента очереди');
    writeln('5: Удаление первого элемента очереди');
    writeln('6: Перевернуть очередь');
    writeln('999: Прервать действие');
    writeln('0: Назад.');

    GoToXY(40, 23); read(Mode);
    GoToXY(40, 23); ClearLine;

    case Mode of
      1:
      begin
        ClrScr;
        writeln('Создание очереди');
        MakeQueu(left, right);
      end;
      2:
      begin
        ClrScr;
        writeln('Ваша очередь: ');
        ViewQueu(left);
        wait;
      end;
      3:
      begin
        ClrScr;
        writeln('Добавьте еще число: ');
        AddQueu(right);
      end;
      4:
      begin
        ClrScr;
        DeleteLastElement(left, right);
        writeln('Последний элемент удалён!');
        wait;
      end;
      5:
      begin
        ClrScr;
        DeleteFirstElement(left);
        writeln('Первый элемент удалён!');
        wait;
      end;
      6: begin
          ClrScr;
          ReverseQueu(left);
          writeln('Очередь была перевернута!');
          wait;
        end;
      0:
      begin
        ClrScr;
        ok := False;
      end;
    else
      begin
        GoToXY(30, 24);
        writeln('Ошибка! Повторите ввод:');
      end;
    end;
  end;
end;
end.