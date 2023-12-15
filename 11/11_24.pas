const n = 8;
type Tarray = array [1..n] of integer;
function scal(var X,Y: Tarray; i,j: integer): integer;
var st,sum: integer;
begin
    sum := 0;
    for st := i to j do
        sum := sum + X[st]*Y[st];
    scal := sum;
end;
var a, b: Tarray;
    ans, i: integer;
begin
    ans := 0;
    for i := 1 to n do
    begin
        read(a[i]);
    end;
    readln();
    for i := 1 to n do
        read(b[i]);
    readln();
    if scal(a,b,1,(3*(n div 4))) > 0 then
        for i := 1 to n do
            ans := ans + a[i]*a[i]
    else
        for i:= n div 2 to n do
            ans := ans + b[i]*b[i];
    writeln(ans);
end.
