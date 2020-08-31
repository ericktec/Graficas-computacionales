
float angleY, move;
void settings(){
  size(1200,480,P3D); 
  
  angleY=0;
  move=0;
  
}
void setup(){
  
}

void draw(){
  
  background(135, 235, 164);
  stroke(0,0,0);
  noFill();
  angleY+=0.01f;
   
  
  //vidrio interior
  translate(500,200,-300);
  rotateY(angleY);
  rotateX(-mouseY*0.005f -200);
  translate(-300,-150,200);
  beginShape();
  vertex(100,100,-40);
  vertex(400,100,-40);
  vertex(410,200,5);
  vertex(90,200,5);
  endShape(CLOSE);
  
  //vidrio laterales
  beginShape();
  //esquina del vidrio
  vertex(95,100,-40);
  vertex(405,100,-40);
  vertex(415,200,5);
  vertex(85,200,5);
  endShape(CLOSE);
  
  beginShape();
  vertex(90,95,-40);
  vertex(410,95,-40);
  vertex(420,205,5);
  vertex(80,205,5);
  endShape(CLOSE);
  
  //parabrisas completo
  beginShape();
  //esquina superior izquierda
  vertex(90,95,-40);
  //esquina superior derecha
  vertex(410,95,-40);
  //esquina inferior derecha
  vertex(420,205,5);
  //esquina inferior izquierda
  vertex(80,205,5);
  endShape(CLOSE);
  
  
  
  //cofre
  beginShape();
  vertex(80,205,5);
  vertex(420,205,5);
  vertex(420,205,200);
  vertex(340,205,220);
  vertex(160,205,220);
  vertex(80,205,200);
  endShape(CLOSE);
  
  noFill();

  beginShape(LINES);
  //lineas sobre el cofre
  vertex(340,205,220);
  vertex(380,205,5);
  
  //Frente
  vertex(160,205,220);
  vertex(120,205,5);
  
  vertex(160,205,220);
  vertex(160,245,220);
  
  vertex(340,205,220);
  vertex(340,245,220);
  
  vertex(160,245,220);
  vertex(340,245,220);
  
  vertex(420,205,200);
  vertex(420,245,200);
  
  vertex(420,245,200);
  vertex(340,245,220);
  
  vertex(80,205,200);
  vertex(80,245,200);
  
  vertex(80,245,200);
  vertex(160,245,220);
  
  vertex(420,205,5);
  vertex(430,215,5);
  
  vertex(420,205,200);
  vertex(430,215,200);
  
  vertex(430,215,5);
  vertex(430,215,200);
  
  vertex(430,215,5);
  vertex(430,245,5);
  
  vertex(430,215,200);
  vertex(430,245,200);
  
  vertex(430,245,200);
  vertex(420,245,200);
  
  vertex(430,245,5);
  vertex(430,245,200);
  
  
  
  vertex(80,205,5);
  vertex(70,215,5);
  
  vertex(80,205,200);
  vertex(70,215,200);
  
  vertex(70,215,5);
  vertex(70,215,200);
  
  vertex(70,215,200);
  vertex(70,245,200);
  
  vertex(70,245,200);
  vertex(80,245,200);
  
   vertex(70,215,5);
   vertex(70,245,5);
   
   vertex(70,245,5);
  
   vertex(70,245,200);
   
   
   //para la defensa
  vertex(430,245,200);
  vertex(430,245,230);
  
  vertex(70,245,200);
  vertex(70,245,230);
  
  vertex(430,245,230);
  vertex(70,245,230);
  
  vertex(70,245,230);
  vertex(70,265,230);
  
  vertex(430,245,230);
  vertex(430,265,230);
  
  vertex(70,265,230);
  vertex(430,265,230);
  
  vertex(430,265,230);
  vertex(430,265,5);
  
  vertex(430,265,5);
  vertex(430,245,5);
  
  
  vertex(70,265,230);
  vertex(70,265,5);
  
  vertex(70,265,5);
  vertex(70,245,5);
  //
  endShape(CLOSE);
  
 //techo frontal
  beginShape();
  vertex(90,95,-40);
  vertex(410,95,-40);
  vertex(410,95,-140);
  vertex(90,95,-140);
  endShape(CLOSE);
  
  //techo trasero
  beginShape();
  vertex(410,95,-140);
  vertex(90,95,-140);
  vertex(90,205,-640);
  vertex(410,205,-640);
  endShape(CLOSE);
  
  //lateral izq
  beginShape();
  vertex(410,95,-40);
  vertex(410,95,-140);
  vertex(410,205,-640);
  vertex(420,205,5);
  endShape(CLOSE);
  
  
  //barra lateral izq 
  beginShape();
 vertex(420,205,5);
 vertex(410,205,-640);
 vertex(420,215,-640);
 vertex(430,215,5);
  endShape(CLOSE);
  
  //lateral izq inferior
  beginShape();
 vertex(420,215,-640);
 vertex(430,215,5);
 vertex(430,245,5);
 vertex(420,245,-640);
  endShape(CLOSE);
  
  //lateral izq inferior inferior
  beginShape();
 vertex(430,245,5);
 vertex(420,245,-640);
 vertex(420,265,-640);
 vertex(430,265,5);
  endShape(CLOSE);
  
  //lateral derecho
  beginShape();
  vertex(90,95,-40);
  vertex(90,95,-140);
  vertex(90,205,-640);
  vertex(80,205,5);
  endShape(CLOSE);
  
  //barra lateral derecha
  beginShape();
  vertex(90,205,-640);
  vertex(80,205,5);
  vertex(70,215,5);
   vertex(70,215,-640);
  endShape(CLOSE);
  
  
 //lateral derecha inferior
 beginShape();
 vertex(70,215,5);
 vertex(70,245,5);
 vertex(70,245,-640);
 vertex(70,215,-640);
 endShape(CLOSE);
 
  //lateral derecha inferior inferior
 beginShape();
 
 vertex(70,245,5);
 vertex(70,245,-640);
 vertex(70,265,-640);
 vertex(70,265,5);
 
 endShape(CLOSE);
  
  
  //trasero
 beginShape();
 

 vertex(70,245,-640);
 vertex(420,245,-640);
 vertex(420,265,-640);
 vertex(70,265,-640);
 
 endShape(CLOSE);
 
 
 
 //--recorrer la base al centro del carro
 translate(245,285,-217);
  noFill();
  //base del tsuru tuneado +100 papu lince
  box(350, 40, 845);
  //--
  
  
  //** box para trasero
  translate(0,0,-423);
  noFill();
  //placa trasera
  box(40, 30, 5);
  //**
  beginShape();
  //Fractal
  drawCircle(0,0,20);
  endShape();
}





void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      angleY+=0.05f;
    } else if (keyCode == LEFT) {
      angleY-=0.05f;
    }else if(keyCode == UP){
      move+=1;
    }else if(keyCode == DOWN){
      move-=1;
    }
  } else {
    
  }
  
}



void drawCircle(float x, float y, float radius) {
  ellipse(x, y, radius, radius);
  if(radius > 8) {
    drawCircle(x + radius/2, y, radius/2);
    drawCircle(x - radius/2, y, radius/2);
    drawCircle(x, y + radius/2, radius/2);
    drawCircle(x, y - radius/2, radius/2);
  }
}
