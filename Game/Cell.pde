abstract class Cell{
  float xPos;
  float yPos;
  float size;
  void move(){
  }
  void display(Player other){
  }
  boolean eats(Cell other){
    return true;
  }
  float getSize(){
    return size;
  }
}

class Player extends Cell{
  float easing = 0.01;
  
  
  Player(float x, float y, float size){
    xPos = x;
    yPos = y;
    this.size = size;
  }
  
  boolean eats(Cell other){
    float d = dist(this.xPos, this.yPos, other.xPos, other.yPos);
    if (d < other.getSize() + this.getSize() ){
      //this.size += other.getSize();
      float sum = PI * this.size * this.size + PI * other.getSize() * other.getSize();
      this.size = sqrt (sum / PI);
      return true;
    }
    else{
      return false;
    }
  }
    
  float getSize(){
    return size;
  }
  
  public void display(){
    noStroke();
    fill(255, 102, 0);
    ellipse(xPos, yPos, size *2, size * 2);
    PVector vel = new PVector(mouseX - width/2, mouseY - height/2);
    vel.setMag(3);
    xPos += vel.x;
    yPos += vel.y;
    ellipse(xPos, yPos, size, size);
    
}
}

class Standard extends Cell {
  
  Standard(float x, float y, float size){
    xPos = x;
    yPos = y;
    this.size = size;
  }
  
  public void display(Player other){
    noStroke();
    if (other.getSize() >= size){
      fill(59, 190, 196);
    }
    else{
      fill(234, 21, 60);
    }
    ellipse(xPos, yPos, size * 2, size * 2);
  }
   
  void move(){
    
  }
  
  float getSize(){
    return size;
  }
}

class Nemocyte extends Cell{
  void move(){
    
  }
  
  void display(){
    
  }
  
}

class Repulsor extends Cell{
  void move(){
    
  }
  
  void display(){
    
  }
}

class Ferax extends Cell{
  void move(){
    
  }
  
  void display(){
    
  }
}

class Ovarium extends Cell{
  void move(){
    
  }
  
  void display(){
    
  }
}