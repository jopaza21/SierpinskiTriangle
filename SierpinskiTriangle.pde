import java.util.HashMap;
HashMap <String, Boolean> keys = new HashMap <String, Boolean>();

int base = 300;
int x = 100;
public void setup() {
  size(1200, 800);
  background(0);
  noStroke();
  keys.put("a", false);
  keys.put("d", false);
}
public void draw() {
  background(0);
  //fill((int)(Math.random() * 255));
  checkKeyVal();
  sierpinski(x, 700, 100);
}
public void sierpinski(int x, int y, int len) {
  if(len <= base) {
    triangle(x, y, x+len, y, x+len/2, y-len);
  }
  else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
public void keyPressed() {
  switch(key) {
    case 'a':
      keys.put("a", true);
      break;
    case 'd':
      keys.put("d", true);
      break;
  }
}
public void keyReleased() {
  switch(key) {
    case 'a':
      keys.put("a", false);
      break;
    case 'd':
      keys.put("d", false);
      break;
  }
}
public void checkKeyVal() {
  if(keys.get("a") == true && x >= 10) {
    x -= 10;
  }
  if(keys.get("d") == true && x <= 1090) {
    x += 10;
  }
}
