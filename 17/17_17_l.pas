procedure Delete_Minimal(var T:Ttree);
var p:Ttree;
begin
    if T^.left<>nil then 
        Delete_Minimal(T^.left)
    else if T^.right<>nil then
    begin
        p:=T;
        T:=T^.right;
        dispose(p);
    end
    else
    begin
        T:=nil;dispose(T);exit;
    end;
end;