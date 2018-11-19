Program Var_13;
const
  n = 10;
var
  MyArray : array[1..n] of integer;
  i, f, x, Chaeck : integer;
  

Begin
Randomize;

// Заполнение массива
for i := 1 to n do
  begin
  MyArray[i] := 10 + Random(90);
  Write(MyArray[i] + ' ')
  end;
WriteLn;

// Сортировка
for i := 2 to n do
  begin
  if MyArray[i] < MyArray[i-1] then
    begin
    f := i;
    Chaeck := 1;
    // Проход от найденного элемента до его места в массиве
    while (f > 1) and (Chaeck = 1) do 
      begin
      if MyArray[f] < MyArray[f-1] then
        // Перемещение элементов
        begin 
        x := MyArray[f];
        MyArray[f] := MyArray[f-1];
        MyArray[f-1] := x;
        f := f-1;
        end
      else // Выход из цикла, когда достигнуто место в массиве
        Chaeck := 0;
      end;
    end;
  end;

// Вывод массива
for i := 1 to n do
  Write(MyArray[i] + ' ');

End.