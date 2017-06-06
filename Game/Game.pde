import java.util.ArrayList;
import javax.swing.*;
ArrayList<Cell> array;
Player playah;
float zoom = 3;




public void mouseWheel(MouseEvent event){
  float e = event.getCount();
  zoom += e * 0.03;
  
 
}
  

public void setup(){
  size(1400, 1000);
 
  array = new ArrayList<Cell>();
  
  playah = new Player(700, 500, 10 );
  for (int i = 0; i < 100; i++){
    float x = random(-width, width);
    float y = random(-height, height);
    while ((x > 680) && (x < 720)){
      x = random(-width, width);
    }
    while((y > 480) && (y < 520)){
      y = random(-height, height);
    }
    array.add(new Standard(x, y, random (64)));
  }

}

public void draw(){
  
  background(255);
  
  translate(width / 2, height / 2);
  
  if ((playah.size != 0)){
  scale(zoom);
  }
  translate(-playah.xPos, -playah.yPos);
  
  playah.display();
  while (array.size() < 50){
    float x = random(-width, width);
    float y = random(-height, height);
    while ((x > 600) && (x < 800)){
      x = random(-width, width);
    }
    while((y > 400) && (y < 600)){
      y = random(-height, height);
    }
    array.add(new Standard(x, y, random(64)));
  }
  for (int i = 1; i < array.size(); i++){
    (array.get(i)).display(playah);
    if (playah.eats(array.get(i)) == 1){
      array.remove(i);
  }
  else if (playah.eats(array.get(i)) == 2){
    array.remove(0);
    showMessageDialog(null, "Rekt");
  }
  }
  for (int i = 1; i < array.size(); i++){
    for (int j = 1; j < array.size(); j++){
    if ((i != j) && (i < array.size())){
      if ((array.get(i)).eats(array.get(j)) == 1){
        array.remove(j);
      }
      else if ((array.get(i)).eats(array.get(j)) == 2){
        array.remove(i);
      }
    }
  }
  }
 

}