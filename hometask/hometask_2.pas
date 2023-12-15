function foo(first_num: integer): integer;
function find_mx_dig(n: integer): integer;
var cur_mx_dig: integer;
begin
    if (n < 10) and (n > -10) then
        find_mx_dig := abs(n)
    else
    begin
        cur_mx_dig := find_mx_dig(n div 10);
        if cur_mx_dig > abs(n mod 10) then
            find_mx_dig := cur_mx_dig
        else
            find_mx_dig := abs(n mod 10);
    end; 
end;
var mn_mx, cur_n, cur_dig, mn_mx_dig,first_num_dig: integer;
begin
    read(cur_n);
    if cur_n = 0 then
        foo := first_num
    else
    begin
        cur_dig := find_mx_dig(cur_n);
        mn_mx := foo(first_num);
        mn_mx_dig := find_mx_dig(mn_mx);
        if cur_dig <= mn_mx_dig then
            foo := cur_n
        else
            foo := mn_mx;
        if find_mx_dig(first_num) = find_mx_dig(foo) then
            foo := first_num;
    end;
end;
var k : integer;
begin
    read(k);
    if k = 0 then 
        writeln(0)
    else
        writeln(foo(k));
end.