settings.outformat="pdf";
defaultpen(fontsize(14pt));

import graph;
size(6cm);

real f(real x) {return asin(x);}

bool3 branch(real x)
{
  return x != pi/2 || x!= -pi/2;
}
draw((1,0) -- (1, pi/2), dashed);
draw((0,pi/2) -- (1, pi/2), dashed);
draw((-1,0) -- (-1, -pi/2), dashed);
draw((0,-pi/2) -- (-1, -pi/2), dashed);
draw(graph(f,-1, 1, branch),0.7*green);

yaxis("$y$",ymax=2, EndArrow);
xaxis("$x$",xmax=2, EndArrow);
xtick("$1$", (1, 0));
ytick("$\pi/2$", (0, pi/2));
