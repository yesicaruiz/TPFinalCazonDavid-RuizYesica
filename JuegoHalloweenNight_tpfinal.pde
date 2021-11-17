import gifAnimation.*;

Monstruo[] monsters = new Monstruo[10];
ListaDeCaramelos listCaramelos;
Gif miFondo;
Tablero tablero;
Personaje personaje; Monstruo monstruo; Caramelo caramelo;

public void setup(){

  size(843, 600);//permite redimencionar el lienzo en pixeles
  miFondo = new Gif(this,"/sprites/FondoN1.gif");
  miFondo.play();
  tablero = new Tablero(843,600,miFondo);
  
  personaje = new Personaje(80,80,loadImage("/sprites/niña1.png"));
  
  //caramelo = new Caramelo();
  //for(int i=0;i<monsters.length;i++){
  //  monsters[i] = new Monstruo(100,100,loadImage("/sprites/calabaza.png"));
  //}
  monstruo =new Monstruo(100,100,loadImage("/sprites/calabaza.png"));
  //strokeWeight(10); //establece el grosor que tendrán las primitivas gráficas
  listCaramelos = new ListaDeCaramelos();
  
  for(int i=0;i<=random(100);i++){
    listCaramelos.addCaramelo(new PVector(random(width),height));
  }
}

/** repinta constantemente el boceto*/
public void draw(){
  background(tablero.getSprite());
  personaje.keyPressed();
  for(int i= listCaramelos.lista.size()-1; i >= 0; i--){
    Caramelo candy = listCaramelos.lista.get(i);
    candy.display();
    candy.move();
  }
  int j=0;
  //while(j<10){
    //monsters[j].display();
   // j=j+1;
  //}
   
   monstruo.display();
   personaje.collide(monstruo);
   personaje.display();
   personaje.generarLife(personaje.getLife());
   tablero.display();
   
   if(personaje.getLife() == 0){
     noLoop();
   }
}
  
  //personaje.arrojarCaramelo(listCaramelos);
