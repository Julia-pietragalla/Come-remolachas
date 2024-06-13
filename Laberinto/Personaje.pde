class Personaje {
  PImage img1;
  PImage img2;
  int x;
  int y;
  int ancho;
  int alto;
  boolean detenido=false;
  char direccion;
  boolean comiendo = false;

  int tiempoCambioImg;

  Personaje(PImage img1, PImage img2, int x, int y, int ancho, int alto) {
    this.img1 = img1;
    this.img2 = img2;
    this.x = x;
    this.y = y;
    this.ancho = ancho;
    this.alto = alto;
    this.tiempoCambioImg =0;
  }

  void mostrarse() {
    if (this.comiendo) {
      image(img2, x, y, ancho, alto);
      if (millis() - tiempoCambioImg > 400) { // Mantener img2 por 1 segundo
        comiendo = false;
      }
    } else {
      image(img1, x, y, ancho, alto);
    }
  }

  void comer() {
    this.comiendo = true;
    tiempoCambioImg = millis();// Guardar el tiempo actual
  }
  void yacomio() {
    this.comiendo = false;
  }
  
  
  boolean llegaste(Puerta unaPuerta) {
    return x < unaPuerta.x + unaPuerta.ancho && x + ancho > unaPuerta.x &&
      y < unaPuerta.y + unaPuerta.alto && y + alto > unaPuerta.y;
  }


  boolean chocaste(Pared unaPared) {
    return x < unaPared.x + unaPared.ancho && x + ancho > unaPared.x &&
      y < unaPared.y + unaPared.alto && y + alto > unaPared.y;
  }

  void setDetenido() {
    detenido=false;
  }

  void detenerse() {
    detenido=true;
    switch(direccion) {
    case 'w':
      y=y+10;
      break;
    case 's':
      y=y-10;
      break;
    case 'a':
      x=x+10;
      break;
    case 'd':
      x=x-10;
      break;
    }
  }

  void moverse(char direccion) {
    if (!detenido) {

      this.direccion = direccion;

      switch(direccion) {
      case 'w':
        y=y-10;
        if (y<0) {
          y=0;
        }
        break;
      case 's':
        y=y+10;
        if (y>530) {
          y=530;
        }
        break;
      case 'a':
        x=x-10;
        if (x<0) {
          x=0;
        }
        break;
      case 'd':
        x=x+10;
        if (x>740) {
          x=740;
        }
        break;
      }
    }
  }
}
