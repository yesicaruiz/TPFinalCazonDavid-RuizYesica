/** Representa la Clase TABLERO (permite crear e instanciar el objeto Tablero */
class Tablero extends GameObject {

  /** Declaracion de atributos*/
  private color colorFondo;
  private Integer ancho;
  private Integer alto;
  private String imagen;
  private Integer nivel;

  /** Constructor parametrizado*/
  public Tablero(color colorFonod, Integer ancho, Integer alto, String imagen, Integer nivel) {
    this.colorFondo = colorFondo;
    this.ancho = ancho;
    this.alto = alto;
    this.posicion = new PVector();
    this.imagen = imagen;
    this.nivel = nivel;
  }

  /** Representa Métodos de Acceso (Getters y Setters)*/
  public Integer getColorFondo() {
    return this.colorFondo;
  }
  public void setColorPista(Integer colorFondo) {
    this.colorFondo = colorFondo;
  }

  public Integer getAncho() {
    return this.ancho;
  }
  public void setAncho(Integer ancho) {
    this.ancho = ancho;
  }

  public Integer getAlto() {
    return this.alto;
  }
  public void setAlto(Integer alto) {
    this.alto = alto;
  }

  public PVector getPosicion() {
    return this.posicion;
  }
  public void setPosicion(PVector posicion) {
    this.posicion = posicion;
  }

  public String getImagen() {
    return this.imagen;
  }
  public void setImagen(String imagen) {
    this.imagen = imagen;
  }
  
  public Integer getNivel() {
    return this.nivel;
  }
  public void setNivel(Integer nivel) {
    this.nivel = nivel;
  }
  
  /** Declaración de Procedimientos y Funciones*/
  public void display(){};//metodo (abstract) clase madre GameObject
  public void generarNivel(Integer prmNumero){};//metodo que permitirá generar el nivel en base a un párametro indicador
  
}
