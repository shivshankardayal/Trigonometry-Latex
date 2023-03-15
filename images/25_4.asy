settings.outformat="pdf";
defaultpen(fontsize(14pt));

import graph;
size(20cm);

real f(real x) {
  if(x > 0)
    return atan(1/x);
  else
    return pi + atan(1/x);
}

bool3 branch(real x)
{
  return x != 0 || x!= 20;
}
draw((-10, pi) -- (10, pi), dashed);
draw(graph(f,-10, -0.0001, branch),0.7*green);
draw(graph(f, 0.0001, 10, branch),0.7*green);

yaxis("$y$", ymin=0, ymax=4, EndArrow);
xaxis("$x$", xmin=-11, xmax=11, EndArrow);
ytick("$\pi/2$", (0, pi/2));
ytick("$\pi$", (0, pi));
