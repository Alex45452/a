type year = 1..99;
var y: year;
begin
    read(y);
    if (y > 9) and (y < 15) then
        writeln('��� ',y,' ���')
    else
    begin
        case y mod 10 of
            1: writeln('��� ',y,' ���');
            2..4: writeln('��� ',y,' ����');
            0,5..9: writeln('��� ',y,' ���')
        end;
    end;
end.