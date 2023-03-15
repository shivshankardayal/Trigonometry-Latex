settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

triangle t = triangleAbc(60,2,5,angle=0,(0,0));
triangle t1 = triangle(t.VA, t.VB, t.VC);
markangle("$60^\circ$", radius=10,t1.B,t1.A,t1.C, bp+0.5*blue);
show(LA="$A$", LB="$D$", LC="$B$", La="$$", Lb="$2$", Lc="$5$", t1, bp+0.5*green);
path p1 = circle(point(t1.VC), 3);
path p2 = circle(point(t1.VB), 2);
pair p[] = intersectionpoints(p1, p2);
draw(p[0] -- point(t1.VC), bp+0.5*green);
draw(p[0] -- point(t1.VB), bp+0.5*green);
label("$C$", p[0], align=NE, bp+0.5*green);
label("$3$", midpoint(segment(point(t1.VC), p[0])), align=NE, bp+0.5*green);
