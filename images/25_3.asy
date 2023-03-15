settings.outformat="pdf";
defaultpen(fontsize(14pt));

import graph;
size(20cm);

real f(real x) {return atan(x);}

bool3 branch(real x)
{
  return x != -pi/2 || x!= pi/2;
}
draw((-10, pi/2) -- (10, pi/2), dashed);
draw((-10, -pi/2) -- (10, -pi/2), dashed);
draw(graph(f,-10, 10, branch),0.7*green);

yaxis("$y$", ymin=-2, ymax=2, EndArrow);
xaxis("$x$", xmin=-11, xmax=11, EndArrow);
ytick("$\pi/2$", (0, pi/2));
ytick("$-\pi/2$", (0, -pi/2));
