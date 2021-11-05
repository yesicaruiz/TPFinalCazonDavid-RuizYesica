PImage fondo;
Personaje personaje;
public void setup(){
 //permite ingresar un color de fondo al lienzo
  size(1280, 759);//permite redimencionar el lienzo en pixeles
  fondo = loadImage("/sprites/fondo1.jpg");
  personaje = new Personaje();
  //strokeWeight(10); //establece el grosor que tendrán las primitivas gráficas
}

/** repinta constantemente el boceto*/
public void draw(){
  //noLoop(); // bloquear el repintado
  background(fondo);
  personaje.display();
}
