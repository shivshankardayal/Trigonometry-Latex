settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

pair A = (-2, 2);
pair B = (-2, -2);
pair C = (2, -2);
pair D = (2, 2);

draw(A -- B -- C -- D -- cycle, bp+0.5*green);
dot((0, 0));
pair p = (0, -.7);
pair q = (0, .7);

line l1 = line(B, p);
line l2 = line(C, q);
point x = intersectionpoint(l1, l2);
draw(B -- x, bp+0.5*blue);
draw(C -- q, bp+0.5*blue);
draw((0, 2) -- (0, -2), bp+0.5*blue);
label("$B$", B, align=SW, bp+0.5*green);
label("$C$", C, align=SE, bp+0.5*green);
label("$A$", x, align=NE, bp+0.5*blue);
dot(p);
dot(q);
label("$Q$", q, align=W, bp+0.5*blue);
label("$P$", p, align=W, bp+0.5*blue);
label("$O$", (0, 0), align=W, bp+0.5*blue);
label("$E$", (0, 2), align=N, bp+0.5*green);
label("$F$", (0, -2), align=S, bp+0.5*green);
