/** Representa a todos los objetos del juego*/
abstract class GameObject{
  
  // Representa la posición del objeto
  protected PVector posicion;
  
  /** Constructor por defecto*/
  public GameObject(){
    posicion = new PVector();
  }
  
  /** Constructor Parametrizado*/
  public GameObject(PVector posicion){
    this.posicion = posicion;
  }
  
  /** Metodos de Acceso (Getters y Setters)*/
  public PVector getPosicion(){
    return this.posicion;
  }
  public void setSpeed(PVector posicion){
    this.posicion = posicion;
  }
  
  /** Declaración de Procedimientos y Funciones (Abstract)*/
  public abstract void display();
}
