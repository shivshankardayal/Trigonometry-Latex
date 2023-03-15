settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(12cm);

triangle t = triangleAbc(150,3,3,angle=195,(0,0));
show(LA="$A$", LB="$B$", LC="$C$", La="$a$", Lb="$x$", Lc="$x$", t, bp+0.5*green);
