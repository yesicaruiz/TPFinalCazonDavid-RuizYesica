/** Representa la Clase DISFRAZ (permite crear e instanciar el objeto Disfraz)*/
class Disfraz{
  
  /** Declaración de atributos */
  private color colorDisfraz;
  private String tipo;
  
  /** Constructor Parametrizado*/
  public Disfraz(color colorDisfraz, String tipoDisfraz){
    this.colorDisfraz = colorDisfraz;
    this.tipo = tipo;
  }
  
  /** Metodos de Acceso (Getters y Setters) */
  public color getColorDisfraz() {
    return this.colorDisfraz;
  }
  public void setColorDisfraz(color colorDisfraz) {
    this.colorDisfraz = colorDisfraz;
  }
  
  public String getTipo() {
    return this.tipo;
  }
  public void setTamanio(String tipo) {
    this.tipo = tipo;
  }
  
}
