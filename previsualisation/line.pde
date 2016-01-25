class Line{
     
     int x1, x2, y1, y2, index;
     int r,g,b;
     boolean on = true;
     
     Line(int _x1, int _x2, int _y1, int _y2, int _index){
          x1 = _x1;
          x2 = _x2;
          y1 = _y1;
          y2 = _y2;
          r = g = b = 0;
          index = _index;
     }
     
     void draw(){
          pushStyle();
          strokeWeight(25);
          stroke(r, g ,b);
          line(x1, x2, y1, y2);
          text(index,(x1+y1)/2, (x2+y2)/2+5);
          popStyle();
     }
     
     void setRGB(int _r, int _g, int _b){
          r=_r;
          g=_g;
          b=_b;
     }
}