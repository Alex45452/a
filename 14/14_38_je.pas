var c, lit: char;
    is_new_word, err_flg: boolean;
    cur_lits: set of 'a'..'z';
    lit_freq: array ['a'..'z'] of integer;
begin
    is_new_word := true;
    err_flg := false;
    repeat
        read(c);
        if is_new_word then
            if (c = ',') or (c = '.') then
            begin
                err_flg := true;
                {writeln('err1');}
                break;
            end
            else
            begin
                cur_lits := [];
                is_new_word := false;
            end;
        if (c = ',') or (c = '.') then
        begin
            for lit := 'a' to 'z' do
                if lit in cur_lits then
                    lit_freq[lit] := lit_freq[lit] + 1;
            is_new_word := true;
        end
        else if (ord(c) < 97) or (ord(c) > 122) then
        begin
            err_flg := true;
            {writeln('err2');}
            break;
        end
        else
            cur_lits := cur_lits + [c];
    until c = '.';
    if err_flg then
        writeln('Error')
    else
    begin
        for lit := 'a' to 'z' do
            if lit_freq[lit] > 1 then
                case lit of
                    'b','d','g','j','l','m','n','r','v','w','y','z': write(lit);
                end;
    end;
end.