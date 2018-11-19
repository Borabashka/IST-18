{
Решение задачи с использованием встроеннах подпрограмм

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

Procedure AnswerByProcedure(Side1:real; Side2:real; Diagonal:real; var S:real);
  Begin
  Var
    p : real;
    
  p := (Side1 + Side2 + Diagonal)/2;
  S := S + sqrt(p*(p-Side1)*(p-Side2)*(p-Diagonal));
  End;


Function AnswerByFunction(Side1:real; Side2:real; Diagonal:real):real;
  Begin
  Var
    p : real;
    
  p := (Side1 + Side2 + Diagonal)/2;
  AnswerByFunction := sqrt(p*(p-Side1)*(p-Side2)*(p-Diagonal));
  End;



Begin
// Ввод данных
WriteLn('Введите стороны четырёхугольника: ');
ReadLn(Side1, Side2, Side3, Side4);

WriteLn('Введите одну из диагоналей: ');
ReadLn(Diagonal);

WriteLn;

// Расчёт
S := 0;
AnswerByProcedure(Side1, Side2, Diagonal, S);
AnswerByProcedure(Side3, Side4, Diagonal, S);
WriteLn('Решение через процедуру: ', S:1:2);

S := 0;
S := AnswerByFunction(Side1, Side2, Diagonal) + AnswerByFunction(Side3, Side4, Diagonal);
WriteLn('Решение через функцию: ', S:1:2)

End.