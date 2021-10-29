/** Representa la Clase MONSTRUO (permite crear e instanciar el objeto Monstruo)*/
class Monstruo extends GameObject{
  
  /** Declaración de atributos */
  private String nombre;
  private String habilidad;
  private String tipo;
  
  /** Constructor parametrizado*/
  public Monstruo(String nombre, String habilidad, String tipo, PVector posicion){
    this.nombre = nombre;
    this.habilidad = habilidad;
    this.tipo = tipo;
    this.posicion = posicion;
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
  
  public PVector getPosicion() {
    return this.posicion;
  }
  public void setPosicion(PVector posicion) {
    this.posicion = posicion;
  }
  
  /** Declaración de Procedimientos y Funciones*/
  public void display(){};//metodo (abstract) clase madre GameObject
  public void mover(PVector prmPosicion){};//método que le permitirá la acción de moverse al Monstruo
  public void atacar(String habilidad){};//método que le permitira realizar un ataque
  
}
