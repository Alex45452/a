type year = 1600..2100;
    day = 1..31;
    month = 1..12;
var y: year;
    d: day;
    m: month;
    m_day: day;
begin
    read(d,m,y);
    case m of
        1,3,5,7,8,10,12: m_day := 31;
        4,6,9,11: m_day := 30;
    end;
    if m = 2 then
        if (y mod 400 = 0) or ((y mod 4 = 0) and (y mod 100 <> 0)) then
            m_day := 29
        else
            m_day := 28;
    writeln(d<=m_day)
end.