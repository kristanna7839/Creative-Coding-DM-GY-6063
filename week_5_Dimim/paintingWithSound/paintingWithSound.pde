import ddf.minim.*; 
Minim minim;
AudioInput input;

 
void setup () {
  size (900, 600);
  smooth();
  minim = new Minim (this);
  input = minim.getLineIn (Minim.STEREO, 512); // Get sound from Line-in
  background (0);
  text("PLEASE MAKE SOME SOUND  |  PRESS ANY KEY TO RESET", 10,height-10);
}
 
void draw () {
  // Calculate the level of sound an put it in the variable "vol"
  float vol = input.mix.level () * width*1.2;  


  // When vol is more than the random value between 0-100,..
  if (vol > random(0,100)){ 
  noFill ();
  stroke (random(100,255),random(100),random(100), random(80,120));
  // ..use the variable of sound volume to draw ellipse
  ellipse (mouseX,mouseY, vol, vol); 
  }
  
  // if the volume is very loud draw the some lines from the borders to mouse position 
  if (vol > 300){ 
  stroke(random(255),20,20,20);
  line (mouseX+random(-2,2),mouseY+random(-2,2),0,mouseY);
  line (mouseX+random(-2,2),mouseY+random(-2,2),width,mouseY);
  line (mouseX+random(-2,2),mouseY+random(-2,2),mouseX,0);  
  line (mouseX+random(-2,2),mouseY+random(-2,2),mouseX,height);
  }
  
  // Reset
  if (keyPressed){
  background(0);
  text("PLEASE MAKE SOME SOUND  |  PRESS ANY KEY TO RESET", 10,height-10);
  }
  
}
