settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

pair a = (0,3);
pair b = (-2,0);
pair c = (2,0);
triangle t = triangle(a,b,c);
show(t, 0.5*green);
path i = incircle(t);
draw(i, 0.5*blue);
pair o = incenter(t);
path cc = circle(o,b,c);
draw(cc, 0.5*green);
pair o1 = circumcenter(o,b,c);
draw(o -- b, 0.5*green);
draw(o -- c, 0.5*green);
draw(o -- o1, 0.5*green);
label("$O$", o, align=N, 0.5*blue);
label("$O'$", o1, align=S, 0.5*green);
dot(o1);
