int base = 300;
public void setup() {
  size(800, 800);
  background(0);
  noStroke();
}
public void draw() {
  //background(0);
  fill((int)(Math.random() * 255));
  sierpinski(100, 700, 600);
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
public void keyPressed(){
  if(keyCode == UP && base > 5){
    base /= 2;
  }
  if(keyCode == DOWN && base < 600){
    base *= 2;
  }
}
