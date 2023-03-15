settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(12cm);

pair a = (0, 3.464);
pair b = (-2, 0);
pair c = (2, 0);

triangle t = triangle(a, b, c);
show(t, 0.7*green);
pair aa = (0.6, 0);
pair bb = (.7, 2.252);
pair cc = (-1.3, 1.212);
show(triangle(aa, bb, cc), LA="$A'$", LB="$B'$", LC="$C'$", La="$\lambda a$", Lb="$\lambda b$", Lc="$\lambda c$", 0.5*green+0.8*blue);
pair p = intersectionpoint(line(b, c), line(bb, cc));
draw(b -- p, 0.7*green);
draw(cc -- p, 0.7*green);
markangle("$\theta$", radius=10, b, p, cc, 0.7*green);
label("$O$", p, align=S, 0.7*green);
markangle("$A$", radius=10, bb, aa, cc, 0.5*green+0.8*blue);
markangle("$B$", radius=10, cc, bb, aa, 0.5*green+0.8*blue);
markangle("$C$", radius=10, aa, cc, bb, 0.5*green+0.8*blue);
