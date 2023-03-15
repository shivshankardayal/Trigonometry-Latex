settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

pair A = (0, 2);
pair B = (-1, 0);
pair C = (2, 0);
pair D = (0.5, 0);
triangle t = triangle(A, B, C);
show(LA="$A$", LB="$B$", LC="$C$", La="", Lb="$b$", Lc="$c$", t, bp+0.5*green);
draw (A -- D, bp+0.5*blue);
markangle("$\theta$", radius=20,B, A, D, bp+0.5*blue);
markangle("$A - \theta$", radius=30,D, A, C, bp+0.5*blue);
markangle("$B + \theta$", radius=20,C, D, A, bp+0.5*blue);
markangle("$\pi - B - \theta$", radius=20,A, D, B, bp+0.5*blue);
label("$D$", D, align=SW, bp+0.5*blue);
label("$a/2$", midpoint(segment(C, D)), align=S, bp+0.5*blue);
label("$a/2$", midpoint(segment(B, D)), align=S, bp+0.5*blue);
