class Comida {
  PImage comida;
  int x;
  int y;
  int ancho;
  int alto;
  boolean digerida=false;


  Comida(PImage comida, int x, int y, int ancho, int alto) {
    this.comida = comida;
    this.x = x;
    this.y = y;
    this.ancho = ancho;
    this.alto = alto;
  }

  void mostrarse() {
    if (!digerida) {
      image(comida, x, y, ancho, alto);
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
}
