function ref = reflect(vec)
syms t;
i = curve_intersect(vec);
t = i(1:1);
ft = [(3*t)/(1+t^3);(3*t^2)/(1+t^3)];
der = [diff(ft(1,:));diff(ft(2,:))];

end