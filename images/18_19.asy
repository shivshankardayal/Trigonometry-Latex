settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

pair O = (0,0);
path p = circle((0, 0), 2);
draw(p, bp+0.5*green);
label("$O$", (0, 0), align=NW, bp+0.5*green);
path q = circle((0, -2), 2.4);
draw((0, 2) -- (0, -2), bp+0.5*green);
//draw(q, bp+0.5*red);
label("$A$", (0, -2), align=SW, bp+0.5*red);
label("$P$", (0, .4), align=NW, bp+0.5*green);
pair i[] = intersectionpoints(p, q);
draw(i[0] -- O, bp+0.5*blue);
draw(i[1] -- O, bp+0.5*blue);
label("$B$", i[0], align=NW, bp+0.5*blue);
label("$C$", i[1], align=NE, bp+0.5*blue);
draw(i[0] -- i[1], dashed);
pair A = (0, -2);
draw(i[0] -- A, bp+0.5*blue);
draw(i[1] -- A, bp+0.5*blue);
label("$r$", midpoint(line(i[0], A)), align=SW, bp+0.5*blue);
label("$r$", midpoint(line(i[1], A)), align=SE, bp+0.5*blue);
markangle("$\theta$", radius=10, O, A, i[0], bp+0.5*blue);
markangle("$\theta$", radius=10, i[1], A, O, bp+0.5*blue);
markangle("$\theta$", radius=10, O, i[1], A, bp+0.5*blue);
label("$1$", midpoint(line(i[0], O)), align=NW, bp+0.5*blue);
label("$1$", midpoint(line(i[1], O)), align=NE, bp+0.5*blue);
draw(arccircle(i[0], (0, .4), i[1]), bp+0.5*red);
