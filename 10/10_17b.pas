const n=40;
    m = 50;
var words: array [1..n] of string;
    cur_word, last_word: string;
    c: char;
    flag_nw, flag_letter: boolean;
    last_word_pos, i,k: integer;
begin
    read(c);
    flag_nw := True;
    cur_word := '';
    i := 1;
    repeat
        if flag_nw and (c <> ' ') then
        begin
            flag_letter := False;
            flag_nw := False;
            cur_word := '' + c;
        end
        else if not flag_nw and (c = ' ') then 
            begin
                flag_nw := True;
                if flag_letter then
                begin
                    words[i] := cur_word;
                    i := i + 1;
                end;
            end
        else if not flag_nw then
            begin
                cur_word := cur_word + c;
                if c = cur_word[1] then 
                    flag_letter := True;
            end;
        read(c);
    until c = '.';
    last_word := cur_word;
    last_word_pos := i-1;
    for i := 1 to last_word_pos do
    begin
        if words[i] <> last_word then
        begin
            write(words[i],' ');
        end;
    end;
end.