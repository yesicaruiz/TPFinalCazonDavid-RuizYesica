/** Representa la Clase TABLERO (permite crear e instanciar el objeto Tablero */
class Tablero{
  private PImage mySprite[];
  private PImage bgFondo;
  private float sizeSprite;
  
  //Constructor por Defecto
  public Tablero(String name, String tilemap, float size)
  {
    sizeSprite = size;
    mySprite = new File(8,5,"/sprites/Tileset32.png").getHoja();
    plataforma = new ArrayList<FrameObject>();
    
    bgFondo = loadImage("/sprites/BG.jpg");
    crearPlataforma(name);
  }
  
  //Metodo que muestra el Tablero
  void mostrar(){
    image(bgFondo,view_x+width/2,height/2-130);
    
    for(FrameObject p: plataforma)
    {
      p.display();
    }
  }
  
  //Método que genera el Tablero del Sprite mediante Matrix  
  void crearPlataforma(String archivo)
  {
    String[] lineas  = loadStrings(archivo);
    for(int row=0; row<lineas.length; row++)
    {
      String[] valores = split(lineas[row],";");
      for(int col=0; col<valores.length;col++)
      {
        int num = obtenerNum(valores[col]);
        if(num < 15)
        {
          FrameObject s = new FrameObject(mySprite[num],num);
          s.center.x = sizeSprite/2 + col * sizeSprite;
          s.center.y = sizeSprite/2 + row * sizeSprite;
          plataforma.add(s);
        }
        else if(num == 32)
        {
          FrameObject s = new FrameObject(mySprite[15],num);
          s.center.x = sizeSprite/2 + col * sizeSprite;
          s.center.y = sizeSprite/2 + row * sizeSprite;
          plataforma.add(s);
        }
      }
    }
  }
  int obtenerNum(String txt)
  {
    int num=0;
    num = Integer.valueOf(txt);
    return num;
  }
}
