int i;
float border = 20;
float x1;
float y1;
float di;


void setup() {
 size(600,600);
 background(255);
 smooth();
 di = random(5,10);
 x1 = random(border,width-border);
 y1 = random(border,height-border);
 fill(random(0,200));
 noStroke();
 ellipse(x1,y1,di,di);
}


void draw() {
  if ( i < 49 ) {

    float x2 = random(border,width-border);
    float y2 = random(border,height-border);
    stroke(random(0,200));
    line (x1,y1,x2,y2);
    x1 = x2;
    y1 = y2;
    i = i+1;
    di = random(5,10);
    fill(random(0,250));
    noStroke();
    ellipse(x1,y1,di,di);
 }
} 
