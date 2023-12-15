function factorial(n:integer) : longint; 
begin
  if n = 0 then factorial :=1 
  else factorial := factorial(n-1)*n;
end;
begin
    writeln(factorial(11))
end.