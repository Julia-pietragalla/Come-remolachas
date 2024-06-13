class Pared {

  int x;
  int y;
  int ancho;
  int alto;

  Pared(int x, int y, int ancho, int alto) {
    this.x = x;
    this.y = y;
    this.ancho = ancho;
    this.alto = alto;
  }

  void mostrarse() {
    noStroke();
    fill(144, 12, 63);
    rect(x, y, ancho, alto);
  }
}
