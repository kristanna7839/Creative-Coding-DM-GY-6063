/*
  The detectBeat() function decides whether we have a beat or not
  based on amplitude level and Beat Detect Variables.
 */
var soundFile;
var amplitude;
var particles = [];
var backgroundColor;
var myWidth;
var myHeight;

/* 
 Beat Detect Variables
*/
// how many draw loop frames before the beatCutoff starts to decay
// so that another beat can be triggered.
// frameRate() is usually around 60 frames per second,
// so 20 fps = 3 beats per second, meaning if the song is over 180 BPM,
// we wont respond to every beat.
var beatHoldFrames = 20;

// what amplitude level can trigger a beat?
var beatThreshold = 0.11; 

// When we have a beat, beatCutoff will be reset to 1.1*beatThreshold, and then decay
// Level must be greater than beatThreshold and beatCutoff before the next beat can trigger.
var beatCutoff = 0;
var beatDecayRate = 0.95; // how fast does beat cutoff decay?
var framesSinceLastbeat = 0; // once this equals beatHoldFrames, beatCutoff starts to decay.

var videoInput;



function preload() {
  soundFile = loadSound('../../music/music.mp3');
}

function setup() {



myWidth = 600;
myHeight = 450;


c = createCanvas(myWidth, myHeight);
  noStroke();

  amplitude = new p5.Amplitude();
  soundFile.play();


  



// dkjfslkafjdskl;fajskdlfjaklsd;jlka;jdkl;asjfklsdjfakl;


  // setup camera capture
        videoInput = createCapture(VIDEO);
        videoInput.size(myWidth, myHeight);
        videoInput.position((windowWidth/2)-(myWidth/2), (windowHeight/2)-(myHeight/2));
        //videoInput.hide();
        //fill(0);

        
        // setup canvas
        var cnv = createCanvas(myWidth, myHeight);
        cnv.position((windowWidth/2)-(myWidth/2), (windowHeight/2)-(myHeight/2));

        // setup tracker
        ctracker = new clm.tracker();
        ctracker.init(pModel);
        ctracker.start(videoInput.elt);

        noStroke();


//fjkdslfjasdlk;fjaklsdfjklasdfjksladjfklsadjfkl;asdjfkl;ajsdflks;a



  // make a single particle.
  //particles.push( new Particle() );


}

function draw() {


  var level = amplitude.getLevel();
  detectBeat(level);

  // for (var i = 0; i < particles.length; i++) {
  //   particles[i].update(level);
  //   particles[i].draw();
  // }



//fjkdsljfakl;sjfksl;afjls;afjls;kdfjksa;lfjlka;sdjfkals;
   clear();
  fill(backgroundColor);
  rect(0,0,windowWidth,windowHeight);

        // get array of face marker positions [x, y] format
        var positions = ctracker.getCurrentPosition();
        
        for (var i=0; i<positions.length; i++) {

          // set the color of the ellipse based on position on screen
          fill(map(positions[i][0], myWidth*0.33, myWidth*0.66, 0, 255), map(positions[i][1], myHeight*0.33, myHeight*0.66, 0, 255), 255,100);
          // draw ellipse at each position point
          noStroke();
          ellipse(positions[i][0], positions[i][1], level*10, level*10);

          // draw Eye Balls
          ellipse(positions[27][0], positions[27][1], 5, 5);
          ellipse(positions[32][0], positions[32][1], 5, 5);

          // lines to eyes
          stroke(255,random(255),255,15);
          line(positions[i][0], positions[i][1], positions[27][0], positions[27][1]);
          line(positions[i][0], positions[i][1], positions[32][0], positions[32][1]);

          stroke(map(positions[i][0], myWidth*0.33, myWidth*0.66, 0, 255), map(positions[i][1], myHeight*0.33, myHeight*0.66, 0, 255), 255,3);
          noFill();
          ellipse(positions[27][0], positions[27][1], 15,15);
          ellipse(positions[32][0], positions[32][1], 15,15);

          // draw Nose
          stroke(random(255),random(255),255,1);
          line(positions[33][0], positions[33][1], positions[41][0], positions[41][1]);
          line(positions[41][0], positions[41][1], positions[62][0], positions[62][1]);
          strokeWeight(1);


        }


          for (var k=15; k<23; k++) {
          // set the color of the ellipse based on position on screen
          strokeWeight(1);
          stroke(map(positions[k][0], myWidth*0.33, myWidth*0.66, 0, 255), map(positions[k][1], myHeight*0.33, myHeight*0.66, 0, 255), 255,160);
          // draw ellipse at each position point
          line(positions[k][0], positions[k][1], positions[k][0], positions[k][1]-(level*200));



        }


          noFill();
          stroke(255,random(255),255,random(100));
          ellipse(positions[27][0], positions[27][1], level*100, level*100);
          ellipse(positions[32][0], positions[32][1], level*100, level*100);
          stroke(255,random(255),random(255),random(20));
          ellipse(positions[27][0], positions[27][1], level*250, level*250);
          ellipse(positions[32][0], positions[32][1], level*250, level*250);
          stroke(255,random(255),255,random(5));
          ellipse(positions[27][0], positions[27][1], level*500, level*500);
          ellipse(positions[32][0], positions[32][1], level*500, level*500);

//fjdkslafjskdljfkalsdjfklasjdfklasdjfklasdjfklsajfklasj;a










}

function detectBeat(level) {
  if (level  > beatCutoff && level > beatThreshold){
    onBeat();
    beatCutoff = level *1.1;
    framesSinceLastbeat = 0;
  } else{
    if (framesSinceLastbeat <= beatHoldFrames){
      framesSinceLastbeat ++;
    }
    else{
      beatCutoff *= beatDecayRate;
      beatCutoff = Math.max(beatCutoff, beatThreshold);
    }
  }
}


function onBeat() {
  backgroundColor = color( 5, random(5,10), random(5,20), 200);
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}

// ===============
// Particle class
// ===============

var Particle = function() {
  this.position = createVector( random(0, width), height/2 );
  this.scale = random(1, 2);
  this.speed = random(0, 10);
  this.color = color( random(0,255), random(0,255), random(0,255) );
};

Particle.prototype.update = function(levelRaw) {
  this.diameter = map(levelRaw, 0, 1, 0, 400) * this.scale;
};

Particle.prototype.draw = function() {
  fill(this.color);
  ellipse(
    this.position.x, this.position.y,
    this.diameter, this.diameter
  );
};