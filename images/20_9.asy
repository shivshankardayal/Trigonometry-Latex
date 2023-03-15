settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

pair a = (0,3);
pair b = (-1,0);
pair c = (3.5,0);
triangle t = triangle(a,b,c);
show(t, 0.5*green);
pair h = orthocentercenter(t);
pair cc = circumcenter(t);
dot(h);
dot(cc);
draw(cc -- a, 0.5*blue);
draw(cc -- b, 0.5*blue);
draw(cc -- c, 0.5*blue);
line l = line(a, h);
pair d = intersectionpoint(l, line(b, c));
draw(a -- d, 0.5*blue);
draw(cc -- h, 0.5*red);
line m = perpendicular(cc, line(b, c));
draw(cc -- intersectionpoint(m, line(b, c)), 0.5*blue);
label("$H$", h, align=W, 0.5*green);
label("$O$", cc, align=NE, 0.5*green);
label("$D$", d, align=S, 0.5*green);
label("$E$", intersectionpoint(m, line(b, c)), align=SE, 0.5*green);
