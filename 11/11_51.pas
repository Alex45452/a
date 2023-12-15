function Intersection(A1,B1,C1,A2,B2,C2:real; var x,y :real) :boolean;
begin
    if ((A2 = 0) and (A1 = 0)) or ((B2 = 0) and (B1 = 0)) or ((A2 = 0) and (B2 = 0)) or ((A2 <> 0) and (B2 <> 0) and (A1/A2 = B1/B2)) then
        Intersection := False
    else if ((A1 = 0) or (A2 = 0)) or ((B1 = 0) or (B2 = 0)) then
    begin
        Intersection := True;
        if (A1 = 0) then
            y := C1/B1
        else if A2 = 0 then
            y := C2/B2;
        if B1 = 0 then
            x := C1/A1
        else if B2 = 0 then
            x := C2/A2;
        if (A2 <> 0) and (A1 <> 0) then
            if B1 = 0 then
                y := (C2 - A2*x)/B2
            else
                y := (C1 - A1*x)/B1
        else if (B1 <> 0) and (B2 <> 0) then
            if A1 = 0 then
                x := (C2 - y*B2)/A2
            else
                x := (C1 - y*B1)/A1;
    end
    else
    begin   
        Intersection := True;
        x := (C1*B2-B1*C2)/(A1*B2-A2*B1);
        y := (A2*C1-C2*A1)/(B1*A2-B2*A1);
    end;
end;
var K1,L1,N1,K2,L2,N2,K3,L3,N3,x12,y12,x23,y23,x13,y13: real;
begin
    readln(K1,L1,N1,K2,L2,N2,K3,L3,N3);
    if not Intersection(K1,L1,N1,K2,L2,N2,x12,y12) or not Intersection(K1,L1,N1,K3,L3,N3,x13,y13) or not Intersection(K2,L2,N2,K3,L3,N3,x23,y23) then
        writeln(-1)
    else
        if (x12 = x13) and (x12 = x23) and (y12 = y13) and (y12 = y23) then
            writeln(0)
        else
            writeln(x12,' ',y12,' ',x13,' ',y13,' ',x23,' ',y23,' ',abs((x23-x12)*(y13-y12)-(x13-x12)*(y23-y12))/2);
end.