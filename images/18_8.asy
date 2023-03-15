settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

triangle t = triangleAbc(90,2,3,angle=0,(0,0));
triangle t1 = triangle(t.VA, t.VB, t.VC);
markangle("$90^\circ$", radius=10,t1.B,t1.A,t1.C, bp+0.5*blue);
show(LA="$A$", LB="$$", LC="$B$", La="$a/2$", Lb="$c$", Lc="$$", t1, bp+0.5*green);
point B = relpoint(line(t1.VC, t1.VB), 2);
draw(point(t1.VC)-- B, bp+0.5*green);
label("$C$", B, bp+0.5*green, align=E);
label("$D$", point(t1.VB), bp+0.5*green, align=E);
draw(point(t1.VA) -- B, bp+0.5*green);
label("$a/2$", midpoint(segment(t1.VB, B)), bp+0.5*green, align=E);
label("$b$", midpoint(segment(t1.VA, B)), bp+0.5*green, align=SW);
