Program Var13;
const
  n = 15;
var
  i : integer; // Счётчик
  A, Sum : real; // Вводимое значение, сумма
  Start : boolean; // Начало суммирования
  MyArray : array[1..n] of real;

BEGIN
Randomize;

Start := false;
Sum := 0;

// Заполнение массива
for i := 1 to n do
  begin
  MyArray[i] := (100 + Random(100))/100;
  //WriteLn(MyArray[i]);
  end;

// Ввод значения
Write('Введите значение А: '); // 2 символа после запятой
ReadLn(A);

// Решение задачи
for i := 1 to n do
  begin
  if Start = true then Sum := Sum + MyArray[i];
  if A = MyArray[i] then Start := true
  end;

// Вывод конечного значения
if Sum > 0 then
  WriteLn(Sum)
else 
  WriteLn(10);

End.