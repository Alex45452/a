procedure BuildSingly(L:Tlist; var L1:Tlist); 
var tmp, p:Tlist;
begin
    tmp:=L;
    l1:=nil;
    if l = nil then
        l1 := nil
    else
    begin
        new(l1);
        L1^.data:=L^.data; l1^.next:=nil; p:=L1;
        while L^.next <> tmp do
        begin
            L:=L^.next; 
            new(p^.next); p:=p^.next;
            p^.data:=L^.data;p^.next:=nil;
        end;
    end;
end;