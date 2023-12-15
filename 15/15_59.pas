var F1,F2,F_BUF: text;
    var c: char;
begin
    assign(F1,'1.txt');
    assign(F2,'2.txt');
    assign(F_BUF,'buf.txt');
    reset(F1);
    rewrite(F_BUF);
    while not eof(F1) do
    begin
        while not eoln(F1) do
        begin
            read(F1,c);
            write(F_BUF,c);
        end;
        readln(F1);
        writeln(F_BUF);
    end;
    close(F1);
    close(F_BUF);
    reset(F2);
    rewrite(F1);
    while not eof(F2) do
    begin
        while not eoln(F2) do
        begin
            read(F2,c);
            write(F1,c);
        end;
        readln(F2);
        writeln(F1);
    end;
    close(F1);
    close(F2);
    reset(F_BUF);
    rewrite(F2);
    while not eof(F_BUF) do
    begin
        while not eoln(F_BUF) do
        begin
            read(F_BUF,c);
            write(F2,c);
        end;
        readln(F_BUF);
        writeln(F2);
    end;
    close(F2);
    close(F_BUF);
    erase(F_BUF);
end.