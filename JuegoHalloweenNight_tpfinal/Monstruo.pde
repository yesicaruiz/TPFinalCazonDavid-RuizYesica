/** Representa la Clase MONSTRUO (permite crear e instanciar el objeto Monstruo)*/
class Monstruo extends Animacion {

  /** Declaración de atributos */
  private Integer estado;

  boolean enPlataforma, enPiso;
  PImage[] irDer, irIzq, saltoDer, saltoIzq;

  /**Constructor por defecto*/
  public Monstruo(PImage imagen) {
    super(imagen);
    dir = ConstantList.derecha;
    this.estado = 0;
    enPlataforma = false;
    enPiso = false;
    irDer = new PImage[2];
    irIzq = new PImage[2];
    moverDer = new PImage[4];
    moverIzq = new PImage[4];
    saltoDer = new PImage[1];
    saltoIzq = new PImage[1];
    actual = saltoDer;
    cargarEstado();
  }

  /** Declaración de Procedimientos y Funciones*/
  void cargarEstado() {
    if (estado == 0) {
      irIzq[0] = monstruo[5];
      irIzq[1] = monstruo[6];
      irDer[0] = monstruo[0];
      irDer[1] = monstruo[1];
    }
  }
  
  @Override
    void actualizar() {
    enPlataforma = estaEnPlataforma(this, plataforma);
    enPiso = super.getCambio().x == 0 && super.getCambio().y == 0;
    super.actualizar();
  }
  @Override
    void seleccionarDireccion() {
    if (super.getCambio().x > 0)
      dir = ConstantList.derecha;
    else if (super.getCambio().x < 0)
      dir = ConstantList.izquierda;
  }
  @Override
    void seleccionarImagenActual() {
    if (dir == ConstantList.derecha)
    {
      if (enPiso)
        actual = irDer;
      else if (!enPlataforma)
        actual = saltoDer;
      else
        actual = moverDer;
    } else if (dir == ConstantList.izquierda)
    {
      if (enPiso)
        actual = irIzq;
      else if (!enPlataforma)
        actual = saltoIzq;
      else
        actual = moverIzq;
    }
  }
  
  //Método que valida la Colisión Jugador y Monstruo
  boolean isColision(FrameObject s1, FrameObject s2)
  {
    boolean tocarX=s1.getRight() <= s2.getLeft() || s1.getLeft() >= s2.getRight();
    boolean tocarY=s1.getBottom() <= s2.getTop() || s1.getTop() >= s2.getBottom();
    if (tocarX || tocarY)
      return false;
    else
      return true;
      
   }
}
