const n = 3;
    m = 3;
var mat: array [1..n] of array[1..m] of integer;
    a: array [1..n] of boolean;
    k, i, j: integer;
    ans: boolean;
begin
    for i := 1 to n do
    begin
        for j := 1 to m do
        begin
            read(k);
            mat[i][j] := k;
        end;
        readln();
        ans := True;
        for j := 1 to (m div 2) do
            if mat[i][j] <> mat[i][m+1-j] then
            begin
                ans := False;
                break;
            end;
        a[i] := ans;
    end;
    for i := 1 to n do
        write(a[i],' ')
end.