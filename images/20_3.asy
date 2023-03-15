settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(16cm);

draw((-1,0) -- (2,0), EndArrow);
draw((0,-1) -- (0,3), EndArrow);
path c = circle((0,1), 1);
draw(c, bp+0.5*green);
draw((0.8, 0) -- (1.25, 2), bp+0.5*blue);
draw((0,2) -- (1.25,2), bp+0.5*blue);
pair p[] = intersectionpoints(line((0.8, 0), (1.25,2)), c);
draw(p[0] -- (0, p[0].y), dashed+0.5*blue);
draw(p[0] -- (0,0), 0.5*blue);
draw(p[0] -- (0,2), 0.5*blue);
label("$O$", (0,0), align=SW, 0.5*blue);
label("$B$", (0,2), align=NW, 0.5*blue);
label("$P$", (0,1), align=W, bp+0.5*blue);
label("$N$", (0,p[0].y), align=W, bp+0.5*blue);
label("$A$", p[0], align=E, bp+0.5*blue);
pair A = p[0];
pair O = (0,0);
pair B = (0,2);
pair T = (1.25, 2);
pair P = (0,1);
draw((-0.05,1) -- (0.05, 1));
markangle("$\theta$", radius=10, A,O,B, 0.5*blue);
markangle("$\theta$", radius=10, A,B,T, 0.5*blue);
markangle("$90^\circ$", radius=10, B,A,O, 0.5*blue);
label("$T$", T, align=NE, bp+0.5*blue);
label("$Q$", (0.8, 0), align=S, bp+0.5*blue);