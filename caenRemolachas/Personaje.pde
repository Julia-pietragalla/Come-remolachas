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
      if (millis() - tiempoCambioImg > 400) { 
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


  void moverse(char direccion) {
    this.direccion = direccion;
    switch(direccion) {
    case 'a':
      x=x-20;
      if (x<0) {
        x=0;
      }
      break;
    case 'd':
      x=x+20;
      if (x>740) {
        x=740;
      }
      break;
    }
  }
}
