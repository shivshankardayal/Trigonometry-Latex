settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

path p = circle((0,0), 2);
draw(p, bp+0.5*green);
draw((-2, 0) -- (2, 0), bp+0.5*blue);
draw((-1, -1.732) -- (1, 1.732), bp+0.5*blue);
draw((1, -1.732) -- (-1, 1.732), bp+0.5*blue);
pair p1[] = intersectionpoints(line((-2, 0), (2, 0)), p);
pair p2[] = intersectionpoints(line((-1, -1.732), (1, 1.732)), p);
pair p3[] = intersectionpoints(line((1, -1.732), (-1, 1.732)), p);
draw("$A$", p1[0], align=E, bp+0.5*green);
draw("$D$", p1[1], align=W,  bp+0.5*green);
draw("$B$", p2[0], align=NE, bp+0.5*green);
draw("$E$", p2[1], align=SW,  bp+0.5*green);
draw("$C$", p3[0], align=NW, bp+0.5*green);
draw("$F$", p3[1], align=SE,  bp+0.5*green);
draw("$O$", (0,-.2), align=S,  bp+0.5*blue);
draw(p1[0] -- p2[0] -- p3[0] -- p1[1] -- p2[1] -- p3[1] -- cycle);
