class Bubble{
  Body body;
  float x;
  float y;
  int i;
  PImage img;
  
  Bubble(PImage tempImg, float x_, float y_){
    x=x_;
    y=y_;
    img=tempImg;
    
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(x,y));
    body = box2d.createBody(bd);
    
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(60/2);
    float box2dH = box2d.scalarPixelsToWorld(40/2);
    sd.setAsBox(box2dW, box2dH);         
    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    fd.density = 1;
    fd.friction = 0.3;
    fd.restitution = 0.5;           
    body.createFixture(fd); 
  }
  
  void display(){
    Vec2 pos = box2d.getBodyPixelCoord(body);    
    float a = body.getAngle();
    translate(pos.x,pos.y);
    rotate(-a);
    stroke(0);
    fill(0);
    image(img,pos.x,pos.y);  
 }
} 