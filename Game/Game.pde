import java.util.ArrayList;
ArrayList<Cell> array;
Player playah;

public void setup(){
  size(800, 600);
  array = new ArrayList<Cell>();
  playah = new Player(400, 300, 100);
  for (int i = 0; i < 10; i++){
    array.add(new Standard(random(width), random(height), random (200)));
  }

}

public void draw(){
  background(255);
  translate(width/2-playah.xPos, height/2-playah.yPos);
  playah.display();
  for (Cell a : array){
    a.display(playah);
  }
}