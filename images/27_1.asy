settings.outformat = "pdf";
defaultpen(fontsize(6pt));
import geometry;

size(3cm);

pair o = (0, 0);
pair m = (2, 0);
pair p = (2, 2);
pair q = (2, 1);
pair q1 = (0.5, -.05);

draw(o -- m);
draw(o -- p);
label("$O$", o, align=SW);
label("$M$", m, align=SE);
label("$P$", p, align=NE);
label("Horizontal Line", o--m, S);
label(Label("Line of Observation", Rotate(p-o)), p--o);
markangle("$\theta$", radius=10, m, o, p);
label(Label("Angle of Elevation", Rotate(q-q1)), q--q1);
