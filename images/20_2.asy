settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(12cm);

pair a = (0, 2);
pair b = (-2, 0);
pair c = (2, 0);

triangle t = triangle(a, b, c);
show(LA="$A$", LB="$B$", LC="$C$", La="$a$", Lb="$b$", Lc="$c$", t, bp+0.5*green);

pair d = (-.4, .9);
pair e = (.4, .9);
pair f = (0, .5);
triangle u = triangle(d, e, f);
show(LA="$D$", LB="$E$", LC="$F$", La="$$", Lb="$$", Lc="$$", u, bp+0.5*blue);

draw(a -- d^^a -- e, bp+0.5*blue);
draw(b -- d^^b -- f, bp+0.5*blue);
draw(c -- e^^c -- f, bp+0.5*blue);
markangle("$\alpha$", radius=10, b, a, d, bp+0.5*blue);
markangle("$\alpha$", radius=15, d, a, e, bp+0.5*blue);
markangle("$\alpha$", radius=20, e, a, c, bp+0.5*blue);
markangle("$\beta$", radius=30, d, b, a, bp+0.5*blue);
markangle("$\beta$", radius=35, f, b, d, bp+0.5*blue);
markangle("$\beta$", radius=40, c, b, f, bp+0.5*blue);
markangle("$\gamma$", radius=40, f, c, b, bp+0.5*blue);
markangle("$\gamma$", radius=45, e, c, f, bp+0.5*blue);
markangle("$\gamma$", radius=50, a, c, e, bp+0.5*blue);
