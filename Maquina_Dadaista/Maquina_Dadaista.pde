import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

PImage [] palabras = new PImage[50];
ArrayList <Bubble> Bubbles;

int seleccion=1;

Box2DProcessing box2d;

void setup(){
  size(600,400);
  box2d = new Box2DProcessing(this);  
  box2d.createWorld();
  Bubbles = new ArrayList <Bubble>();
  for (int i = 0; i < palabras.length; i++){
    palabras[i] = loadImage(+(i+1)+".jpg");
  }
  
  for (int i = 0; i < palabras.length; i++){
    int index = int(random(0,palabras.length));
  }
}

void draw(){
  println(mouseX,mouseY);
  if (seleccion==1){
    pantalla1();
  }
  if (mousePressed && mouseX>276 && mouseX<344 && mouseY>219 && mouseY<329){
    seleccion=2;
  }
  if (seleccion==2){
    pantalla2();
  }
}