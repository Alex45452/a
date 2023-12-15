const n = 3;
var mat: array [1..n] of array[1..n] of integer;
    sum, cur_1, cur_2, k, i, j: integer;
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
    sum := 0;
    for i := 1 to n do
    begin
        sum := sum + mat[1][i];
    end;
    for i := 1 to n do
    begin
        cur_1 := 0;
        cur_2 := 0;
        for j := 1 to n do
        begin
            cur_1 := cur_1 + mat[i][j];
            cur_2 := cur_2 + mat[j][i];
        end;
        if (cur_1 <> sum) or (cur_2 <> sum) then
        begin
            ans := False;
            break;
        end;
    end;
    write(ans);
end.