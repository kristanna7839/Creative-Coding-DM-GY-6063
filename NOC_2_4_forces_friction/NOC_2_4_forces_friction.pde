Mover[] movers = new Mover[10];

void setup() {
  size(550, 550);
  randomSeed(10);
  smooth();
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(1, 4), random(width), 0);
  }

}

void draw() {
  background(255);

    PVector wind = new PVector(0, 0);
    PVector wind2 = new PVector(0, 0);

    for (int i = 0; i < movers.length; i++) {

      


    // When mouse is on the right side of the object, force object to the right direction.
    if (mouseX > movers[i].location.x){ 
    wind = new PVector(0.2, 0); 
    
    // When mouse is on the left side of the object, force object to the left direction.
    }else if(mouseX < movers[i].location.x){
    wind = new PVector(-0.2, 0);
    }
    
        // When mouse is on the right side of the object, force object to the right direction.
    if (mouseY > movers[i].location.y){ 
    wind2 = new PVector(0, 0.2); 
    
    // When mouse is on the left side of the object, force object to the left direction.
    }else if(mouseY < movers[i].location.y){
    wind2 = new PVector(0, -0.2);
    }
    
    
   
    PVector gravity = new PVector(0, 0.1*movers[i].mass);

    float c = 0.05;
    PVector friction = movers[i].velocity.get();
    friction.mult(-1); 
    friction.normalize();
    friction.mult(c);

    movers[i].applyForce(friction);
    movers[i].applyForce(wind);
    movers[i].applyForce(wind2);
    movers[i].applyForce(gravity);

    
    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
    
 

  }

  
}







