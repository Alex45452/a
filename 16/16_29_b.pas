function contains(L1,L2:Tlist):Boolean;
var f:boolean;
    cur,base: Tlist;
begin
    contains:=false;
    if L1 = nil then
        contains := true
    else if L2 <> nil then
    begin
        while L2^.next <> nil do
        begin
            cur := L2;
            base := L1;
            f:=true;
            while (cur^.next <> nil) and (base^.next <> nil) do
                if cur^.data <> base^.data then
                begin
                    f:=false;
                    break;
                end
                else
                begin
                    cur := cur^.next;
                    base := base^.next
                end;
            if f and (cur^.data = base^.data) and (base^.next = nil) then
            begin
                contains := true;
                break;
            end;
            L2 := L2^.next;
            
        end;
        if (L2^.data = L1^.data) and (L1^.next = nil) then
            contains := true;
    end;
end;