abstract class Cell{
  float xPos;
  float yPos;
  float size;
  float easing;
  
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
    easing = 50;
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
    vel.setMag(30 / this.size + 5);
    xPos += vel.x;
    yPos += vel.y;
    ellipse(xPos, yPos, size * 2, size * 2);
    }
}
}

class Standard extends Cell {
  
  Standard(float x, float y, float size){
    easing = 50;
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
  
  Nemocyte(float x, float y, float size){
    easing = 50;
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
  
  void display(Player other){
    if (playah.size != 0){
    noStroke();
    fill(90, 193, 51);
    ellipse(xPos, yPos, size * 2, size * 2);
    if (dist(other.xPos, other.yPos, this.xPos, this.yPos) < (this.size + other.size + 10)){
    PVector vel = new PVector(other.xPos - this.xPos, other.yPos - this.yPos);
    vel.setMag(30 / this.size + 5);
    xPos -= vel.x;
    yPos -= vel.y;
    ellipse(xPos, yPos, size * 2, size * 2);
    }
    else{
    PVector vel = new PVector(random(-width, width), random(-height, height));
    vel.setMag(30 / this.size + 5);
    xPos += vel.x;
    yPos += vel.y;
    ellipse(xPos, yPos, size * 2, size * 2);
  }
  }
  }
}


class Ferax extends Cell{
  
  Ferax(float x, float y, float size){
    easing = 50;
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
  void display(Player other){
    if (playah.size != 0){
    noStroke();
    fill(5, 5, 5);
    ellipse(xPos, yPos, size * 2, size * 2);
    if (this.size > other.size){
    PVector vel = new PVector(other.xPos - this.xPos, other.yPos - this.yPos);
    vel.setMag(30 / this.size);
    xPos += vel.x;
    yPos += vel.y;
    ellipse(xPos, yPos, size * 2, size * 2);
    }
    else if (dist(other.xPos, other.yPos, this.xPos, this.yPos) < (this.size + other.size + 10)){
    PVector vel = new PVector(other.xPos - this.xPos, other.yPos - this.yPos);
    vel.setMag(30 / this.size + 5);
    xPos -= vel.x;
    yPos -= vel.y;
    ellipse(xPos, yPos, size * 2, size * 2);
    }
    else{
    PVector vel = new PVector(random(-width, width), random(-height, height));
    vel.setMag(30 / this.size + 5);
    xPos += vel.x;
    yPos += vel.y;
    ellipse(xPos, yPos, size * 2, size * 2);
  }
  }
}
}

class Ovarium extends Cell{
  
  Ovarium(float x, float y, float size){
    easing = 50;
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
  void display(Player other){
    if (other.size != 0){
    noStroke();
    fill(187, 36, 198);
    ellipse(xPos, yPos, size * 2, size * 2);
    PVector vel = new PVector(random(-width, width), random(-height, height));
    vel.setMag(30 / this.size + 5);
    xPos += vel.x;
    yPos += vel.y;
    ellipse(xPos, yPos, size * 2, size * 2);
    
  }
  }
}