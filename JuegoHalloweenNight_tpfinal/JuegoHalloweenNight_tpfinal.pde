import gifAnimation.*;

float view_x=0;//posicion eje x
float view_y=0;//posicion eje y
int s=420;//variable de segundos

PImage[] personaje;
PImage[] monstruo;
ArrayList<FrameObject> plataforma;
Jugador player;
Monstruo monster;
Tablero lv1;


public void setup() {

  size(800, 511);//permite redimencionar el lienzo en pixeles
  imageMode(CENTER);
  personaje = new File(5, 2, "/sprites/Perrito.png").getHoja();
  monstruo = new File(6, 4, "/sprites/Calabaza.png").getHoja();
  
  println("VER1", personaje.length);
  println("VER2", monstruo.length);
  player = new Jugador(personaje[0]);
  player.setCenter(new PVector(160, 100));

  monster = new Monstruo(monstruo[0]);
  monster.setCenter(new PVector(random(view_x+player.getCenter().x*10), height-100));

  lv1 = new Tablero("/sprites/map0.csv", "/sprites/Tileset32.png", 32);
  
}

/** repinta constantemente el boceto*/
public void draw() {
  background(0);
  iniciar();
}

void iniciar() {
  desplazarPlataforma();
  lv1.mostrar();
  player.display();
  generarLife(player.getLife());
  resolverColision(player, plataforma);
  player.actualizar();
  
  monster.display();
  
  monster.actualizar();
  if(monster.isColision(player,monster)){
    isLife(player.getLife());
    player.setCenter(player.getCenter());
  }
  
  generarText();
  
}

PImage img;
void generarText(){
  textAlign(CENTER);
  textSize(20);
  if(s <= 420 && s >= 0){
    img = loadImage("/sprites/Happy.png");
    img.resize(140,100);
    image(img,player.getCenter().x,70);
    
    text(s, player.getCenter().x,70);
    s=s-1;
  }else{
      println(s);
      text("GAMER OVER", player.getCenter().x,70);
      noLoop();
  }
}

//Desplaza la plataforma
void desplazarPlataforma() {
  float der_dimension = view_x + width - ConstantList.der_margen;
  if (player.getRight() > der_dimension)
  {
    if (view_x < 3000)
      view_x += player.getRight() - der_dimension;
  }
  float izq_dimension = view_x - ConstantList.izq_margen;
  if (player.getLeft() < izq_dimension)
  {
    if (view_x > 0)
      view_x -= izq_dimension - player.getLeft();
  }
  translate(-view_x, -view_y);
}

//genera la vida segun corresponda
PImage vida;
public void generarLife(Integer heart) {
  if (heart==0) {
    determinarLife(loadImage("sprites/Life00.png"));
  } else if (heart==1) {
    determinarLife(loadImage("sprites/Life01.png"));
  } else if (heart==2) {
    determinarLife(loadImage("sprites/Life02.png"));
  } else {
    determinarLife(loadImage("sprites/Life03.png"));
  }
}
private void determinarLife(PImage prmImg) {  
  vida = prmImg;
  vida.resize(110, 30);
  if(player.getRight() >= view_x)
    image(prmImg, player.getCenter().x-270, 20);
}

//Metodo que determina la Colision;
boolean tocado(FrameObject s1, FrameObject s2)
{
  boolean tocarX=s1.getRight() <= s2.getLeft() || s1.getLeft() >= s2.getRight();
  boolean tocarY=s1.getBottom() <= s2.getTop() || s1.getTop() >= s2.getBottom();
  if (tocarX || tocarY)
    return false;
  else
  {
    if (s2.num == 15 && ((Jugador)s1).estado == 0)
      return false;
    else
    {
      if (s2.num == 32 && ((Jugador)s1).estado == 1)
      {
        player.estado =0;
        player.cargarEstado();
      }
      return true;
    }
  }
}

//Metodo que determina la coliscion con lista de cada objeto de la plataforma
ArrayList<FrameObject> tocandoLista(FrameObject s, ArrayList<FrameObject> lista)
{
  ArrayList<FrameObject> listaTocada = new ArrayList<FrameObject>();
  for (FrameObject p : lista)
  {
    if (tocado(s, p))
      listaTocada.add(p);
  }
  return listaTocada;
}
void resolverColision(FrameObject s, ArrayList<FrameObject> lista)
{
  s.cambio.y += ConstantList.gravedad;
  s.center.y += s.cambio.y;
  ArrayList<FrameObject> colLista = tocandoLista(s, lista);
  if (colLista.size() > 0)
  {
    FrameObject colision = colLista.get(0);
    if (s.cambio.y > 0){
      s.setBottom(colision.getTop());
    }
    else if (s.cambio.y < 0) {
      s.setTop(colision.getBottom());
      isLife(player.getLife());
    }
    s.cambio.y=0;
  }
  s.center.x += s.cambio.x;
  colLista = tocandoLista(s, lista);
  if (colLista.size() > 0)
  {
    FrameObject colision = colLista.get(0);
    if (s.cambio.x > 0)
      s.setRight(colision.getLeft());
    else if (s.cambio.x < 0)
      s.setLeft(colision.getRight());
    s.cambio.x=0;
  }
}


void isLife(Integer vida){
  if(vida == 0)
    noLoop();
  else
    player.setLife(player.getLife() - 1);
}

boolean estaEnPlataforma(FrameObject s, ArrayList<FrameObject> pared)
{
  s.center.y += 5;
  ArrayList<FrameObject> colLista = tocandoLista(s, pared);
  s.center.y -= 5;
  if (colLista.size() > 0)
    return true;
  else
    return false;
}

void keyPressed() {

  if (keyCode==RIGHT)
    player.setCambio(new PVector(ConstantList.vel, player.getCambio().y));
  else if (keyCode == LEFT)
    player.setCambio(new PVector(-ConstantList.vel, player.getCambio().y));
  else if (keyCode == UP && estaEnPlataforma(player, plataforma))
  {
    player.setCambio(new PVector (player.getCambio().x, -ConstantList.salto));
  }
}

void keyReleased() {
  if (keyCode == RIGHT)
    player.setCambio(new PVector(0, player.getCambio().y));
  else if (keyCode == LEFT)
    player.setCambio(new PVector(0, player.getCambio().y));
  else if (keyCode == UP)
    player.setCambio(new PVector(player.getCambio().x, 0));
}
