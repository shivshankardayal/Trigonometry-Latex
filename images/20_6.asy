settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(12cm);

pair a = (0,2);
pair b = (-1,0);
pair c = (1,0);
show(triangle(a, b, c), 0.5*green);
path p = circumcircle(a, b, c);
draw(p, 0.5*green);
pair o = circumcenter(a,b,c);
dot(o, 0.5*blue);
line l = perpendicular(o, line(b, c));
draw(o -- intersectionpoint(l, line(b, c)), 0.5*blue);
draw(o -- b, 0.5*blue);
label("$O$", o, align=N, 0.5*green);
label("$P$", intersectionpoint(l, line(b, c)) + (-0.1, 0), align=SW, 0.5*green);
