/** Representa la Clase PERSONAJE (permite crear e instanciar el objeto Personaje */
class Personaje extends FrameObject {

  /** Declaración de atributos */
  private String nombre;
  private Integer puntaje;
  private Integer life;
  private String disfraz;
  private float velocidad;


  /**Constructor por defecto*/
  public Personaje(Integer widthFrame, Integer heightFrame, PImage sprite) { 
    super(widthFrame, heightFrame, sprite);
    this.nombre = "Yesy";
    this.life = 3;
    this.disfraz = "Exploradora";
    this.posicion = new PVector(60, height-100);
    this.velocidad = 2.0;
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

  public Integer getLife() {
    return this.life;
  }
  public void setLife(Integer life) {
    this.life = life;
  }

  public String getDisfraz() {
    return this.disfraz;
  }
  public void setDisfraz(String disfraz) {
    this.disfraz = disfraz;
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

  public PImage getSprite() {
    return super.sprite;
  }
  public void setSprite(PImage sprite) {
    super.sprite = sprite;
  }


  /** Declaración de Procedimientos y Funciones*/
  public void display() {
    getSprite().resize(80, 140);
    imageMode(CENTER);
    image(getSprite(), this.posicion.x, this.posicion.y);
  }//metodo (abstract) clase madre GameObject
  
  PImage vida;
  public void generarLife(Integer heart){
    println("ENTRO", heart);
    if(heart==0){
      determinarLife(loadImage("sprites/Life00.png"));
    }else if(heart==1){
      determinarLife(loadImage("sprites/Life01.png"));
    }else if(heart==2){
      determinarLife(loadImage("sprites/Life02.png"));
    }else{
      determinarLife(loadImage("sprites/Life03.png"));
    }
  }
  private void determinarLife(PImage prmImg){  
    vida = prmImg;
    vida.resize(120,40);
    image(prmImg, 70, 40);
  }

  public void keyPressed() {
    int direccion=0;
    int t=millis();

    if (key=='d' || keyCode==RIGHT) {
      direccion = 2;
    }
    if (key=='w' || keyCode==UP) {
      direccion = 3;
    }
    if (keyCode==LEFT) {
      direccion = 4;
    }
    mover(direccion);
  }

  public void mover(int direccion) {
    float velocidadX=1;
    float velocidadY=1;

    if (direccion ==2) {
      this.posicion.x += velocidadX;
      if (this.posicion.x > width) {
        this.posicion.x=0;
      }
    }

    if (direccion==4) {
      this.posicion.x -= velocidadX;
      if (this.posicion.x <0) {
        this.posicion.x = width;
      }
    }
    if (direccion==1) {
      this.posicion.y += velocidadY;
      if (this.posicion.y >height) {
        this.posicion.y = 0;
      }
    }
    if (direccion==3) {
      this.posicion.y -= velocidadY;
      if (this.posicion.y <0) {
        this.posicion.y = height;
      }
    }
  }//método que le permitirá la acción de moverse al personaje

  public void saltar(PVector prmPosicion) {
  };//método que le permitirá la acción de saltar al personaje

  //método que le permitira realizar la accion de arrojar caramelos a los villanos
  public void arrojarCaramelo(ListaDeCaramelos prmLista) {
    if (mouseButton==LEFT) {
      for (int i= prmLista.lista.size()-1; i >= 0; i--) {
        Caramelo c = prmLista.lista.get(i);
        c.display();
      }
    }
  }

  public void collide(Monstruo m) {
    boolean esColision = true;

    if (this.posicion.x > m.getPosicion().x-m.getWidthFrame()/2+m.getWidthFrame()) {
      esColision = false;
    }
    //println("MOSTRA1: ", esColision);

    if (this.posicion.x < m.getPosicion().x-m.getWidthFrame()/2) {
      esColision = false;
    }
    //println("MOSTRA2: ", esColision);

    if (this.posicion.y > m.getPosicion().y+m.getWidthFrame()) {
      esColision = false;
    }
    //println("MOSTR3: ", esColision);

    if (this.posicion.y < m.getPosicion().y) {
      esColision = false;
    }

    //println("MOSTR4: ", esColision);
    if (esColision) {
      println("CHOQUE");
      if(this.life > 0){
        this.life = this.life - 1;
        println("VIDA: ", this.life);
        this.posicion.x = 0;
      }
    }
    
  }
}
