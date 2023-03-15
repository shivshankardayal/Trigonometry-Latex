settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

pair a = (.866, 0.5);
pair b = (-.866, 0.5);
pair c= (0, -1);
path c1 = circle(a, .866);
path c2 = circle(b, .866);
draw(c1, 0.7*green);
draw(c2, 0.7*green);
path c3 = circle(c, .866);
draw(c3, 0.7*green);
path i = circle((0,0), 1.866);
draw(i, 0.5*green+0.8*blue);
path o = circle((0,0), .134);
draw(o, 0.5*green+0.8*blue);
draw(a -- b -- c -- a);
draw((0,0) -- a);
