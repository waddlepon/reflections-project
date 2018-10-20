function [i] = curve_intersect(vec)
syms x y t
d = paraConv(vec);
x = d(1);
y = d(2);
curve = (x^3+y^3-(3*x*y)) == 0;
subs(curve);
i = solve(subbed_curve, t);
end