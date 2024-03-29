settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(16cm);

pair a = (0,3);
pair b = (-2,0);
pair c = (3,0);
triangle t = triangle(a,b,c);
show(La="", t, 0.7*green);
pair o = orthocentercenter(t);
pair cc = circumcenter(t);
draw(cc -- a, 0.5*green+0.8*blue);
draw(cc -- b, 0.5*green+0.8*blue);
draw(cc -- c, 0.5*green+0.8*blue);
draw(o -- a, 0.5*green+0.8*blue);
line l = line(o, a);
line m = line(o, cc);
pair p1 = intersectionpoint(l, line(b,c));
pair p2 = intersectionpoint(m, line(b,c));
draw(a -- p1, 0.5*green+0.8*blue);
draw(o -- p2, 0.5*green+0.8*blue);
label("$D$", p1, align=S, 0.7*green);
label("$Q$", p2, align=SE, 0.7*green);
label("$O$", cc, align=NE, 0.7*green);
label("$P$", o, align=NW, 0.7*green);
line l1 = perpendicular(cc, l);
line m1 = perpendicular(cc, line(b,c));
draw(cc -- intersectionpoint(l1, l), 0.5*green+0.8*blue);
draw(cc -- intersectionpoint(m1, line(b,c)), 0.5*green+0.8*blue);
label("$M$", intersectionpoint(l1, l), align=W, 0.5*green+0.8*blue);
label("$F$", intersectionpoint(m1, line(b,c)), align=S, 0.5*green+0.8*blue);
markangle("$\theta$", radius=10, cc, p2, b, 0.5*green+0.8*blue);
markangle("$\theta$", radius=10, o, cc, intersectionpoint(l1, l), 0.5*green+0.8*blue);
