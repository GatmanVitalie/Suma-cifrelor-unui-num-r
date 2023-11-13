program SumaCifrelor;


var
  a, n, S: integer;
function pow(a, b : integer) : integer; //declarăm o funcție ca să calculăm puterea
var
   ret : integer;
begin
 ret := a;
  for i : integer := 1 to b do
  begin
    ret := ret*a;
  end;
  pow :=ret;
end;

begin
  write('Introduceți un număr: ');
  readln(a);

  // Numărul de cifre pe care îl are numărul a
  n := trunc(log10(a)) + 1;

  S := a mod 10;
  
  for i : integer := 1 to n-1 do
  begin
 //    Writeln(( a mod pow(10, i)) div pow(10, (i-1))); de debbuging
    S := S + (( a mod pow(10, i)) div pow(10, (i-1)));
  end;
  
  
  Write('Suma cifrerol numărului este: ', S);
end.