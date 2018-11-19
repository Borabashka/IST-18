program Var13;
Const
  n = 10; // строки
  m = 10; // столбцы
Var
  Matrice : array[1..n, 1..m] of integer;
  Res : array[1..m] of integer;
  i, j, max : integer;

Begin
Randomize;

// Решение
for i := 1 to m do // перебор столбцов
  begin
    max := -999999;
    
    for j := 1 to n do //  перебор строк
      begin
        Matrice[j, i] := Random(-30, 100);
        if (Matrice[j, i] > max) then max := Matrice[j, i];
      end;
      
    Res[i] := max; // занесение максимального элемента в массив      
  end;

// Вывод результата
for i := 1 to n do // перебор строк
  begin
    for j := 1 to m do //  перебор столбцов
      begin
        if (j = m) then
          WriteLn(Matrice[i, j]:5)
        else
          Write(Matrice[i, j]:5)
      end;      
  end;

Writeln;

for i := 1 to m do
  Write(Res[i]:5)

End.