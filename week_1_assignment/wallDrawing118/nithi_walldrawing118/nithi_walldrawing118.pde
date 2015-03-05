int i=1; 
float border = 15;  //MARGIN
float x1;
float y1;
float di;

//ADD THE VARIATION OF SHADE
float fiftyShadeOfGrey = random(0,50);
float alph = random(80,200);

void setup() {
 size(600,600);
 background(random(230,255));
 smooth();
 
 //DRAW THE FIRST POINT AT THE FIRST RANDOM POSITION
 di = random(5,15);
 x1 = random(border,width-border);
 y1 = random(border,height-border);
 fill(fiftyShadeOfGrey,fiftyShadeOfGrey,fiftyShadeOfGrey, alph);
 noStroke();
 ellipse(x1,y1,di,di);
 
 
}


void draw() {
  // CREATE OTHER 49 POINTS & CONNECTING LINE
  if ( i < 49 ) {
    // CREATE A NEW RANDOM POSITION
    float x2 = random(border,width-border);
    float y2 = random(border,height-border);
    
    // DRAW THE LINE FROM AN OLD POSITION TO A NEW POSITION
    stroke(fiftyShadeOfGrey,fiftyShadeOfGrey,fiftyShadeOfGrey, alph);
    line (x1,y1,x2,y2); // DRAW
    
    // NOW X1 and Y1 REFER TO THE NEW POSITION
    x1 = x2;
    y1 = y2;

    
    // DRAW THE NEW POINT AT THE NEW POSITION
    di = random(5,15);
    fiftyShadeOfGrey = random(0,50);
    alph = random(80,200);
    fill(fiftyShadeOfGrey,fiftyShadeOfGrey,fiftyShadeOfGrey, alph);
    noStroke();
    ellipse(x1,y1,di,di); // DRAW
    
    // NEXT
    i = i+1;
 }
} 
