settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

triangle t = triangle((0,2), (1, 0), (-2, 0));
show(LA="$A$", LB="$B$", LC="$C$", La="$a$", Lb="$b$", Lc="$c$", t, bp+0.5*green);
pair O= (-.1, .6);
draw(O -- point(t.VA), bp+0.5*green);
draw(O -- point(t.VB), bp+0.5*green);
draw(O -- point(t.VC), bp+0.5*green);
label("$O$", O, align=S, bp+0.5*green);
markangle("$\theta$", radius=10,O, point(t.VA), point(t.VB), bp+0.5*blue);
markangle("$B - \theta$", radius=30,point(t.VA), point(t.VB),O, bp+0.5*blue);
markangle("$\theta$", radius=10,O, point(t.VB), point(t.VC), bp+0.5*blue);
markangle("$C - \theta$", radius=30, point(t.VB), point(t.VC), O, bp+0.5*blue);
markangle("$\theta$", radius=10,O, point(t.VC), point(t.VA), bp+0.5*blue);
markangle("$\theta$", radius=10,O, point(t.VC), point(t.VA), bp+0.5*blue);
markangle("$A - \theta$", radius=30,point(t.VC), point(t.VA), O, bp+0.5*blue);
