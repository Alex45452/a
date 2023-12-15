type year = 1..99;
var y: year;
begin
    read(y);
    if (y > 9) and (y < 15) then
        writeln('Ìíå ',y,' ëåò')
    else
    begin
        case y mod 10 of
            1: writeln('Ìíå ',y,' ãîä');
            2..4: writeln('Ìíå ',y,' ãîäà');
            0,5..9: writeln('Ìíå ',y,' ëåò')
        end;
    end;
end.