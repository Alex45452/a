function sum_of_divisors(k: longint): longint;
var i,ans: longint;
begin
    ans := 1;
    i := 2;
    while i*i < k do
    begin
        if k mod i = 0 then
        begin
            ans := ans + i + (k div i);
        end;
        i := i + 1;
    end;
    if i*i = k then
        ans := ans + i;
    sum_of_divisors := ans;
end;
var cur_sum,j,n: longint;
begin
    read(n);
    if n < 2 then
        writeln('Îøèáêà')
    else
    begin
        for j := 2 to n do
        begin
            cur_sum := sum_of_divisors(j);
            if (cur_sum < j) and (cur_sum > 2) and (sum_of_divisors(cur_sum) = j) then
                writeln(cur_sum,' ',j);
        end;
    end;
end.