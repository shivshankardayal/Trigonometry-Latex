settings.outformat = "png";
defaultpen(fontsize(14pt));
import geometry;

size(8cm);

int p=6; // how many points/sides are in the polygon
real r=330; // radius of circle/polygon
real c=0; // degrees to rotate the polygon
real b=360/p; // the degrees for each point are multiples of this
int a=0; // the variable used to run the loop.
pair a0, a1;
while(a<p)
  {
    real d=(a*b+c);
    pair z=dir(d)*r;
    if(a == 0)
      {
        a0 = z;
      }
    else if(a == 1){
      a1 = z;
    }
    ++a;
    real d=(a*b+c);
    pair y=dir(d)*r;
    draw( y--z, 0.7*green);
  }
pair o = (0, 0);
draw(o -- a0, 0.5*green+0.8*blue);
draw(o -- a1, 0.5*green+0.8*blue);
label("$O$", o, align=S, 0.7*green);
label("$A_1$", a0, align=E, 0.7*green);
label("$A_2$", a1, align=NE, 0.7*green);
line p = perpendicular(o, line(a0, a1));
pair d = intersectionpoint(p, line(a0, a1));
draw(o -- d, 0.7*green);
label("$D$", d, align=NE, 0.7*green);
markangle("$\frac{\pi}{n}$", radius=20, a0,o,d, 0.7*green);
markangle("$\frac{\pi}{n}$", radius=20, d,o,a1, 0.7*green);
