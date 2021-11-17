/** Representa la Clase CARAMELO (permite crear e instanciar el objeto Caramelo)*/
class Caramelo extends GameObject {

  /** Declaración de atributos */
  private Integer tamanio;
  private color colorCaramelo;
  private String tipo;
  private float velocidad;
  private float gravedad;
  

  Personaje p = new Personaje(109,169,loadImage("/sprites/niña1.png"));

  /** Constructor Parametrizado*/
  public Caramelo(PVector posicion) {
    this.tamanio = 12;
    this.colorCaramelo = color(random(255),random(255),random(255));
    this.tipo = "chicloso";
    this.posicion = posicion;
    this.velocidad = 0;
    this.gravedad = 0.2;
  }
  
  
  //public Caramelo() {
  //  this.tamanio = 20;
  //  this.colorCaramelo = #0ACBBA;
  //  this.tipo = "chicloso";
  //  this.posicion = new PVector(p.getPosicion().x+70, p.getPosicion().y);
  //  this.velocidad = new PVector(2,2);
  //}

  /** Metodos de Acceso (Getters y Setters) */
  public float getTamanio() {
    return this.tamanio;
  }
  public void setTamanio(Integer tamanio) {
    this.tamanio = tamanio;
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

  public PVector getPosicion() {
    return this.posicion;
  }
  public void setPosicion(PVector posicion) {
    this.posicion = posicion;
  }
  
  public float getVelocidad() {
    return this.velocidad;
  }
  public void setVelocidad(float velocidad) {
    this.velocidad = velocidad;
  }


  /** Declaración de Procedimientos y Funciones*/
  public void display() {
    fill(this.colorCaramelo);
    circle(this.posicion.x, this.posicion.y++, this.tamanio);
    
  };//metodo (abstract) clase madre GameObject
  
  public void move(){
    velocidad = velocidad + gravedad;
    this.posicion.y = this.posicion.y + velocidad;
    if (this.posicion.y > height) {
      velocidad *= -0.2;
      this.posicion.y=0;
    }
  }

 
  //public void collide(Monstruo m) {
  //  boolean esColision = true;
    
  //  if (this.posicion.x > m.getPosicion().x-m.getWidthFrame()/2+m.getWidthFrame()) {
  //    esColision = false;
  //  }
  //  println("MOSTRA1: ",esColision);

  //  //if (this.posicion.x < m.getPosicion().x-m.getWidthFrame()/2) {
  //  //  esColision = false;
  //  //}
  //  //println("MOSTRA2: ",esColision);

  //  //if (this.posicion.y > m.getPosicion().y+m.getWidthFrame()) {
  //  //  esColision = false;
  //  //}
  //  //println("MOSTR3: ",esColision);
    
  //  //if (this.posicion.y < m.getPosicion().y) {
  //  //  esColision = false;
  //  //}
    
  //  println("MOSTR4: ",esColision);
  //  if (esColision) {
  //    println("CHOQUE");
  //    setVelocidad(new PVector(0,0));
  //    setColorCaramelo(color(#CB0A31));
  //  } else {
  //    setColorCaramelo(color(#0ACBBA));
  //  }
  //}
  
}
