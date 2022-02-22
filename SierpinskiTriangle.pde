public int size = 300;

public void setup() {
  size(400,400);
  background(0);
}

public void draw() {
  //noStroke();
  sierpinski(50,350,300);
}

public void keyPressed() {
  if(key == 'w' && size >= 10) {
    size /= 2;
  }
  if(key == 's' && size <= 200) {
    size *= 2;
  }
}

public void sierpinski(int x, int y, int len) {
  fill((int)(Math.random()*255));
  if(len < size) {
    triangle(x, y, x+len, y, x+len/2, y-len);
  }
  else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }  
}
