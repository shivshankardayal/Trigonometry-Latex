settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(12cm);

draw(circle((0,0), 2), 0.7*green);
pair a = (0,2);
pair b = (-1.732, -1);
pair c = (1.732, -1);
draw(a -- b -- c -- cycle, 0.5*green+0.8*blue);
pair d = (0, -2);
pair f = (-1.732, 1);
pair e = (1.732, 1);
draw(d -- e -- f -- cycle, 0.5*green+0.8*blue);
label("$A$", a, align=N, 0.5*green);
label("$B$", b, align=SW, 0.5*green);
label("$C$", c, align=SE, 0.5*green);
label("$D$", d, align=S, 0.5*green);
label("$E$", e, align=NE, 0.5*green);
label("$F$", f, align=NW, 0.5*green);
draw(a -- d, 0.5*green);
draw(b -- e, 0.5*green);
draw(c -- f, 0.5*green);
