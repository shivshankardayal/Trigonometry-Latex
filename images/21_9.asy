settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(12cm);

pair a = (0, 2);
pair b = (-1.5, 0);
pair c = (1.5, 0);

show(triangle(a,b,c), La="", Lb="", Lc="", 0.7*green);
pair o = circumcenter(triangle(a,b,c));
label("$O$", o, align=S, 0.5*green+0.8*blue);
pair i = incenter(triangle(a,b,c));
label("$I$", i, align=S, 0.5*green+0.8*blue);
dot(o);
dot(i);
markangle("$\alpha$", radius=10, b, a, c, 0.5*green+0.8*blue);
markangle("$90^\circ - \frac{\alpha}{2}$", radius=10, c, b, a, 0.5*green+0.8*blue);
markangle("$90^\circ - \frac{\alpha}{2}$", radius=10, a, c, b, 0.5*green+0.8*blue);
