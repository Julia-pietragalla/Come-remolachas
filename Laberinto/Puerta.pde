class Puerta {

  int x;
  int y;
  int ancho;
  int alto;

  Puerta(int x, int y, int ancho, int alto) {
    this.x = x;
    this.y = y;
    this.ancho = ancho;
    this.alto = alto;
  }

  void mostrarse() {
    noStroke();
    fill(98, 135, 33);
    rect(x, y, ancho, alto);
  }
}
