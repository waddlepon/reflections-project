syms x y t; % declaration MATLAB symbols x, y, and t

fx = ((3*t)/(1+t^3)); % Defines a folium as a parametric equation
fy = ((3*t^2)/(1+t^3)); 

dx = diff(fx); % Finds the derivative of each of the parametric sections,
dy = diff(fy); % which finds the derivative of the function overall.

%set time of intersection here
t = 0.5;
fx = subs(fx); % Replace all instances of t with a specific time.
fy = subs(fy);
dx = subs(dx);
dy = subs(dy);

px = (dy/dx)*(x-fx); % Define a point-slope equation for the line tangent @ time t.
py = (y-fy);

hold on; % Graph the Folium and the Tangent Line
fimplicit(px == py);
fimplicit((x^3+y^3-(3*x*y)) == 0);

%set direction vector here
vx = 1; % the x component of the vector
vy = 2; % the y component of the vector

angle_off_vertical_of_tangent = atan(dx/dy);
angle_off_vertical_of_incident_line = atan(vx/vy);
angle_off_horizontal_of_tangent = atan(dy/dx);
angle_off_horizontal_of_reflection = angle_off_horizontal_of_tangent - (angle_off_vertical_of_tangent-angle_off_vertical_of_incident_line);

ox = (vy/vx)*(x-fx);
nx = tan(angle_off_horizontal_of_reflection)*(x-fx);
fimplicit(ox == py, '--b');
fimplicit(nx == py, '--g');

