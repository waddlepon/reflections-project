function [ft] = paraConv(vec)

syms t;

if size(vec) == [2, 2]
    xv = vec(1,:);
    yv = vec(2,:);
else
    xv = [0, vec(1,:)];
    yv = [0, vec(2,:)];
end

xt = (xv(:,1) + (xv(:,2)-xv(:,1))*t);
yt = (yv(:,1) + (yv(:,2)-yv(:,1))*t);

ft = [xt;yt];
end