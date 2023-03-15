settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

pair A = (2,2);
pair B = (0,0);
pair E = (3,0);
pair D = (2, -1);
draw(A -- D, bp+0.5*blue);
draw(B -- E, bp+0.5*blue);
point F = relpoint(line(A, E), 3);
point G = relpoint(line(B, D), 3);
point C = intersectionpoint(line(A, F), line(B, G));
draw(A -- B, bp+0.5*green);
draw(A -- C, bp+0.5*green);
draw(B -- C, bp+0.5*green);
label("$A$", A, align=N, bp+0.5*green);
label("$B$", B, align=W, bp+0.5*green);
label("$C$", C, align=SE, bp+0.5*green);
label("$D$", D, align=S, bp+0.5*green);
label("$E$", E, align=NE, bp+0.5*green);
point O = intersectionpoint(line(B, E), line(A, D));
label("$O$", O, align=SW, bp+0.5*green);
markangle("$90^\circ$", radius=10, E, O, A, bp+0.5*green);
