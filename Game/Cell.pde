abstract class Cell{
  float xPos;
  float yPos;
  float size;
  
  
  void move(){
  }
  void display(Player other){
  }
}

class Player extends Cell{
  float easing = 0.01;
  
  Player(float x, float y, float size){
    xPos = x;
    yPos = y;
    this.size = size;
  }
  
  float getSize(){
    return size;
  }
  
  public void display(){
    noStroke();
    fill(255, 102, 0);
    ellipse(xPos, yPos, size, size);
    float targetX = mouseX ;
    float dx = targetX - xPos;
    xPos += dx * easing ;
    float targetY = mouseY ;
    float dy = targetY - yPos;
    yPos += dy * easing ;
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
    ellipse(xPos, yPos, size, size);
  }
   
  void move(){
    
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