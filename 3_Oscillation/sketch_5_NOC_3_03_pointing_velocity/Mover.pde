

class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;

  float xoff, yoff;

  float r = 16;

  Mover() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    topspeed = 4;
    xoff = 1000;
    yoff = 0;
  }

  void update() {

    PVector mouse = new PVector(mouseX, mouseY);
    PVector dir = PVector.sub(mouse, location);
    dir.normalize();
    dir.mult(0.5);
    acceleration = dir;

    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }

  void display() {
    
    
    //Solve for angle by using atan().
    /*
    float angle = atan(velocity.y/velocity.x);
 
    stroke(0);
    fill(175);
    pushMatrix();
    rectMode(CENTER);
    translate(location.x,location.y);
    //Rotate according to that angle.
    rotate(angle);
    rect(0,0,30,10);
    popMatrix();
    */
    
    //Sove for angle by using atans2().
   /*
    float angle = atan2(velocity.y,velocity.x);
    stroke(0);
    fill(175);
    pushMatrix();
    rectMode(CENTER);
    translate(location.x,location.y);
    rotate(angle);
    rect(0,0,30,10);
    popMatrix();
    */
    
    //Just use heading()
    ///*
    float theta = velocity.heading();

    stroke(0);
    strokeWeight(2);
    fill(127);
    pushMatrix();
    rectMode(CENTER);
    translate(location.x, location.y);
    rotate(theta);
    rect(0, 0, 30, 10);
    popMatrix();
    //*/
    
  }

  void checkEdges() {

    if (location.x > width) {
      location.x = 0;
    } 
    else if (location.x < 0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    } 
    else if (location.y < 0) {
      location.y = height;
    }
  }
}