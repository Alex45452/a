const n = 2;
type tmatrix = array[1..n,1..n] of real;
procedure mult(var A,B,C: tmatrix);
var i,j,k: integer;
    cur_cell: real;
begin
    cur_cell := 0;
    for i := 1 to n do
        for j := 1 to n do
        begin
            for k := 1 to n do
                cur_cell := cur_cell + A[i,k]*B[k,j];
            C[i,j] := cur_cell;
            cur_cell := 0;
        end;
end;
var p,m,i,j: integer;
    D,E,H,Ansmat,Helpmat,mat1,ABCmat: tmatrix;
begin
    for i:= 1 to n do
    begin
        for j := 1 to n do
            read(D[i,j]);
    end;
    for i:= 1 to n do
    begin
        for j := 1 to n do
            read(E[i,j]);
    end;
    for i:= 1 to n do
    begin
        for j := 1 to n do
        begin
            read(H[i,j]);
            mat1[i,j] := 0;
            if i = j then
                mat1[i,j] := 1;
        
        end;
    end;
    read(p);
    mult(D,E,Ansmat);
    mult(Ansmat,H,ABCmat);
    mult(ABCmat,mat1,Ansmat);
    if p < 1 then
        writeln('Îøèáêà')
    else
    begin
        for m := 2 to p do
        begin
            mult(Ansmat,ABCmat,Helpmat);
            mult(Helpmat,mat1,Ansmat);
        end;
        for i := 1 to n do
        begin
            for j := 1 to n do
                write(Ansmat[i,j],' ');
            writeln();
        end;
    end;
end.