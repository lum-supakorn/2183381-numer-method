%  Program SinCos
%  Computing sin and cosine functions
%  for the angles from 0 to 180 degrees
%  with increment at every 10 degrees.
deg = 0.; del = 10.;
fprintf('%10s %16s %16s\n', ...
        'Degrees','Sin','Cos');
for ideg = 1:19
    x = pi*deg/180.;
    sums  = x; sumc  = 1.;
    terms = x; termc = 1.;
    sign  = -1.;
    for n = 1:100
        ms    = 2*n + 1; mc = 2*n;
        terms = terms*x*x/(ms*(ms-1));
        termc = termc*x*x/(mc*(mc-1));
        sums  = sums + sign*terms;
        sumc  = sumc + sign*termc;
        sign  = -sign;
    end
    fprintf('%10.0f %16.6f %16.6f\n', ...
            deg, sums, sumc);
    deg = deg + del;
end