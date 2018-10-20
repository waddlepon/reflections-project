syms t
f = [((3*t)/(1+t^3)); ((3*t^2)/(1+t^3))];
d = [0 0; 1 2];
d = paraConv(d);

intersect = solve(f(1) == d(1), f(2) == d(2));
disp(intersect);