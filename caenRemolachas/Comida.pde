class Comida {
  PImage comida;
  int x;
  int y;
  int ancho;
  int alto;
  int velocidad;
  boolean digerida=false;
  boolean perdida=false;

  Comida(PImage comida, int x, int y, int ancho, int alto, int velocidad) {
    this.comida = comida;
    this.x = x;
    this.y = y;
    this.ancho = ancho;
    this.alto = alto;
    this.velocidad = velocidad;
  }

  void mostrarse() {
    if (!perdida && !digerida) {
      image(comida, x, y, ancho, alto);
      y=y+velocidad;
    }
  }

  boolean tecomieron(Personaje unPersonaje) {
    if (digerida) return false;
    return x < unPersonaje.x + unPersonaje.ancho && x + ancho > unPersonaje.x &&
      y < unPersonaje.y + unPersonaje.alto && y + alto > unPersonaje.y;
  }

  void serDigerida() {
    digerida=true;
  }


  
   boolean notecomieron() {
  if(perdida) return false;
  return y + alto > 580;
  }
  
  void serPerdida() {
    perdida=true;
  }
}
