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
dw = 1;
dz = 2;

%theta is the angle down from the horizontal of the original line
theta = atan(dx/dy);
%a is the angle down from the horizontal of the new line
a = atan(dw/dz);
%b is the angle up from the x-axis of the original line
b = atan(dy/dx);
%c is the angle of the new line
c = b - (theta-a);

nx = tan(c)*(x-fx);
ox = (dz/dw)*(x-fx);
fimplicit(nx == py);
fimplicit(ox == py);