procedure Double(var F: TString);
var c: char;
    F_help: TString;
begin
    assign(F_help,'one.txt');
    reset(F);
    rewrite(F_help);
    while not eof(F) do
    begin
        read(F,c);  
        write(F_help,c);
        if (ord(c) > 47) and (ord(c) < 58) then
            write(F_help,c);
    end;
    close(F);
    close(F_help);
    reset(F_help);
    rewrite(F);
    while not eof(F_help) do
    begin
        read(F_help,c);
        write(F,c);
    end;
    close(F);
    close(F_help);
    erase(F_help);
end;