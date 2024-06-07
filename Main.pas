program Main;
uses Crt, Compl, CMatr, Vect, CVect, Favorites, Queue, Stack, PiSiun;
procedure Wait;
begin
  repeat until KeyPressed;
  while KeyPressed do ReadKey;
end;
var Ok: boolean; Mode: integer;
begin
  Ok:= true;
  ClrScr;
  while Ok do
  begin
    ClrScr;
    writeln('Выберите пункт');
    writeln('1. Комплексные числа');
    writeln('2. Комплексные матрицы');
    writeln('3. Векторы');
    writeln('4. Копмлексные векторы');
    writeln('5. Разное');
    writeln('6. Стеки');
    writeln('7. Очереди');
    writeln('8. Список групп');
    writeln('0. Выход');
    goToXY(40, 23);
    read(Mode);
    GoToXY(40, 23);
    ClearLine;
    case Mode of
      1: MenuCompl;
      2: MenuCMatr;
      3: MenuVect;
      4: MenuCVect;
      5: MenuFavorites;
      6: MenuStack;
      7: MenuQueue;
      8: MenuPiSiun;
      0: Ok:= False
    else
    begin
      GoToXY(30, 24);
      write('Ошибка! Повторите ввод!');
      Wait;
    end;
  end;
end;
end.