/** Representa la Clase Animacion(permite crear e instanciar el objeto Animacion)*/
class Animacion extends FrameObject {

  PImage[] actual, quieto, moverIzq, moverDer;
  int dir, index, frame;
  
  //Constructor por Defecto
  public Animacion(PImage img) {
    super(img, 0);
    dir = ConstantList.normal;
    index = 0;
    frame = 0;
  }
  
  //Actualiza los parametros del sprite
  void actualizar() {
    frame++;
    if (frame %8==0) {
      seleccionarDireccion();
      seleccionarImagenActual();
      avanzaImagen();
    }
  }
  //determinar la direccion del sprite
  void seleccionarDireccion() {
    if (super.cambio.x > 0)
      dir = ConstantList.derecha;
    else if (super.cambio.x < 0)
      dir = ConstantList.izquierda;
    else
      dir = ConstantList.normal;
  }
  //determina el movimiento del sprite
  void seleccionarImagenActual() {
    if (dir == ConstantList.izquierda)
      actual = moverIzq;
    else if (dir == ConstantList.derecha)
      actual = moverDer;
    else
      actual = quieto;
  }
  void avanzaImagen(){ 
    index++;
    if (index >= actual.length)
      index = 0;
    super.sprite = actual[index];
  }
}
