var c: char;
    a: array['a'..'z'] of integer;
begin
    repeat
        read(c);
        if (ord(c) >= 97) and (ord(c) <= 122) then
            a[c] := a[c] + 1;
    until c = '.';
    for c := 'a' to 'z' do
        if a[c] = 1 then
            write(c);
end.