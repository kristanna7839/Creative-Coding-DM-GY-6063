class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  Mover(float m, float x , float y ) {
    mass = m;
    location = new PVector(x,y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
  
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void display() {

    noStroke();
    fill(255,0,0,127);
    
    ellipse(location.x,location.y,mass*16,mass*16);
    
    strokeWeight(1);
    stroke(255,0,0,40);
    
    // Draw line from mouse's position to ellipse's position
    line(location.x,location.y,mouseX,mouseY);  

    stroke(100,100,100,20);
    
    // Draw line from the corners to ellipse's position    
    line(location.x,location.y,0,0);
    line(location.x,location.y,width,0);
    line(location.x,location.y,width,height);
    line(location.x,location.y,0,height);

  }

  void checkEdges() {

    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } else if (location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    }

    if (location.y > height) {
      velocity.y *= -1;
      location.y = height;
    }
        if (location.y < 0) {
      velocity.y *= -1;
      location.y = 0;
    }


  }

}



