const n = 4;
var a: array [1..n] of char;
    i: integer;
    c: char;
    f,ans: boolean;
    cnt_a,cnt_b: array [char(0)..char(255)] of integer;
begin
    ans := False;
    i := 1;
    repeat
        read(c);
        a[i] := c;
        cnt_a[c] := cnt_a[c] + 1;
        i := i + 1;
        f := c = '.';  
    until i = n+1;
    readln();
    i := 1;
    repeat
        read(c);
        if c <> a[i] then
            ans := True;
        cnt_b[c] := cnt_b[c] + 1;
        i := i + 1 ;
    until i = n+1;
    for c := char(0) to char(255) do
    begin
        if cnt_a[c] <> cnt_b[c] then
            ans := False;
    end;
    writeln(ans);
end.