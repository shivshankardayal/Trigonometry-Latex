settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

pair a = (0,4);
pair b = (-2,0);
pair c = (2,0);
triangle t = triangle(a,b,c);
draw(t, 0.5*green);
path c1 = circle((-2,0), 2);
path c2 = circle((2,0), 2);
draw(c1, 0.5*green);
draw(c2, 0.5*green);
path c3 = circle((0,4), sqrt(20)- 2);
draw(c3, 0.5*green);
label("$C1$", b, align=SW, 0.5*green);
label("$C2$", c, align=SE, 0.5*green);
label("$C3$", a, align=N, 0.5*green);
label("$a$", midpoint(line(b, (0,0))), align=S, 0.5*green);
label("$b$", midpoint(line(c, (0,0))), align=S, 0.5*green);
label("$a$", midpoint(line(b, (-1.414,1.414))), align=NW, 0.5*green);
label("$b$", midpoint(line(c, (1.414,1.414))), align=NE, 0.5*green);
label("$c$", midpoint(line(a, (-1.414,1.414))), align=NW, 0.5*green);
label("$c$", midpoint(line(a, (1.414,1.414))), align=NE, 0.5*green);
line l1 = perpendicular(intersectionpoint(c1,c3), line(a, b));
line l2 = perpendicular(intersectionpoint(c2,c3), line(a, c));
line l3 = perpendicular((0,0), line(b, c));
pair o = intersectionpoint(l1,l2);
draw(intersectionpoint(c1,c3) -- o, 0.5*blue);
draw(intersectionpoint(c2,c3) -- o, 0.5*blue);
draw(intersectionpoint(c1,c2) -- o, 0.5*blue);
label("$O$", o + (0,0.3), align=N, 0.5*blue);
