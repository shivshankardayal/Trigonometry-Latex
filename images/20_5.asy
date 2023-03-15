settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(12cm);

pair a = (0,2);
pair b = (-1,0);
pair c = (1,0);
show(triangle(a,b,c), 0.5*green);
pair d = (2, 1);
line l = line(c, d);
line m = perpendicular(b, l);
line n = perpendicular(a, l);
draw(b -- intersectionpoint(l, m), 0.5*blue);
draw(a -- intersectionpoint(l, n), 0.5*blue);
draw(intersectionpoint(l, m) -- intersectionpoint(l, n), 0.5*blue);
label("$M$", intersectionpoint(l, n), align=NE, 0.5*blue);
label("$N$", intersectionpoint(l, m), align=SW, 0.5*blue);
label("$p$", midpoint(line(a, intersectionpoint(l, n))), align=NE, 0.5*blue);
label("$q$", midpoint(line(b, intersectionpoint(l, m))), align=SW, 0.5*blue);
markangle("$90^\circ$", radius=10, a, intersectionpoint(l, n), c, 0.5*blue);
markangle("$90^\circ$", radius=10, c, intersectionpoint(l, m), b, 0.5*blue);
markangle("$\theta$", radius=10, intersectionpoint(l, n), c, a, 0.5*blue);
markangle("$\phi$", radius=10, b, c, intersectionpoint(l, m), 0.5*blue);
