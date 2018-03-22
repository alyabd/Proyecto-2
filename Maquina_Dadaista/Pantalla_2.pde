PImage fondo2;

void pantalla2(){
  size(600,400);
  fondo2=loadImage("Pantalla 2.jpg");
  background(fondo2);
  for (Bubble b: Bubbles){
    b.display();
  }
}