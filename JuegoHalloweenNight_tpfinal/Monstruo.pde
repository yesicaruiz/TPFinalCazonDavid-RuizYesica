/** Representa la Clase MONSTRUO (permite crear e instanciar el objeto Monstruo)*/
class Monstruo extends FrameObject{
  
  /** Declaración de atributos */
  private String nombre;
  private String habilidad;
  private String tipo;
  private float velocidad;
  
   /** Constructor defecto prueba*/
  public Monstruo(Integer widthFrame, Integer heightFrame, PImage sprite){
    super(widthFrame,heightFrame, sprite);
    this.nombre = "";
    this.posicion = new PVector(width,height-100);
  }
  
  /** Metodos de Acceso (Getters y Setters)*/
  public String getNombre() {
    return this.nombre;
  }
  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public String getHabilidad() {
    return this.habilidad;
  }
  public void setHabilidad(String habilidad) {
    this.habilidad = habilidad;
  }

  public String getTipo() {
    return this.tipo;
  }
  public void setTipo(String tipo) {
    this.tipo = tipo;
  }
  
  public float getVelocidad() {
    return this.velocidad;
  }
  public void setVelocidad(float velocidad) {
    this.velocidad = velocidad;
  }
  
  public PVector getPosicion() {
    return this.posicion;
  }
  public void setPosicion(PVector posicion) {
    this.posicion = posicion;
  }
  
  public PImage getSprite() {
    return super.sprite;
  }
  public void setPosicion(PImage sprite) {
    super.sprite = sprite;
  }
  
  /** Declaración de Procedimientos y Funciones*/
  public void display(){
    getSprite().resize(100,100);
    imageMode(CENTER);
    image(getSprite(),this.posicion.x,this.posicion.y);
    this.posicion.x=posicion.x-4;
  };//metodo (abstract) clase madre GameObject
  
  
  public void mover(PVector prmPosicion){};//método que le permitirá la acción de moverse al Monstruo
  public void atacar(String habilidad){};//método que le permitira realizar un ataque
  
}
