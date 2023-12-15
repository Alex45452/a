type let_coord='a'..'h';
    num_coord = '1'..'8';
var h: let_coord;
    v: num_coord;
    i,j,x,y: integer;
    desk: array[1..8,1..8] of char;
begin
    read(h);
    read(v);
    x := (ord(h)-96);
    y := 9-(ord(v)-48);
    for i := 1 to 8 do
        for j := 1 to 8 do
            if (j = x) or (i = y) or ((j-x) = (i-y)) or ((x-i) = (j-y)) then
                desk[i,j] := '*'
            else
                desk[i,j] := '0';
    desk[y,x] := '0';
    for i := 1 to 8 do
    begin
        for j := 1 to 8 do
            write(desk[i,j],' ');
        writeln();
    end;
end. 