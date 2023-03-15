settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

pair A = (0,2);
pair B = (-1,0);
pair C = (2,0);
pair D = (0,0);
pair E = (1,0);
show(triangle(A, B, C), bp+0.5*green);
draw(A --D, bp+0.5*blue);
draw(A --E, bp+0.5*blue);
label("$D$", D, align=S, bp+0.5*green);
label("$E$", E, align=S, bp+0.5*green);
label("$x$", midpoint(segment(B, D)), align=S, bp+0.5*green);
label("$x$", midpoint(segment(E, C)), align=S, bp+0.5*green);
label("$x$", midpoint(segment(D, E)) + (-0.3,0), align=SE, bp+0.5*green);
