var c: char;
    a: array[char(0)..char(255)] of integer;
begin
    repeat
        read(c);
        if (c <> '.') and (a[c] = 0) then
        begin
            a[c] := 1;
            write(c);
        end;
    until c = '.';
end.