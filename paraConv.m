function [ft] = paraConv(vec) 
%This function takes a vector as an input andoutputs the equation for the coincident line in parametrics

syms t; %Declaring MATLAB symbol t

%Vectors are formatted in [x1, x2; y1, y2] and are parsed into xv = [x1, x2]and yv = [y1, y2]
if size(vec) == [2, 2] %Test for origin and end of vector for both x and y coordinates
    xv = vec(1,:);
    yv = vec(2,:);
else %If there are only end coordinates, the cartesian origin is used as a default
    xv = [0, vec(1,:)];
    yv = [0, vec(2,:)];
end

%The vector components are put into parametric form
xt = (xv(:,1) + (xv(:,2)-xv(:,1))*t);
yt = (yv(:,1) + (yv(:,2)-yv(:,1))*t);

ft = [xt;yt]; %Parametric equations are put into a 2x1 matrix
end