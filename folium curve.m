syms x y t;

fx = ((3*t)/(1+t^3));
fy = ((3*t^2)/(1+t^3));

dx = diff(fx);
dy = diff(fy);

%set time of intersection here
t = 0.5;
fx = subs(fx);
fy = subs(fy);
dx = subs(dx);
dy = subs(dy);

px = (dy/dx)*(x-fx);
py = (y-fy);

hold on;
fimplicit(px == py);
fimplicit((x^3+y^3-(3*x*y)) == 0);

%set direction vector here
d = [5, 1];