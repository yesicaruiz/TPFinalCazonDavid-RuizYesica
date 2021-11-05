PImage fondo;
Personaje personaje;
public void setup(){
  size(1280, 759);//permite redimencionar el lienzo en pixeles
  fondo = loadImage("/sprites/fondo1.jpg");
  personaje = new Personaje();
}

/** repinta constantemente el boceto*/
public void draw(){
  background(fondo);
  personaje.display();
}
