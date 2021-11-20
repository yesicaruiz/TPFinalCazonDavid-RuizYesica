/** Representa la Clase  FrameObject(permite crear e instanciar el objeto FrameObject)*/
class FrameObject extends GameObject{
  /** Declaración de atributos */
  private PVector center;
  private PVector cambio;
  private PVector tamanio;
  private PImage sprite;
  
  int tipo, num;
  
   /** Constructor Parametrizado*/
  public FrameObject(PImage archivo, float x, float y){
    this.sprite = archivo;
    this.tamanio = new PVector(sprite.width,sprite.height);
    this.center = new PVector(x,y);
    this.cambio = new PVector(0,0);
    tipo=0;
    num=0;
  }
  public FrameObject(PImage archivo, int pared){
    this.sprite = archivo;
    tamanio = new PVector(sprite.width,sprite.height);
    center = new PVector(0,0);
    cambio = new PVector(0,0);
    tipo=0;
    num=pared;
  }
  public FrameObject(float x, float y){
    this.sprite = new PImage();
    tamanio = new PVector(0,0);
    center = new PVector(x,y);
    tamanio = new PVector(0,0);
    tipo=0;
  }
  
  /** Metodos de Acceso (Getters y Setters) */
  public PImage getSprite() {
    return this.sprite;
  }
  public void setSprite(PImage  sprite) {
    this.sprite = sprite;
  }
  
   public void display(){
     image(sprite,center.x,center.y);
   };//metodo (abstract) clase madre GameObject
   
   void mover(){
    center.x += cambio.x;
    center.y += cambio.y;
  }
  
  void setCenter(PVector center){
    this.center = center;
  }
  PVector getCenter(){
    return this.center;
  }
  void setCambio(PVector cambio){
    this.cambio = cambio;
  }
  PVector getCambio(){
    return this.cambio;
  }
  void setTamanio(PVector tamanio){
    this.tamanio = tamanio;
  }
  PVector getTamanio(){
    return this.tamanio;
  }
  void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  PVector getPosicion(){
    return this.posicion;
  }
  
  /** Metodos de Acceso que determinan los margenes y posición de sprite */
  void setLeft(float left){
    center.x = left + tamanio.x/2;
  }
  float getLeft(){
    return center.x - tamanio.x/2;
  }
  
  void setRight(float right){
    center.x = right - tamanio.x/2;
  }
  float getRight(){
    return center.x + tamanio.x/2;
  }
  
  void setTop(float top){
    center.y = top + tamanio.y/2;
  }
  float getTop(){
    return center.y - tamanio.y/2;
  }
  
  void setBottom(float bottom){
    center.y = bottom - tamanio.y/2;
  }
  float getBottom(){
    return center.y + tamanio.y/2;
  }  
}
