/** Representa la Clase  FrameObject(permite crear e instanciar el objeto FrameObject)*/
abstract class FrameObject extends GameObject{
  /** Declaración de atributos */
  private PVector posicionFrame;
  private Integer widthFrame;
  private Integer heightFrame;
  private PImage sprite;
  
   /** Constructor Parametrizado*/
  public FrameObject (Integer widthFrame,  Integer heightFrame, PImage sprite){
    this.posicionFrame = new PVector();
    this.widthFrame = widthFrame;
    this.heightFrame = heightFrame;
    this.sprite = sprite;
  }
  
  /** Metodos de Acceso (Getters y Setters) */
  public PVector getPosicionFrame() {
    return this.posicionFrame;
  }
  public void setPosicionFrame(PVector posicionFrame) {
    this.posicionFrame = posicionFrame;
  }

  public int getWidthFrame() {
    return this.widthFrame;
  }
  public void setWidthFrame(Integer widthFrame) {
    this.widthFrame = widthFrame;
  }

  public color getHeightFrame() {
    return this.heightFrame;
  }
  public void setHeightFrame(Integer heightFrame) {
    this.heightFrame = heightFrame;
  }
  
  public PImage getSprite() {
    return this.sprite;
  }
  public void setSprite(PImage  sprite) {
    this.sprite = sprite;
  }
  
   public void display(){};//metodo (abstract) clase madre GameObject
}
