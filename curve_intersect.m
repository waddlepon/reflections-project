function [i] = curve_intersect(vec) %function to find the intersection of a vector and the folium
syms x y t %declaration MATLAB symbols x, y, and t
d = paraConv(vec); %Convert input vector into parametric form
x = d(1); %Setting x as x(t) of the paraConv parametric output
y = d(2); %Setting y as y(t) of the paraConv parametric output
curve = (x^3+y^3-(3*x*y)) == 0; %Setting curve as the equation for a double folium
subs(curve); %Substituting x and y into syms x and y in variable curve
i = solve(curve, t); %Solve for t in now parametric substituted equation for double folium
end