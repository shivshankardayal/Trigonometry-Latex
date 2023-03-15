settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

path c = circle((0,0), 2);
draw(c, bp+0.5*green);
point C = (0, 2);
point A = (-1.732, -1);
point B = (1.732, -1);
draw(A --  B, bp+0.5*green);
draw(A --  C, bp+0.5*green);
draw(C --  B, bp+0.5*green);
point D = (0, -1);
pair X[] = intersectionpoints(line(C, D), c);
draw(A -- X[1], bp+0.5*green);
draw(B -- X[1], bp+0.5*green);
draw(C -- X[1], bp+0.5*green);
label("$A$", A, align=W, bp+0.5*blue);
label("$B$", B, align=E, bp+0.5*blue);
label("$C$", C, align=N, bp+0.5*blue);
label("$D$", D, align=SE, bp+0.5*blue);
label("$E$", X[1], align=S, bp+0.5*blue);
markangle("$C/2$", radius=40, A, C, D, bp+0.5*blue);
markangle("$C/2$", radius=40, D, C, B, bp+0.5*blue);
