/** Representa la Clase File(permite crear e instanciar el objeto File)*/
class File{
  private Integer colSprite;
  private Integer rowSprite;
  private Integer totalSprite;
  private PImage[] mySprite;
  
  //Constructor por Defecto
  public File(int col, int row, String name){
    colSprite = col;
    rowSprite = row;
    totalSprite = col * row;
    mySprite = new PImage[totalSprite];
    PImage hoja = loadImage(name);
    int ancho = hoja.width/colSprite;
    int alto = hoja.height/rowSprite;
    int pos = 0;
    for(int y=0; y<rowSprite;y++)
    {
      for(int x=0; x<colSprite;x++)
      {
        mySprite[pos] = hoja.get(x*ancho,y*alto,ancho,alto);
        pos++;
      }
    }
  }
  PImage[] getHoja(){
    return mySprite;
  }
}
