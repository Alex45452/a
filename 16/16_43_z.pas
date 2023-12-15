procedure Add_Last(L:Tlist;E:real);
var p,L_help:Tlist;
begin
    if L^.next = nil then
    begin
        new(p);
        p^.data := E;
        p^.prev := nil;
        p^.next := nil;
        L^.next := p;
        L^.prev := p;
    end
    else
    begin
        L_help:=L;
        while L_help^.next<>nil do
            L_help:=L_help^.next;
        new(p);
        p^.data:=E;
        p^.prev:=L_help;
        p^.next:=nil;
        L_help^.next:=p;
        L^.prev := p;
    end;
end;