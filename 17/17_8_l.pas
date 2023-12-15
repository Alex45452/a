function Leaf_n(T:TTree;n:integer):Boolean;
function Isempty(L:TTree):boolean;
begin
    if L=nil then Isempty:=true else Isempty:=false;
end;
begin
    if not Isempty(T) then
    begin
        if (n=1) and (Isempty(T^.left)) and (Isempty(T^.right)) then
        begin 
            Leaf_n:=true;exit;
        end
        else
        begin
            Leaf_n:=Leaf_n(T^.left,n-1);
            if Leaf_n then exit;
            Leaf_n:=Leaf_n(T^.right,n-1);
        end;
    end;
end;