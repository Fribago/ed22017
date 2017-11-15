int a, i, j, x, y;
boolean click;


void setup() {
  size(700, 500);
}

void draw() {

  background(#FFFFFF);
  a++;
  translate(width/2, (height/2));

  if (click == false) {
    translate(0, 30);
    textSize(15);
    translate(0, -150);
    seno();
    coseno();
    fill(0);
    text(radians(a), -275, 0);
    text(int(radians(a)/PI), -275, 25);
    stroke(0, 0, 0, 50);
    line(-200, 0, 200, 0);
    translate(0, 150);
    radseno();
    radcoseno();
    fill(0);
    text(a, -275, 0);
    text(int((a)/PI), -280, 25);
    stroke(0, 0, 0, 50);
    line(-200, 0, 200, 0);

    textSize(30);
    text("sin(a*b)*c", -100, 150);
  } else {
    stroke(0);
    clocky();
  }
}
void clocky() {

  
  
  rotate(radians(a));
  fill(0, 255, 0);
  ellipse(0, 0, 30, 30);
  line(0, 0, 100, 0);
  pushMatrix();
  rotate(radians(-a*.3));

  line(0, 0, 50, 0);
  popMatrix();
  pushMatrix();
  translate(100, 0);

  fill(0, 255, 0);
  ellipse(0, 0, 30, 30);
  rotate(radians(a*1.5));
  line(0, 0, 50, 0);
  popMatrix();
  
}

void seno() {

  for (i = -200; i < 200; i = i + 5) {

    stroke(255, 0, 0);
    line(i, (sin(radians(a*2-i))*45)-2, i, sin(radians(a*2-i))*45);
  }
}

void coseno() {

  for (i = -200; i < 200; i = i + 5) {

    stroke(0, 0, 255);
    line(i, (cos(radians(a*2-i))*45)-2, i, cos(radians(a*2-i))*45);
  }
}
void tangente() {

  for (i = -200; i < 200; i = i + 5) {

    line(i, tan(radians(a*2-i))*30, i, tan(radians(a*2-i))*45);
    line(-200, 0, 200, 0);
  }
}
void radseno() {

  for (i = -200; i < 200; i = i + 5) {

    stroke(255, 0, 0);
    line(i, (sin((a*2-i))*45)-2, i, sin((a*2-i))*45);
  }
}

void radcoseno() {

  for (i = -200; i < 200; i = i + 5) {

    stroke(0, 0, 255);
    line(i, (cos((a*2-i))*45)-2, i, cos((a*2-i))*45);
  }
}
void mouseClicked() {
  if (mouseButton == LEFT) {
    click = !click;
  }
}
