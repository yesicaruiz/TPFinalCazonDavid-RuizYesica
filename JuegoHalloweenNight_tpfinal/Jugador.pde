/** Representa la Clase PERSONAJE (permite crear e instanciar el objeto Personaje */
class Jugador extends Animacion {

  /** Declaración de atributos */
  private Integer life;
  private Integer estado;
  private Integer timer;
  private Integer score;
  
  boolean enPlataforma, enPiso;
  PImage[] irDer, irIzq, saltoDer, saltoIzq;

  /**Constructor por defecto*/
  public Jugador(PImage imagen) {
    super(imagen);
    this.life = 3;
    this.timer = 0;
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
    timer=0;
    if (estado == 0) {
      saltoDer[0] = personaje[3];
      saltoIzq[0] = personaje[8];
      irIzq[0] = personaje[5];
      irIzq[1] = personaje[6];
      irDer[0] = personaje[0];
      irDer[1] = personaje[1];
      
      moverDer[0] = personaje[2];
      moverDer[1] = personaje[3];
      moverDer[2] = personaje[4];
      moverDer[3] = personaje[5];

      moverIzq[0] = personaje[6];
      moverIzq[1] = personaje[7];
      moverIzq[2] = personaje[8];
      moverIzq[3] = personaje[9];
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
  
  /** Metodos de Acceso (Getters y Setters) */
  public Integer getLife() {
    return this.life;
  }
  public void setLife(Integer life) {
    this.life = life;
  }
  public Integer getTimer() {
    return this.timer;
  }
  public void setTimer(Integer timer) {
    this.timer = timer;
  }
}
