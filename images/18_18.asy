settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

pair A = (0, 2);
pair B = (-1, 0);
pair C = (2, 0);
triangle t = triangle(A, B, C);
show(t, bp+0.5*green);
line ha = altitude(t.VA);
line hb = altitude(t.VB);
line hc = altitude(t.VC);
pair D = intersectionpoint(ha, line(t.VB, t.VC));
pair E1 = intersectionpoint(hb, line(t.VA, t.VC));
pair F = intersectionpoint(hc, line(t.VA, t.VB));
draw(A -- D, bp+0.5*blue);
draw(B -- E1, bp+0.5*blue);
draw(C -- F, bp+0.5*blue);
label("$D$", D, align=S, bp+0.5*blue);
label("$E$", E1, align=NE, bp+0.5*blue);
label("$F$", F, align=NW, bp+0.5*blue);
label("$H$", intersectionpoint(line(A, D), line(B, E1)) + (0, -0.2), align=SW, bp+0.5*blue);
pair H = intersectionpoint(line(A, D), line(B, E1));
label("$p$", midpoint(line(A, H)), align=E);
label("$q$", midpoint(line(B, H)), align=NW);
label("$r$", midpoint(line(C, H)), align=NE);
