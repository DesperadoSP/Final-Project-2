abstract class Cell{
  float xPos;
  float yPos;
  float size;
  void move(){
  }
  void display(Player other){
  }
  int eats(Cell other){
    return 3;
  }
  float getSize(){
    return size;
  }
}

class Player extends Cell{
  
  
  
  Player(float x, float y, float size){
    xPos = x;
    yPos = y;
    this.size = size;
  }
  
  int eats(Cell other){
    float d = dist(this.xPos, this.yPos, other.xPos, other.yPos);
    if (d < other.getSize() + this.getSize() ){
      float sum = PI * this.size * this.size + PI * other.getSize() * other.getSize();
      if (this.size > other.size){
      this.size = sqrt (sum / PI);
      return 1;
      }
      else if (other.size > this.size){
        if (this.size != 0){
        other.size = sqrt(sum / PI);
        this.size = 0;
        return 2;
        }
      }
    }
    return 3;
  }
    
  float getSize(){
    return size;
  }
  
  public void display(){
    noStroke();
    fill(255, 102, 0);
    ellipse(xPos, yPos, size *2, size * 2);
    if (size != 0){
    PVector vel = new PVector(mouseX - width/2, mouseY - height/2);
    vel.setMag(1);
    xPos += vel.x;
    yPos += vel.y;
    ellipse(xPos, yPos, size * 2, size * 2);
    }
}
}

class Standard extends Cell {
  
  Standard(float x, float y, float size){
    xPos = x;
    yPos = y;
    this.size = size;
  }
  
  public void display(Player other){
    if (playah.size != 0){
    noStroke();
    if (other.getSize() >= size){
      fill(59, 190, 196);
    }
    else{
      fill(234, 21, 60);
    }
    ellipse(xPos, yPos, size * 2, size * 2);
    
    
  }
  }
   
  int eats(Cell other){
    float d = dist(this.xPos, this.yPos, other.xPos, other.yPos);
    if (d < other.getSize() + this.getSize() ){
      float sum = PI * this.size * this.size + PI * other.getSize() * other.getSize();
      if (this.size > other.size){
      this.size = sqrt (sum / PI);
      return 1;
      }
      else if (other.size > this.size){
        if (this.size != 0){
        other.size = sqrt(sum / PI);
        this.size = 0;
        return 2;
        }
      }
    }
    return 3;
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