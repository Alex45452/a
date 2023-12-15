type complex=record re,im: real end;
const e = 0.000001;
procedure mult_cmplx(var a,b,res: complex);
begin {(a.re+ia.im)(b.re+ib.im)}
    res.re := a.re*b.re - a.im*b.im;
    res.im := a.re*b.im + a.im*b.re;
end;
var ans, z, z_pow, z_help: complex;
    fact, i: double;
begin
    read(z.re,z.im);
    z_pow.re := z.re;
    z_pow.im := z.im;
    fact := 1;
    i := 2;
    ans.re := z.re;
    ans.im := z.im;
    repeat
        mult_cmplx(z_pow,z,z_help);
        mult_cmplx(z_help,z,z_pow);
        fact := fact*i*(i+1);
        ans.re := ans.re + z_pow.re/fact;
        ans.im := ans.im + z_pow.im/fact;
        i := i + 2 ;
    until ((abs(z_pow.re/fact) < e) and (abs(z_pow.re/fact) <> 0)) or ((abs(z_pow.im/fact) < e) and (abs(z_pow.im/fact) <> 0));
    writeln(ans.re,' ',ans.im);
end.