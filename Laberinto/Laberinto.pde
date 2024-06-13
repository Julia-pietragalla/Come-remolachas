Personaje monstruo;
Pared[] misParedes=new Pared[6];
Comida[] remolachas=new Comida[4];
Puerta pasaje;
int i=0;
int contadorColisiones=0;
int t=0;
PImage fin;

void setup() {
  size(800, 600);
  cargarImg();
}

void draw() {
  background(198, 235, 133);

  pasaje.mostrarse();
  monstruo.mostrarse();
  for (int i=0; i<6; i++) {
    misParedes[i].mostrarse();
    if (monstruo.chocaste(misParedes[i])) {
      monstruo.detenerse();
      println("No sos un fantasma, te chocaste con la pared " + i);
    } else {
      monstruo.setDetenido();
    }
  }

  for (int i=0; i<4; i++) {
    remolachas[i].mostrarse();
    if (remolachas[i].tecomieron(monstruo)) {
      //  println("que ricooo (remolacha "+ i +")");
      contadorColisiones++;
      remolachas[i].serDigerida();

      monstruo.comer();
    } else {
      // monstruo.yacomio();
    }
  }
  
    if (monstruo.llegaste(pasaje)) {
    println("LLEGASTE!!!!!!!!!!!!");
    noStroke();
    fill(198, 235, 133);
    rect(0, 0, 800, 600);
    image(fin, 50,100,400,400);
    fill(144, 12, 63);
    textSize(40);
    text("TERMINASTE!",480,200);
    textSize(30);
    text("Comiste "+ contadorColisiones+ " remolachas.",480,300);
  }

  fill(144, 12, 63);
  textSize(20);
  text("Puntaje: "+contadorColisiones, 10, 580);
  
  
}



void keyPressed() {
  //println(key);
  if (key == 'a' || key == 'A' || keyCode == LEFT) {
    monstruo.moverse('a');
  }
  if (key == 'd' || key == 'D' || keyCode == RIGHT) {
    monstruo.moverse('d');
  }
  if (key == 'w' || key == 'W' || keyCode == UP) {
    monstruo.moverse('w');
  }
  if (key == 's' || key == 'S' || keyCode == DOWN) {
    monstruo.moverse('s');
  }
}
