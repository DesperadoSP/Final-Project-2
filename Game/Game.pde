import java.util.ArrayList;
ArrayList<Cell> array;
Player playah;
float zoom = 1;

public void setup(){
  size(1400, 1000);
  array = new ArrayList<Cell>();
  playah = new Player(700, 500, 64);
  for (int i = 0; i < 50; i++){
    float x = random(-width, width);
    float y = random(-height, height);
    while ((x > 600) && (x < 800)){
      x = random(-width, width);
    }
    while((y > 400) && (y < 600)){
      y = random(-height, height);
    }
    array.add(new Standard(x, y, 16));
  }

}

public void draw(){
  background(255);
  translate(width / 2, height / 2);
  float newzoom = 64 / playah.size;
  zoom = lerp(zoom, newzoom, 0.1);
  if (playah.size != 0){
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
    array.add(new Standard(x, y, random(100)));
  }
  for (int i = 1; i < array.size(); i++){
    (array.get(i)).display(playah);
    if (playah.eats(array.get(i)) == 1){
      array.remove(i);
  }
  else if (playah.eats(array.get(i)) == 2){
    array.remove(0);
    PFont f = createFont("Arial", 16, true);
    textFont(f, 16);
    fill(0);
    text("rekt", 700, 500);
    
  }
 
}
}