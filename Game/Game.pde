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
  zoom = 3;
  array = new ArrayList<Cell>();
  playah = new Player(500, 400, 15);
  if (level == 1){
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
  else if (level == 2){
    for (int i = 0; i < 100; i++){
    float x = random(-width, width);
    float y = random(-height, height);
    while ((x > 450) && (x < 550)){
      x = random(-width, width);
    }
    while((y > 350) && (y < 450)){
      y = random(-height, height);
    }
    float rand = random(10);
    if (rand < 8){
    array.add(new Standard(x, y, random(40) + 2));
    }
    else {
      array.add(new Ovarium(x, y, random(40) + 2));
    }
    }
  }
  else if (level == 3){
    for (int i = 0; i < 100; i++){
    float x = random(-width, width);
    float y = random(-height, height);
    while ((x > 450) && (x < 550)){
      x = random(-width, width);
    }
    while((y > 350) && (y < 450)){
      y = random(-height, height);
    }
    float rand = random(15);
    if (rand < 10){
    array.add(new Standard(x, y, random(50) + 2));
    }
    else if(rand < 13){
      array.add(new Ovarium(x, y, random(50) + 2));
    }
    else{
      array.add(new Nemocyte(x, y, random(50) + 2));
    }
  }
  }
  else if (level == 4){
    for (int i = 0; i < 100; i++){
    float x = random(-width, width);
    float y = random(-height, height);
    while ((x > 450) && (x < 550)){
      x = random(-width, width);
    }
    while((y > 350) && (y < 450)){
      y = random(-height, height);
    }
    float rand = random(20);
    if (rand < 13){
    array.add(new Standard(x, y, random(60) + 2));
    }
    else if(rand < 15){
      array.add(new Ovarium(x, y, random(60) + 2));
    }
    else if(rand < 18){
      array.add(new Nemocyte(x, y, random(60) + 2));
    }
    else{
    array.add(new Ferax(x, y, random(60) + 2));
  }
  }
  }
  else if (level == 5){
    for (int i = 0; i < 100; i++){
    float x = random(-width, width);
    float y = random(-height, height);
    while ((x > 450) && (x < 550)){
      x = random(-width, width);
    }
    while((y > 350) && (y < 450)){
      y = random(-height, height);
    }
    float rand = random(20);
    if (rand < 13){
    array.add(new Standard(x, y, random(70) + 2));
    }
    else if(rand < 15){
      array.add(new Ovarium(x, y, random(70) + 2));
    }
    else if(rand < 18){
      array.add(new Nemocyte(x, y, random(70) + 2));
    }
    else{
    array.add(new Ferax(x, y, random(70) + 2));
  }
  }
  }
}

public void draw(){
  if ((level == 1) && (playah.size > 100)){
    JOptionPane.showMessageDialog(null, "You won! Level 2 next.");
    level = 2;
    setup();
  }
  else if ((level == 2) && (playah.size > 120)){
    JOptionPane.showMessageDialog(null, "You won! Level 3 next.");
    level = 3;
    setup();
  }
  else if ((level == 3) && (playah.size > 135)){
    JOptionPane.showMessageDialog(null, "You won! Level 4 next.");
    level = 4;
  setup();
  }
  else if ((level == 4) && (playah.size > 150)){
    JOptionPane.showMessageDialog(null, "You won! Level 5 next.");
    level = 5;
  }
  else if ((level == 5) && (playah.size > 165)){
    if (JOptionPane.showConfirmDialog(null, "You won! New Game?", "Gratz!!", JOptionPane.YES_NO_OPTION) == JOptionPane.YES_OPTION){
      level = 1;
      setup();
    }
    else {
      exit();
    }
  }
  if (playah.size == 0){
    if (JOptionPane.showConfirmDialog(null, "You lost. New Game?", "blown away", JOptionPane.YES_NO_OPTION) == JOptionPane.YES_OPTION){
      level = 1;
      setup();
    }
    else {
      exit();
    }
  }
  background(255);
  translate(width / 2, height / 2);
  if ((playah.size != 0)){
  scale(zoom);
  }
  translate(-playah.xPos, -playah.yPos);
  playah.display();
  if (level == 1){
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
  }
  else if (level == 2){
    while (array.size() < 50){
    float x = random(-width, width);
    float y = random(-height, height);
    while ((x > playah.xPos - (2 * playah.xPos)) && (x < playah.xPos + (2 * playah.xPos))){
      x = random(-width, width);
    }
    while((y > playah.yPos - (2 * playah.yPos)) && (y < playah.yPos + (2 * playah.yPos))){
      y = random(-height, height);
    }
    float rand = random(10);
    if (rand < 8){
    array.add(new Standard(x, y, random(70) + 2));
    }
    else {
      array.add(new Ovarium(x, y, random(70) + 2));
    }
    }
  }
  else if (level == 3){
    while (array.size() < 50){
    float x = random(-width, width);
    float y = random(-height, height);
    while ((x > playah.xPos - (2 * playah.xPos)) && (x < playah.xPos + (2 * playah.xPos))){
      x = random(-width, width);
    }
    while((y > playah.yPos - (2 * playah.yPos)) && (y < playah.yPos + (2 * playah.yPos))){
      y = random(-height, height);
    }
     float rand = random(15);
    if (rand < 10){
    array.add(new Standard(x, y, random(80) + 2));
    }
    else if(rand < 13){
      array.add(new Ovarium(x, y, random(80) + 2));
    }
    else{
      array.add(new Nemocyte(x, y, random(80) + 2));
    }
  }
}
  else if (level == 4){
    while (array.size() < 50){
    float x = random(-width, width);
    float y = random(-height, height);
    while ((x > playah.xPos - (2 * playah.xPos)) && (x < playah.xPos + (2 * playah.xPos))){
      x = random(-width, width);
    }
    while((y > playah.yPos - (2 * playah.yPos)) && (y < playah.yPos + (2 * playah.yPos))){
      y = random(-height, height);
    }
    float rand = random(20);
    if (rand < 13){
    array.add(new Standard(x, y, random(90) + 2));
    }
    else if(rand < 15){
      array.add(new Ovarium(x, y, random(90) + 2));
    }
    else if(rand < 18){
      array.add(new Nemocyte(x, y, random(90) + 2));
    }
    else{
    array.add(new Ferax(x, y, random(90) + 2));
  }
  }
  }
  else if (level == 5){
    while (array.size() < 50){
    float x = random(-width, width);
    float y = random(-height, height);
    while ((x > playah.xPos - (2 * playah.xPos)) && (x < playah.xPos + (2 * playah.xPos))){
      x = random(-width, width);
    }
    while((y > playah.yPos - (2 * playah.yPos)) && (y < playah.yPos + (2 * playah.yPos))){
      y = random(-height, height);
    }
    float rand = random(20);
    if (rand < 13){
    array.add(new Standard(x, y, random(100) + 2));
    }
    else if(rand < 15){
      array.add(new Ovarium(x, y, random(100) + 2));
    }
    else if(rand < 18){
      array.add(new Nemocyte(x, y, random(100) + 2));
    }
    else{
    array.add(new Ferax(x, y, random(100) + 2));
  }
  }
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