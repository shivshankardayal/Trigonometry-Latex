settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

pair a = (0,3);
pair b = (-1,0);
pair c = (3.5,0);
triangle t = triangle(a,b,c);
show(t, 0.5*green);
pair cc = circumcenter(t);
pair i = incenter(t);
dot(cc);
dot(i);
draw(cc -- a, 0.6*blue);
draw(cc -- b, 0.6*blue);
draw(cc -- c, 0.6*blue);
draw(cc -- i, 0.6*blue);
line l = perpendicular(cc, line(b, c));
draw(cc -- intersectionpoint(l, line(b,c)), 0.6*blue);
line m = line(a, i);
draw(a -- intersectionpoint(m, line(b,c)), 0.6*blue);
line n = perpendicular(i, line(b, a));
draw(i -- intersectionpoint(n, line(b,a)), 0.6*blue);
markangle("$A/2$", radius=20, b,a,i, 0.6*blue);
markangle("$A/2$", radius=40, i,a,c, 0.6*blue);
label("$O$", cc, align=NE, 0.6*blue);
label("$I$", i, align=NE, 0.6*blue);
markangle("$90^\circ$", radius=10, i,intersectionpoint(n, line(b,a)),a, 0.6*blue);
label("$M$", intersectionpoint(l, line(b,c)), align=SW, 0.6*blue);
label("$D$", intersectionpoint(m, line(b,c)), align=SW, 0.6*blue);
label("$E$", intersectionpoint(n, line(b,a)) + (-0.3, 0.2), align=W, 0.6*blue);