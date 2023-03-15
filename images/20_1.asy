settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

pair A = (0, 2);
pair B = (-1, 0);
pair C = (2, 0);

triangle t = triangle(A, B, C);
show(LA="$A$", LB="$B$", LC="$C$", La="$$", Lb="$$", Lc="$$", t, bp+0.5*green);
line ba = bisector(t.VA);
line bb = bisector(t.VB);
line bc = bisector(t.VC);

pair d = intersectionpoint(ba, line(B, C));
pair e = intersectionpoint(bb, line(A, C));
pair f = intersectionpoint(bc, line(A, B));
draw(A -- d, bp+0.5*blue);
draw(B -- e, bp+0.5*blue);
draw(C -- f, bp+0.5*blue);
label("$D$", d, align=S, bp+0.5*blue);
label("$E$", e, align=E, bp+0.5*blue);
label("$F$", f, align=W, bp+0.5*blue);
draw(d -- e -- f -- cycle, bp+0.5*blue);
