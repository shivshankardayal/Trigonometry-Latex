settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

triangle t = triangleAbc(75,2,3,angle=0,(0,0));
triangle t1 = triangle(t.VA, t.VB, t.VC);
markangle("$75^\circ$", radius=10,t1.B,t1.A,t1.C);
markangle("$60^\circ$",radius=10,t1.A,t1.C,t1.B);
markangle("$45^\circ$",radius=10,t1.C,t1.B,t1.A);
markangle("$\theta$",radius=40,midpoint(segment(t1.VA, t1.VC)),t1.B,t1.A);
draw(point(t1.VB) -- midpoint(segment(t1.VA, t1.VC)));
show(LA="$A$", LB="$B$", LC="$C$", La="$a$", Lb="$b$", Lc="$c$", t1, bp+0.5*green);
pair p = midpoint(segment(t1.VA, t1.VC)) - (1,-.5);
label("$D$", midpoint(segment(t1.VA, t1.VC)), p);
