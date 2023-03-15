settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(12cm);

pair a = (0, 2);
pair b = (-1.5, 0);
pair c = (1.5, 0);

show(triangle(a,b,c), La="", Lb="", Lc="", 0.7*green);
line ad = perpendicular(a, line(b, c));
draw(a -- intersectionpoint(ad, line(b,c)), 0.5*green+0.8*blue);
draw(circle(triangle(a,b,c)), 0.7*green);
pair o = circumcenter(triangle(a,b,c));
label("$O$", o, align=E, 0.5*green+0.8*blue);
draw(b -- o, 0.5*green+0.8*blue);
label("$D$", intersectionpoint(ad, line(b,c)), align=S, 0.5*green+0.8*blue);
