settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(12cm);

pair a = (0, 2);
pair b = (-1.5, 0);
pair c = (1.5, 0);

show(triangle(a,b,c), La="", Lb="", Lc="", 0.7*green);
circle i = incircle(triangle(a,b,c));
draw(i, 0.5*green+0.8*blue);
pair p1[] = intersectionpoints(line(a,b), i);
label("$\gamma$", midpoint(line(a, p1[0])), align=NW, 0.7*green);
label("$\alpha$", midpoint(line(b, p1[0])), align=NW, 0.7*green);
pair p2[] = intersectionpoints(line(c,b), i);
label("$\alpha$", midpoint(line(b, p2[0])), align=S, 0.7*green);
label("$\beta$", midpoint(line(c, p2[0])), align=S, 0.7*green);
pair p3[] = intersectionpoints(line(a,c), i);
label("$\beta$", midpoint(line(c, p3[0])), align=NE, 0.7*green);
label("$\gamma$", midpoint(line(a, p3[0])), align=NE, 0.7*green);
