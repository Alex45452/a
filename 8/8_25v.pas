var a: array ['0'..'9'] of integer;
    i,mx: integer; ans,c: char;
begin
    read(c);
    repeat
        if (ord(c) >= 48) and (ord(c) <= 57) then
        begin
            a[c] := a[c] + 1;
        end;
        read(c);
    until c = '.';
    mx := a['0'];
    ans := '0';
    for c := '1' to '9' do
        if a[c] > mx then
        begin
            ans := c;
            mx := a[c];
        end;
    writeln(ans)
end.