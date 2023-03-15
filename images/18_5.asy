settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

triangle t = triangle((0,2), (1, 0), (-2, 0));
draw((0,2) -- (0,0), bp+0.5*blue);
draw((0,2) -- (-0.5, 0), bp+0.5*blue);
show(LA="$A$", LB="$B$", LC="$C$", La="$a$", Lb="$b$", Lc="$c$", t, bp+0.5*green);
label("$D$", (-0.5, 0), align=SW, bp+0.5*green);
label("$E$", (0, 0), align=S, bp+0.5*green);
markangle("$\theta$", radius=10,t.B,(-.5,0),t.A, bp+0.5*blue);
