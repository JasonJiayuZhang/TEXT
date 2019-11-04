PImage qblock;
float rotx = PI/4, roty = rotx = PI/4;

void setup() {
  size(800, 600, P3D);
  qblock = loadImage("bat.png");
  imageMode(CENTER);
  textureMode(NORMAL);
}

void draw() {

  background(255);
  pushMatrix();
  translate(width/2, height/2);
  rotateX(rotx);
  rotateY(roty);
  scale(80);

  texturedbox(qblock);
  popMatrix();
}


void texturedbox(PImage tex) {
  noStroke();
  beginShape(QUADS);

  //FRONT
  texture(tex);
  vertex(-1, -1, 1, 0, 0);
  vertex(1, -1, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(-1, 1, 1, 0, 1);

  //BACK
  vertex(-1, -1, -1, 0, 0);
  vertex(1, -1, -1, 1, 0);
  vertex(1, 1, -1, 1, 1);
  vertex(-1, 1, -1, 0, 1);

  //LEFT
  vertex(-1, -1, 1, 0, 0);
  vertex(1, -1, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(-1, 1, 1, 0, 1);


  //RIGHT
  //vertex(-1, -1, -1, 0, 0);
  //vertex(1, -1, -1, 1, 0);
  //vertex(1, 1, -1, 1, 1);
  //vertex(-1, 1, -1, 0, 1);

  //BOTTOM
  //vertex(-1, -1, -1, 0, 0);
  //vertex(1, -1, -1, 1, 0);
  //vertex(1, 1, -1, 1, 1);
  //vertex(-1, 1, -1, 0, 1);

  //TOP
  //vertex(-1, -1, -1, 0, 0);
  //vertex(1, -1, -1, 1, 0);
  //vertex(1, 1, -1, 1, 1);
  //vertex(-1, 1, -1, 0, 1);
  endShape();
}


void mouseDragged() {
  rotx = rotx+(pmouseY - mouseY)*0.01;
  roty = roty-(pmouseX - mouseX)*0.01;
}
