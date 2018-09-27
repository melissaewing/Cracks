int s = 600;

float FRAC1 = 0.4;
float FRAC2 = 0.2;
float FRAC3 = 0.1;
float FRAC4 = 0.7;

void setup() {

  size(s, s);
  
  background(255);
  stroke(0);
  smooth();
  
  float x1 = 0;
  float y1 = 0;
  float x2 = s;
  float y2 = 0;
  float x3 = s;
  float y3 = s;
  float x4 = 0;
  float y4 = s;
  
  drawline(x1, y1, x2, y2, x3, y3, x4, y4, 7);
 
}

void drawline(float x1, float y1, float x2, float y2, float x3, float y3, float x4, float y4, int level) {
  
  float x12 = FRAC1*x1 + (1-FRAC1)*x2;
  float y12 = FRAC1*y1 + (1-FRAC1)*y2;
  float x23 = FRAC2*x2 + (1-FRAC2)*x3;
  float y23 = FRAC2*y2 + (1-FRAC2)*y3;
  float x34 = FRAC3*x3 + (1-FRAC3)*x4;
  float y34 = FRAC3*y3 + (1-FRAC3)*y4;
  float x14 = FRAC4*x1 + (1-FRAC4)*x4;
  float y14 = FRAC4*y1 + (1-FRAC4)*y4;
  float xmiddle = (x1+x2+x3+x4)/4;
  float ymiddle = (y1+y2+y3+y4)/4;
  
  
  line(x12, y12, xmiddle, ymiddle);
  line(x23, y23, xmiddle, ymiddle);
  line(x34, y34, xmiddle, ymiddle);
  line(x14, y14, xmiddle, ymiddle);
  
  if(level > 1) {
    level = level - 1;  
    drawline(x1, y1, x12, y12, xmiddle, ymiddle, x14, y14, level); 
    drawline(x12, y12, x2, y2, x23, y23, xmiddle, ymiddle, level);
    drawline(xmiddle, ymiddle, x23, y23, x3, y3, x34, y34, level);
    drawline(x14, y14, xmiddle, ymiddle, x34, y34, x4, y4, level);
 }
  
}
 

