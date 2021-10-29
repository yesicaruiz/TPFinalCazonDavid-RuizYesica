/** Representa la Clase CARAMELO (permite crear e instanciar el objeto Caramelo)*/
class Caramelo extends GameObject{
  
  /** Declaración de atributos */
  private Integer tamanio;
  private Integer cantidad;
  private color colorCaramelo;
  private String tipo;
  
  /** Constructor Parametrizado*/
  public Caramelo(Integer tamanio, Integer cantidad, color colorCaramelo, String tipo){
    this.tamanio = tamanio;
    this.cantidad = cantidad;
    this.colorCaramelo = colorCaramelo;
    this.tipo = tipo;
  }
  
  /** Metodos de Acceso (Getters y Setters) */
  public float getTamanio() {
    return this.tamanio;
  }
  public void setTamanio(Integer tamanio) {
    this.tamanio = tamanio;
  }

  public float getCantidad() {
    return this.cantidad;
  }
  public void setCantidad(Integer cantidad) {
    this.cantidad = cantidad;
  }

  public color getColorCaramelo() {
    return this.colorCaramelo;
  }
  public void setColorCaramelo(color colorCaramelo) {
    this.colorCaramelo = colorCaramelo;
  }
  
  public String getTipo() {
    return this.tipo;
  }
  public void setTipo(String tipo) {
    this.tipo = tipo;
  }
  
  /** Declaración de Procedimientos y Funciones*/
  public void display(){};//metodo (abstract) clase madre GameObject
  
}
