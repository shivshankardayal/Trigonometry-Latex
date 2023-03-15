settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(12cm);

pair a = (0, 2);
pair b = (-2, 0);
pair c = (2, 0);

triangle t = triangle(a, b, c);
show(La="", Lb="", Lc="", t, 0.7*green);

line bia = bisector(t.VA);
line bib = bisector(t.VB);
line bic = bisector(t.VC);

pair aa = intersectionpoint(bia, line(b, c));
pair bb = intersectionpoint(bib, line(a, c));
pair cc = intersectionpoint(bic, line(a, b));
draw(a -- aa, 0.5*green+0.8*blue);
draw(b -- bb, 0.5*green+0.8*blue);
draw(c -- cc, 0.5*green+0.8*blue);
draw(aa -- bb -- cc -- cycle, 0.5*green+0.8*blue+dashed);
label("$A'$", aa, align=S, 0.5*green+0.8*blue);
label("$B'$", bb, align=E, 0.5*green+0.8*blue);
label("$C'$", cc, align=W, 0.5*green+0.8*blue);
