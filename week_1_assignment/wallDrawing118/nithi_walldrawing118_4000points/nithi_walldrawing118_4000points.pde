int i = 1;
float margin = 70;  //MARGIN
float x1;
float y1;
float di;
float alph = random(30,155);
float fiftyShadesOfGrey = random(0,50); //THE RANDOM SHADES OF GREY

void setup() {
 size(670,670);
 background(random(220,200));
 smooth();
 //DRAW THE FIRST POINT AT THE FIRST RANDOM POSITION
 di = random(5,15);
 x1 = random(margin,width-margin);
 y1 = random(margin,height-margin);
 fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
 noStroke();
 ellipse(x1,y1,di,di);
}

void draw() {
  // CREATE OTHER POINTS & CONNECTING LINE
  if ( i < 4000 ) {
    // CREATE A NEW RANDOM POSITION
    float x2 = random(margin,width-margin);
    float y2 = random(margin,height-margin);    
    // DRAW THE LINE FROM AN OLD POSITION TO A NEW POSITION
    stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
    line (x1,y1,x2,y2); // DRAW
    
    // NOW X1 and Y1 REFER TO THE NEW POSITION
    x1 = x2;
    y1 = y2;

    // DRAW THE NEW POINT AT THE NEW POSITION
    di = random(2,15);
    fiftyShadesOfGrey = random(0,50);
    alph = random(30,140);
    fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
    noStroke();
    ellipse(x1,y1,di,di); // DRAW   
    i++;     // NEXT
    
    
    
    if (i >= 4000 ){
     smooth();
     fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (x1,y1,565,657);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(565,657,di,di);
     
     
     fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (565,657,579,636);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(579,636,di,di);
     
     
     fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (579,636,576,658);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(576,658,di,di);
     
     
     fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (576,658,590,638);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(590,638,di,di);
     
     
     fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (590,638,578,658);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(578,658,di,di);
     
          fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (578,658,582,658);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(582,658,di,di);
     
               fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (582,658,589,651);
     di = random(3,5);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(592,647,di,di);
     
                    fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (589,651,586,658);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(586,658,di,di);
     
     
                         fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (586,658,592,658);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(592,658,di,di);
     
     
                              fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (592,658,607,635);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(607,635,di,di);
     
     
                                   fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (592,658,607,635);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(607,635,di,di);
     
                                        fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (607,635,595,658);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(695,658,di,di);
     
                                             fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (595,658,600,658);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(600,658,di,di);
     
                                                  fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (600,658,613,635);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(613,635,di,di);
     
     
                                                       fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (613,635,601,658);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(601,658,di,di);
     
     
                                                            fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (601,658,608,649);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(608,649,di,di);
     
          
                                                            fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (601,658,608,649);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(608,649,di,di);
          
                                                            fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (608,649,612,652);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(612,652,di,di);
     
               
                                                            fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (612,652,607,658);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(607,658,di,di);
                                                             fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);;
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (607,658,611,658);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(611,658,di,di);
         
                                                               fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (611,658,618,650);
     di = random(3,5);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(620,647,di,di);
            
                                                               fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (618,650,614,658);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(614,658,di,di);
                 
                                                                  fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (614,658,625,658);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(625,658,di,di);  
     
                                                                       fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (625,658,638,636);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(638,636,di,di);  
     
                                                                            fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (638,636,646,639);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(646,639,di,di);  
     
     
                                                                                 fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (646,639,648,643);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(648,643,di,di);  
                                                                                  fiftyShadesOfGrey = random(50,100);
     alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (648,643,643,647);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(643,647,di,di);      
     
                                                                                       fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (643,647,634,647);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(634,647,di,di);      
     
                                                                                            fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (634,647,628,658);
     di = random(2,4);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(628,658,di,di);      
     
                                                                                               fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (628,658,669,658);
     di = random(4,5);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(635,658,di,di);      
       
                                                                                                   fiftyShadesOfGrey = random(50,100);
    alph = random(200,255);
     stroke(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     line (594,641,618,641);
     di = random(2,3);
     fill(fiftyShadesOfGrey,fiftyShadesOfGrey,fiftyShadesOfGrey, alph);
     noStroke();
     ellipse(594,641,di,di);     
     ellipse(618,641,di,di);      
       
      
     
     }
 }

} 
