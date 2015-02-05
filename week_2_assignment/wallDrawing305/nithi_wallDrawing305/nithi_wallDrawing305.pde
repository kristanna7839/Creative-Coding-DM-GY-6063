float r = 500; // arc diameter
float pointWeight = 10; // point weight

void setup() {
size(600,400);
background(255);
}

void draw() {

float x1 = 314;
float y1 = 122;

// Arc
noFill();
stroke(230);
ellipse(x1,y1,r,r);

// 1st Point
noStroke();
fill(0);
ellipse(x1,y1,pointWeight,pointWeight);

/*halfway between the midpoint of the bottom side and the lower
right corner*/
float xMidBottom = (width-(width/2)/2);
float yMidBottom = height;
noStroke();
fill(0);
ellipse(xMidBottom,yMidBottom,pointWeight,pointWeight);

// 8th Point
float x8 = width-((width-xMidBottom)/2);
float y8 = height/2;
noStroke();
fill(0);
ellipse(x8,y8,pointWeight,pointWeight);

// The intections A
float xa = width-((width-x8)/2);
float ya = height/4;
noStroke();
fill(0);
ellipse(xa,ya,pointWeight,pointWeight);

// The intersection B
float xb = xMidBottom+((x8-xMidBottom)/2);
float yb = height-(height/4);
noStroke();
fill(0);
ellipse(xb,yb,pointWeight,pointWeight);

stroke(250);
line(xb,yb,x1,y1);
line(xa,ya,x1,y1);

// 7th Point
float x7 = x1-(r/2);
stroke(250);
line(x1,y1,x7,y1);
noStroke();
fill(0);
ellipse(x7,y1,pointWeight,pointWeight);



float xRightTop = width;
float yRightTop = 0;
noStroke();
fill(0);
ellipse(xRightTop,yRightTop,pointWeight,pointWeight);

stroke(244);
line (xRightTop,yRightTop,xMidBottom,yMidBottom);


}
