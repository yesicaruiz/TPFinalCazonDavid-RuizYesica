/** Representa la Clase PERSONAJE (permite crear e instanciar el objeto Personaje */
class Personaje extends GameObject{
  
  /** Declaración de atributos */
  private String nombre;
  private Integer puntaje;
  private float life;
  private Disfraz disfraz;
  
  /** Constructor Parametrizado*/
  public Personaje(String nombre, float life, Integer puntaje, Disfraz disfraz, PVector posicion){
    this.nombre = nombre;
    this.life = life;
    this.puntaje = puntaje;
    this.disfraz = disfraz;
    this.posicion = posicion;
  }
  
  /** Metodos de Acceso (Getters y Setters) */
  public String getNombre() {
    return this.nombre;
  }
  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public Integer getPuntaje() {
    return this.puntaje;
  }
  public void setPuntaje(Integer puntaje) {
    this.puntaje = puntaje;
  }

  public float getLife() {
    return this.life;
  }
  public void setLife(float life) {
    this.life = life;
  }

  public Disfraz getDisfraz() {
    return this.disfraz;
  }
  public void setDisfraz(Disfraz disfraz) {
    this.disfraz = disfraz;
  }
  
  public PVector getPosicion() {
    return this.posicion;
  }
  public void setPosicion(PVector posicion) {
    this.posicion = posicion;
  }
  
  /** Declaración de Procedimientos y Funciones*/
  public void display(){};//metodo (abstract) clase madre GameObject
  public void mover(PVector prmPosicion){}//método que le permitirá la acción de moverse al personaje
  public void saltar(PVector prmPosicion){};//método que le permitirá la acción de saltar al personaje
  public void arrojarCaramelo(ListaDeCaramelos prmLista){}//método que le permitira realizar la accion de arrojar caramelos a los villanos
  
}
