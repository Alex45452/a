const n=4;
var ans, i: integer;
    avg, sm, k, mn: real;
    a: array [1..n] of real;
begin
    sm := 0;
    for i := 1 to n do
    begin
        read(k);
        a[i] := k;
        sm := sm + k;
    end;
    avg := sm/n;
    mn := abs(avg - a[1]);
    ans := 1;
    for i := 2 to n do
        if abs(avg - a[i]) < mn then
        begin
            mn := abs(avg - a[i]);
            ans := i
        end;
    writeln(ans)
end.