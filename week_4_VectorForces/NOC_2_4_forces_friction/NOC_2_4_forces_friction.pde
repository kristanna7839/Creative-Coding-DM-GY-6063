Mover[] movers = new Mover[1];

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

    PVector elastic = new PVector(0, 0);
    PVector elastic2 = new PVector(0, 0);

    for (int i = 0; i < movers.length; i++) {

      


    // When mouse is on the right side of the object, force object to the right direction.
    if (mouseX > movers[i].location.x){ 
    elastic = new PVector(0.2, 0); 
    
    // When mouse is on the left side of the object, force object to the left direction.
    }else if(mouseX < movers[i].location.x){
    elastic = new PVector(-0.2, 0);
    }
    
    // When mouse is under the object, force object to the downward direction.
    if (mouseY > movers[i].location.y){ 
    elastic2 = new PVector(0, 0.2); 
    
    // When mouse is above the object, force object to the upward direction.
    }else if(mouseY < movers[i].location.y){
    elastic2 = new PVector(0, -0.2);
    }
    
    
   
    PVector gravity = new PVector(0, 0.1*movers[i].mass);

    float c = 0.05;
    PVector friction = movers[i].velocity.get();
    friction.mult(-1); 
    friction.normalize();
    friction.mult(c);

    movers[i].applyForce(friction);
    movers[i].applyForce(elastic);
    movers[i].applyForce(elastic2);

    
    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
    
 

  }

  
}


void mousePressed(){
Mover movers_add = new Mover(random(1, 3), mouseX+random(-20,20), mouseY+random(-20,20));
movers = (Mover[]) append(movers, movers_add);
}




