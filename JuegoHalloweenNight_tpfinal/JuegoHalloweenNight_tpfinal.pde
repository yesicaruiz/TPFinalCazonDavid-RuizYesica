public void setup(){
  background(0);//permite ingresar un color de fondo al lienzo
  size(1200, 600);//permite redimencionar el lienzo en pixeles
  strokeWeight(10); //establece el grosor que tendrán las primitivas gráficas
}

/** repinta constantemente el boceto*/
public void draw(){
  noLoop(); // bloquear el repintado
}
