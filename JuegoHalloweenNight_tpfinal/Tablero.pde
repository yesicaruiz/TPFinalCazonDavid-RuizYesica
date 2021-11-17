/** Representa la Clase TABLERO (permite crear e instanciar el objeto Tablero */
class Tablero extends FrameObject {

  /** Declaracion de atributos*/
  private Integer nivel;

  /** Constructor parametrizado*/
  public Tablero(Integer widthFrame, Integer heightFrame, PImage sprite) {
    super(widthFrame,heightFrame, sprite);
    this.posicion = new PVector();
    this.nivel = 1;
  }

  /** Representa Métodos de Acceso (Getters y Setters)*/
  public PVector getPosicion() {
    return this.posicion;
  }
  public void setPosicion(PVector posicion) {
    this.posicion = posicion;
  }
  
  public Integer getNivel() {
    return this.nivel;
  }
  public void setNivel(Integer nivel) {
    this.nivel = nivel;
  }
  
  /** Declaración de Procedimientos y Funciones*/
  public void display(){
    PImage puerta,escoba;
    puerta = loadImage("sprites/Puerta01.png");
    puerta.resize(160,200);
    //int x = width/2;
    //bloques.copy(x,0,x,height,0,0,x,height);
    escoba = loadImage("sprites/Escoba.png");
    escoba.resize(300,160);
    
    image(puerta,width-80,100);
    image(escoba,posicion.x,posicion.y);
    
    if(posicion.x < width){
      posicion.x=posicion.x+20;
      posicion.y=height/2;
    }else{
      posicion.y++;
      posicion.x=posicion.x=0;
    }
    
  };//metodo (abstract) clase madre GameObject
  public void generarNivel(Integer prmNumero){};//metodo que permitirá generar el nivel en base a un párametro indicador
  
}
