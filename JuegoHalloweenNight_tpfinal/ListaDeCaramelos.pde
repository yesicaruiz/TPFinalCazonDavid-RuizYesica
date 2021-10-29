/** Representa la Clase LIST tipo Caramelo (permite crear e instanciar el objeto List de Caramelos)*/
class ListaDeCaramelos{
  
  /** Declaración de atributos */
  private ArrayList<Caramelo> lista;
  
  /** Constructor por defecto */
  public ListaDeCaramelos(){
    lista = new ArrayList<Caramelo>();
  }
  
  /** Metodos de Acceso (Getters y Setters) */
  public ArrayList<Caramelo> getLista(){
    return this.lista;
  }
  public void setLista(ArrayList<Caramelo> lista){
    this.lista = lista;
  }
  
  /** Declaración de Procedimientos y Funciones*/
  public void recogerCaramelo(PVector prmPos){};//método que permite agregar caramelos a la lista
  public void remover(Integer prmPosList){};//método que permite remover un caramelo
  
}
