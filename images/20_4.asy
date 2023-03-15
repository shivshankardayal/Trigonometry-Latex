settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(12cm);

pair a = (0, 2);
pair b = (-3, 0);
pair c = (1, 0);
triangle t = triangle(a, b, c);
show(LA="$A$", LB="$B$", LC="$C$", La="$$", Lb="$b$", Lc="$c$", t, 0.5*green);
pair e = (0,0);
pair d = (-1,0);
draw(a -- e, 0.5*blue);
draw(a -- d, 0.5*blue);
markangle("$\frac{A}{3}$", radius=20, b, a, d, 0.5*blue);
markangle("$\frac{A}{3}$", radius=30, d, a, e, 0.5*blue);
markangle("$\frac{A}{3}$", radius=20, e, a, c, 0.5*blue);
label("$D$", d, align=S, 0.5*blue);
label("$E$", e, align=S, 0.5*blue);
