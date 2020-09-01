
float angleY, angleX, angleWheel;
boolean acelerar;
boolean spin;
float rotateVar, rightRotate;
PImage carTexture, wheelTexture, neonTexture, bodyTexture, windowTexture, placaTexture, bg, parrillaTexture, faroTsuruD, faroTsuruI;
PShape placaBox, baseBox, wheel;
void settings(){
  size(1200,497,P3D); 
  
  angleY = 0;
  angleX = 0;
  angleWheel = 0;
}
void setup(){
  
  carTexture = loadImage("car.jpg");
  neonTexture = loadImage("neon.jpg");
  bodyTexture = loadImage("body.jpg");
  placaTexture = loadImage("placa.jpg");
  windowTexture = loadImage("window.jpg");
  wheelTexture = loadImage("wheel.jpg");
  parrillaTexture = loadImage("parrilla.png");
  bg = loadImage("fondo.jpg");
  faroTsuruD = loadImage("faroTsuruDerecho.jpg");
  faroTsuruI = loadImage("faroTsuruIzquierdo.jpg");
  baseBox = createShape(BOX, 350, 40, 845);
  placaBox = createShape(BOX, 40, 30, 5);
  wheel = createShape(SPHERE, 60);
  acelerar = false;
  baseBox.setTexture(carTexture);
  placaBox.setTexture(placaTexture);
  wheel.setTexture(wheelTexture);
  
  baseBox.setStroke(false);
  placaBox.setStroke(false);
  wheel.setStroke(false);
  textureMode(NORMAL);
  
  spin=false;
  rotateVar=0;
  rightRotate=0.03f;
  
}

void draw(){
  
  //background(135, 235, 164);
  background(bg);
  
  
  noFill();
  stroke(0,0,0);
  //angleY+=0.01f;
   
  
  //vidrio interior
  //translate(500,200,-300);
  translate(width/2,height/2,-300);
  rotateX(angleX);
  
  rotateY(rotateVar);
  if(spin){
    rotateVar+=rightRotate;
  }
  translate(-300,-150,200);
  beginShape();
    texture(windowTexture);
    vertex(100,100,-40,0,0);
    vertex(400,100,-40,1,0);
    vertex(410,200,5,1,1);
    vertex(90,200,5,0,1);
  endShape(CLOSE);
  
  //vidrio laterales
  beginShape();
  //esquina del vidrio
    texture(windowTexture);
    vertex(95,100,-40,0,0);
    vertex(405,100,-40,1,0);
    vertex(415,200,5,1,1);
    vertex(85,200,5,0,1);
  endShape(CLOSE);
  
  beginShape();
    texture(windowTexture);
    vertex(90,95,-40,0,0);
    vertex(410,95,-40,1,0);
    vertex(420,205,5,1,1);
    vertex(80,205,5,0,1);
  endShape(CLOSE);
  
  //parabrisas completo
  beginShape();
    texture(windowTexture);
  //esquina superior izquierda
  vertex(90,95,-40,0,0);
  //esquina superior derecha
  vertex(410,95,-40,1,0);
  //esquina inferior derecha
  vertex(420,205,5,1,1);
  //esquina inferior izquierda
  vertex(80,205,5,0,1);
  endShape(CLOSE);
  
  
  noStroke();
  //cofre
  beginShape();
    texture(bodyTexture);
    vertex(80,205,5,0,0);
    vertex(420,205,5,0,0);
    vertex(420,205,200,1,0);
    vertex(340,205,220,1,1);
    vertex(160,205,220,0,1);
    vertex(80,205,200,0,1);
  endShape(CLOSE);
  
  //Calcomania cofre
  pushMatrix();
  stroke(0);
  translate(200,200,160);
  rotateX(radians(90));
  calculateTrianglePoints(0,0,50,-100,100,0, 4);
  popMatrix();
  
  noFill();
  stroke(0,0,0);
  beginShape(LINES);
  //lineas sobre el cofre
  vertex(340,205,220);
  vertex(380,205,5);
  vertex(160,205,220);
  vertex(120,205,5);
  //
  endShape(CLOSE);
  noStroke();
  
  //------
  
  //parrilla
  beginShape();
    texture(parrillaTexture);
   vertex(160,205,220,0,0);
   vertex(340,205,220,1,0);
   vertex(340,245,220,1,1);
   vertex(160,245,220,0,1);
  endShape(CLOSE);
  
  pushMatrix();
  stroke(255);
  translate(250,290,210);
  drawCircle(0,0,20, 0);
  popMatrix();
  
  
  
  //faro derecho
   beginShape();
   texture(faroTsuruD);
   vertex(340,205,220,0,0);
   vertex(340,245,220,1,0);
   vertex(420,245,200,1,1);
   vertex(420,205,200,0,1);
  endShape(CLOSE);
  
  //faro derecho lateral
   beginShape();
   texture(bodyTexture);
   vertex(420,205,200,0,0);
   vertex(420,245,200,1,0);
   vertex(430,245,200,1,1);
    vertex(430,215,200,0,1);
  endShape(CLOSE);
  
  //barra derecha lateral superior
   beginShape();
   texture(bodyTexture);
   vertex(420,205,200,0,0);
    vertex(430,215,200,1,0);
    vertex(430,215,5,1,1);
    vertex(420,205,5,0,1);
  endShape(CLOSE);
  
  //barra derecha lateral inferior
   beginShape();
   texture(bodyTexture);
     vertex(430,215,200,0,0);
     vertex(430,215,5,1,0);
     vertex(430,245,5,1,1);
     vertex(430,245,200,0,1);
  endShape(CLOSE);
  
   //faro izquierdo
   beginShape();
   texture(faroTsuruI);
   vertex(160,205,220,0,0);
   vertex(160,245,220,1,0);
   vertex(80,245,200,1,1);
   vertex(80,205,200,0,1);
  endShape(CLOSE);
  
  //faro izquierdo lateral
   beginShape();
   texture(bodyTexture);
   vertex(80,205,200,0,0);
   vertex(80,245,200,1,0);
   vertex(70,245,200,1,1);
   vertex(70,215,200,0,1);
  endShape(CLOSE);
  
   //barra izquierda lateral superior
   beginShape();
   texture(bodyTexture);
   vertex(80,205,200,0,0);
   vertex(70,215,200,1,0);
   vertex(70,215,5,1,1);
   vertex(80,205,5,0,1);
  endShape(CLOSE);
  
  
  //barra izquierda lateral inferior
   beginShape();
   texture(bodyTexture);
   vertex(70,215,200,0,0);
   vertex(70,215,5,1,0);
   vertex(70,245,5,1,1);
   vertex(70,245,200,0,1);
  endShape(CLOSE);
  
  //defensa techo
  beginShape();
   texture(bodyTexture);
   vertex(70,245,200,0,0);
   vertex(430,245,200,1,0);
   vertex(430,245,230,1,1);
   vertex(70,245,230,0,1);
  endShape(CLOSE);
  
  //defensa frente
  beginShape();
   texture(bodyTexture);
   vertex(430,245,230,0,0);
   vertex(70,245,230,1,0);
   vertex(70,265,230,1,1);
   vertex(430,265,230,0,1);
  endShape(CLOSE);
  
  
  //defensa izquierda
  beginShape();
   texture(bodyTexture);
   vertex(70,245,230,0,0);
   vertex(70,265,230,1,0);
   vertex(70,265,5,1,1);
   vertex(70,245,5,0,1);
  endShape(CLOSE);
  
  //defensa derecha
  beginShape();
   texture(bodyTexture);
   vertex(430,245,230,0,0);
   vertex(430,265,230,1,0);
   vertex(430,265,5,1,1);
   vertex(430,245,5,0,1);
  endShape(CLOSE);
  
  
   //defensa superior trasera
  beginShape();
   texture(bodyTexture);
   vertex(70,245,-640,0,0);
   vertex(420,245,-640,1,0);
   vertex(420,215,-640,1,1);
   vertex(70,215,-640,0,1);
  endShape(CLOSE);
  
  
   //defensa superior trasera vidrio
  beginShape();
   texture(bodyTexture);
   vertex(420,215,-640,0,0);
   vertex(70,215,-640,1,0); 
   vertex(90,205,-640,1,1);
   vertex(410,205,-640,0,1);
  endShape(CLOSE);
  
   
  //------
  
 //techo frontal
  beginShape();
    texture(bodyTexture);
    vertex(90,95,-40,0,0);
    vertex(410,95,-40,1,0);
    vertex(410,95,-140,1,1);
    vertex(90,95,-140,0,1);
  endShape(CLOSE);
  
  //techo trasero
  beginShape();
    texture(bodyTexture);
    vertex(410,95,-140,0,0);
    vertex(90,95,-140,1,0);
    vertex(90,205,-640,1,1);
    vertex(410,205,-640,0,1);
  endShape(CLOSE);
  
  //lateral izq
  beginShape();
    texture(bodyTexture);
    vertex(410,95,-40,0,0);
    vertex(410,95,-140,1,0);
    vertex(410,205,-640,1,1);
    vertex(420,205,5,0,1);
  endShape(CLOSE);
  
  
  //barra lateral izq 
  beginShape();
   texture(bodyTexture);
   vertex(420,205,5,0,0);
   vertex(410,205,-640,1,0);
   vertex(420,215,-640,1,1);
   vertex(430,215,5,0,1);
  endShape(CLOSE);
  
  //lateral izq inferior
  beginShape();
   texture(bodyTexture);
   vertex(420,215,-640,0,0);
   vertex(430,215,5,1,0);
   vertex(430,245,5,1,1);
   vertex(420,245,-640,0,1);
  endShape(CLOSE);
  
  //lateral izq inferior inferior
  beginShape();
   texture(neonTexture);
   vertex(430,245,5,0,0);
   vertex(420,245,-640,1,0);
   vertex(420,265,-640,1,1);
   vertex(430,265,5,0,1);
  endShape(CLOSE);
  
  //lateral derecho
  beginShape();
    texture(bodyTexture);
    vertex(90,95,-40,0,0);
    vertex(90,95,-140,1,0);
    vertex(90,205,-640,1,1);
    vertex(80,205,5,0,1);
  endShape(CLOSE);
  
  //barra lateral derecha
  beginShape();
    texture(bodyTexture);
    vertex(90,205,-640,0,0);
    vertex(80,205,5,1,0);
    vertex(70,215,5,1,1);
    vertex(70,215,-640,0,1);
  endShape(CLOSE);
  
  
 //lateral derecha inferior
 beginShape();
   texture(bodyTexture);
   vertex(70,215,5,0,0);
   vertex(70,245,5,1,0);
   vertex(70,245,-640,1,1);
   vertex(70,215,-640,0,1);
 endShape(CLOSE);
 
  //lateral derecha inferior inferior
 beginShape();
   texture(neonTexture);
   vertex(70,245,5,0,0);
   vertex(70,245,-640,1,0);
   vertex(70,265,-640,1,1);
   vertex(70,265,5,1,0);
 endShape(CLOSE);
  
  
  //trasero
 beginShape();
   texture(neonTexture);
   vertex(70,245,-640,0,0);
   vertex(420,245,-640, 1, 0);
   vertex(420,265,-640, 1, 1);
   vertex(70,265,-640, 0, 1);
 endShape(CLOSE);
 
 
 
 //--recorrer la base al centro del carro
 translate(245,285,-217);
  noFill();
  //base del tsuru tuneado +100 papu lince
  shape(baseBox);
  //--
  
  
  //** box para trasero
  translate(0,0,-423);
  noFill();
  //placa trasera
  shape(placaBox);
  //**
  beginShape();
  endShape();
  
  //  LLANTAS
  translate(0, 20, 0);
  pushMatrix();
    translate(170, 40, 200);
    rotateX(90.0f);
    rotateZ(90.0f);
    rotateY(angleWheel);
    shape(wheel);
  popMatrix();
  
  pushMatrix();
    translate(-170, 40, 200);
    rotateX(90.0f);
    rotateZ(90.0f);
    rotateY(angleWheel);
    shape(wheel);
  popMatrix();
  
  pushMatrix();
    translate(170, 40, 700);
    rotateX(90.0f);
    rotateZ(90.0f);
    rotateY(angleWheel);
    shape(wheel);
  popMatrix();
  
  pushMatrix();
    translate(-170, 40, 700);
    rotateX(90.0f);
    rotateZ(90.0f);
    rotateY(angleWheel);
    shape(wheel);
  popMatrix();
  
  if(acelerar){
    angleWheel+=0.05;  
  }
  
  if (mousePressed == true) {
    angleX=-mouseY*0.02f;
  }else{
   
  }
}



void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      spin=true;
      rightRotate=0.03f;
    } else if (keyCode == LEFT) {
      spin=true;
      rightRotate=-0.03f;
    }else if(keyCode == UP){
      acelerar=true;
    }else if(keyCode == DOWN){
      acelerar=false;
    }
  }
  
}



void drawCircle(float x, float y, float radius, color strokeColor) {
  circle(x, y, radius);
  fill(strokeColor);
  if(radius > 8) {
    drawCircle(x + radius/2, y, radius/2, strokeColor);
    drawCircle(x - radius/2, y, radius/2, strokeColor);
    drawCircle(x, y + radius/2, radius/2, strokeColor);
    drawCircle(x, y - radius/2, radius/2, strokeColor);
  }
}



void calculateTrianglePoints(float x1, float y1, float x2, float y2, float x3, float y3, int limit){
  if(limit>0){
    float leftX = (x1+x2)/2;
    float leftY = (y1+y2)/2;
    float rightX = (x2+x3)/2;
    float rightY = (y2+y3)/2;
    float middleX = (x3+x1)/2;
    float middleY = (y3+y1)/2;
    //Arriba
    calculateTrianglePoints(leftX, leftY, x2, y2, rightX, rightY, limit-1);
    //Izquierda
    calculateTrianglePoints(x1, y1, leftX, leftY, middleX, middleY, limit-1);
    //Derecha
    calculateTrianglePoints(middleX, middleY, rightX, rightY, x3, y3, limit-1);
  }else{
     triangle(x1, y1, x2, y2, x3, y3);
  }
  
  
}



void mouseClicked() {
  spin=!spin;
  
  
 
}
