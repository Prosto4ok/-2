program Suslov;
uses crt;
const
  N = 10;

var
  mas: array [1..N] of integer;
  a, b, c, k: integer;
  g:string;
  f:char;
  
procedure mass;

begin
  writeln('Введите массив');
  for var i := 1 to N do 
    read(mas[i]);
  a := 0;
  for var i := 1 to N do
    if i mod 2 = 0 then 
      a := a + mas[i];
  writeln('сумма = ', a);
  readkey;
end;

procedure stroki;

begin
  writeln('Введите строку: ');
  readln(g);
  b := length(g);
 c := 0;
  for var d := 1 to b do 
    if g[d] = ' ' then
      c := c + 1;
  if b > 0 then 
    c := c + 1;

  for var d:= 1 to b do 
    case g[d] of 
      'a'..'z': k+=1;
      'а'..'я': k+=1;
      'A'..'Z': k+=1;
      'А'..'Я': k+=1;
end;
  writeln('Количество слов : ', c);
  writeln ('Количество букв: ', k);
  readkey;

end;

begin
  repeat 
    ClrScr;
    writeln ('Чтобы выбрать массив введите 1');
    writeln ('Чтобы выбрать строку введите 2');
    writeln ('Чтобы выйти введите 0');
    write ('Выберите программу: ');
    readln (f);
    case f of 
      '1':mass;
      '2':stroki;
    end;
  until f = '0';
end.
