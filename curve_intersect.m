fol = (x^3+y^3-(3*x*y)) == 0;
line = (y == x);
hold on;
fimplicit(fol);
fimplicit(line);
new = find(fol == line);