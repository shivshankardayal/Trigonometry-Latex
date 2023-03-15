settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

pair A = (0,0);
pair B = (2,0);
pair C = (-1, 2);
pair D = (2.5, 2);
draw(A -- B -- D -- C --cycle, bp+0.5*green);
draw(A -- D, bp+0.5*green);
draw(B -- C, bp+0.5*green);
label("$a$", midpoint(segment(A, B)), align=S, bp+0.5*blue);
label("$A$", A, align=SW, bp+0.5*blue);
label("$B$", B, align=SE, bp+0.5*blue);
label("$C$", C, align=NW, bp+0.5*blue);
label("$D$", D, align=NE, bp+0.5*blue);
markangle("$\alpha$", radius=10, D, A, C, bp+0.5*green);
markangle("$\beta$", radius=10, B, A, D, bp+0.5*green);
markangle("$\gamma$", radius=20, C, B, A, bp+0.5*green);
markangle("$\gamma$", radius=20, B, C, D, bp+0.5*green);
markangle("$\beta$", radius=10, C, D, A, bp+0.5*green);
