function f(n:integer):integer;
begin
    f:= n * 5 + 25;
end;
begin
    writeln(f(f(f(10))))
end.