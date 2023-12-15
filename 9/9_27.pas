const n = 3;
var mat: array [1..n] of array[1..n] of integer;
    k, i, j: integer;
    ans: boolean;
begin
    for i := 1 to n do
    begin
        for j := 1 to n do
        begin
            read(k);
            mat[i][j] := k;
        end;
        readln();
    end;
    ans := True;
    for i := 1 to n do
        for j := i to n do
            if mat[i][j] <> mat[j][i] then
            begin
                ans := False;
                break;
            end;
    write(ans)
end.