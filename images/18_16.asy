settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

pair A = (0,2);
pair B = (-1,0);
pair C = (2,0);
show(triangle(A, B, C), bp+0.5*green);
pair D = midpoint(segment(B, C));
pair E = midpoint(segment(A, C));
pair F = midpoint(segment(A, B));
draw(A -- D, bp+0.5*blue);
draw(B -- E, bp+0.5*blue);
draw(C -- F, bp+0.5*blue);
label("$D$", D + (0.2,-0.2), bp+0.5*green);
label("$E$", E + (0.2,0), bp+0.5*green);
label("$F$", F - (0.2,0), bp+0.5*green);
pair O = intersectionpoint(line(A, D), line(B, E));
label("$O$", O + (-0.2, -0.3), bp+0.5*blue);
markangle("$\alpha$", radius=10, B, O, C, bp+0.5*blue);
markangle("$\beta$", radius=20, C, O, A, bp+0.5*blue);
markangle("$\gamma$", radius=30, A, O, B, bp+0.5*blue);
