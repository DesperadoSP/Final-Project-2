import java.util.ArrayList;
ArrayList<Cell> array;
Player playah;

public void setup(){
  size(1400, 1000);
  array = new ArrayList<Cell>();
  playah = new Player(700, 500, 64);
  for (int i = 0; i < 10; i++){
    array.add(new Standard(random(width), random(height), 16));
  }

}

public void draw(){
  background(255);
  translate(width/2-playah.xPos, height/2-playah.yPos);
  playah.display();
  for (int i = 1; i < array.size(); i++){
    (array.get(i)).display(playah);
    if (playah.eats(array.get(i))){
      array.remove(i);
  }
}
}