const n = 10;
var h: real;
    i,k: integer;
    a: array [0..n-1] of real;
begin
    for i := 0 to n-1 do
    begin
        read(h);
        a[i] := h;
    end; 
    read(k);
    if (k >= n) or (k < 1) then
        k := 0;
    for i := k to n+k-1 do
        write(a[i mod n],' ');
end.