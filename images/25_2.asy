settings.outformat="pdf";
defaultpen(fontsize(14pt));

import graph;
size(6cm);

real f(real x) {return acos(x);}

bool3 branch(real x)
{
  return x != 0 || x!= pi;
}
draw((-1,0) -- (-1, pi), dashed);
draw((0,pi) -- (-1, pi), dashed);
draw(graph(f,-1, 1, branch),0.7*green);

yaxis("$y$",ymax=4, EndArrow);
xaxis("$x$",xmax=2, EndArrow);
xtick("$1$", (1, 0));
xtick("$-1$", (-1, 0));
ytick("$\pi$", (0, pi), dir=W);
ytick("$\pi/2$", (0, pi/2), dir=W);
