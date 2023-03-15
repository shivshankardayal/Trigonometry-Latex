settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

path c = circle((0,0), 2);
draw(c, bp+0.5*green);
point A = (0, 2);
point B = (-1.732, -1);
point C = (1.732, -1);
draw(A --  B, bp+0.5*green);
draw(A --  C, bp+0.5*green);
draw(C --  B, bp+0.5*green);
point D = (0, -1);
pair X[] = intersectionpoints(line(A, D), c);
draw(A -- X[1], bp+0.5*green);
draw(B -- X[1], bp+0.5*green);
draw(C -- X[1], bp+0.5*green);
label("$A$", A, align=N, bp+0.5*blue);
label("$B$", B, align=W, bp+0.5*blue);
label("$C$", C, align=E, bp+0.5*blue);
label("$D$", D, align=SE, bp+0.5*blue);
label("$E$", X[1], align=S, bp+0.5*blue);
markangle("$B$", radius=10, C, X[1], A, bp+0.5*blue);
markangle("$C$", radius=10, A, X[1], B, bp+0.5*blue);
