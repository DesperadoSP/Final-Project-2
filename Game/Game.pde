import java.util.ArrayList;
import javax.swing.*;
ArrayList<Cell> array;
Player playah;
float zoom = 4;
int level = 1;

public void mouseWheel(MouseEvent event){
  float e = event.getCount();
  zoom += e * 0.06;
}

public void setup(){
  size(1000, 800);
  zoom = 4;
  array = new ArrayList<Cell>();
  playah = new Player(500, 400, 15);
  for (int i = 0; i < 100; i++){
    float x = random(-width, width);
    float y = random(-height, height);
    while ((x > 450) && (x < 550)){
      x = random(-width, width);
    }
    while((y > 350) && (y < 450)){
      y = random(-height, height);
    }
    array.add(new Standard(x, y, random (30) + 2));
  }
}

public void draw(){
  if (playah.size == 0){
    if (JOptionPane.showConfirmDialog(null, "You lost. New Game?", "blown away", JOptionPane.YES_NO_OPTION) == JOptionPane.YES_OPTION){
      setup();
    }
    else {exit();
    }
  }
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
    while ((x > playah.xPos - (2 * playah.xPos)) && (x < playah.xPos + (2 * playah.xPos))){
      x = random(-width, width);
    }
    while((y > playah.yPos - (2 * playah.yPos)) && (y < playah.yPos + (2 * playah.yPos))){
      y = random(-height, height);
    }
    array.add(new Standard(x, y, random(60) + 2));
  }
  for (int i = 1; i < array.size(); i++){
    (array.get(i)).display(playah);
    if (playah.eats(array.get(i)) == 1){
      array.remove(i);
  }
  else if (playah.eats(array.get(i)) == 2){
    array.remove(0);
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