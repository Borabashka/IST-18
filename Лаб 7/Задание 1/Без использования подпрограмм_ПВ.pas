{
Решение задачи без использования подпрограмм

Вариант 4

Задача:
Вычислить площадь четырехугольника ABCD,
зная длины сторон четырех-угольника и длину
одной из его диагоналей,например BD.  
Примечание: по формуле Герона найти площади 
двух треугольников и сло-жить их. 
}

Var 
  Side1, Side2, Side3, Side4, Diagonal, p, S : real; 

Begin
// Ввод данных
WriteLn('Введите стороны четырёхугольника: ');
ReadLn(Side1, Side2, Side3, Side4);

WriteLn('Введите одну из диагоналей: ');
ReadLn(Diagonal);

// Расчёт
p := (Side1 + Side2 + Diagonal)/2;
S := sqrt(p*(p-Side1)*(p-Side2)*(p-Diagonal));

p := (Side3 + Side4 + Diagonal)/2;
S := S + sqrt(p*(p-Side3)*(p-Side4)*(p-Diagonal));

// Вывод
WriteLn(S:1:2);

End.
