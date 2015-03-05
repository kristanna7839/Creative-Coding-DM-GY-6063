import ddf.minim.*; 
Minim minim;
AudioInput input;

float x1;
float y1;
 
void setup () {
  size (900, 900);
  smooth();
  minim = new Minim (this);
  input = minim.getLineIn (Minim.STEREO, 512); // Get sound from Line-in
  background (0);
}
 
void draw () {
  // Calculate the level of sound an put it in the variable "vol"
  float vol = input.mix.level () * width;  
  
  x1 = mouseX;
  y1 = mouseY;
  rectMode(CENTER);
  noFill ();
  stroke (255, 45);
  
  // Use the variable of sound volume to draw rectangulars
  rect (x1, y1, vol, vol); 
}
