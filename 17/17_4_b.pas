function Correct_Order(var F:Tfc):Boolean;
var x,y:char;
begin
    Setemptys(S);
    reset(F);
    while not eof(f) do
    begin
        read(f,x);
        if (x='(') or (x='[') or (x='{') then
            Pushs(S,x);
        if ((x=')') or (x=']') or (x='}')) then
        if not Isemptys(S) then
            begin Pops(S,y); if ((y='(') and (x<>')') or (y='[') and (x<>']') or (y='{') and (x<>'}')) then begin Correct_Order:=false; close(f);exit;end;end
        else begin Correct_Order:=false; close(f);exit;end;
    end;
    if Isemptys(S) then Correct_Order:=true else Correct_Order:=false; close(f);
end;