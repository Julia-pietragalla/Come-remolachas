Personaje monstruo;
Comida[] remolachas=new Comida[8];
int contadorColisiones=0;
int contadorPerdidas=0;
int i=0;
PImage fin;
boolean terminaste=false;

void setup() {
  size(800, 600);
  monstruo= new Personaje(loadImage("remolachaeatersmiles.png"), loadImage("remolachaeater.png"), 400, 500, 80, 80);
  remolachas[0]=new Comida(loadImage("remolachados.png"), 200, 0, 40, 40, 1);
  remolachas[1]=new Comida(loadImage("remolachados.png"), 40, 0-10, 40, 40, 1);
  remolachas[2]=new Comida(loadImage("remolachados.png"), 600, 0-170, 40, 40, 1);
  remolachas[3]=new Comida(loadImage("remolachados.png"), 95, 0-80, 40, 40, 2);
  remolachas[7]=new Comida(loadImage("remolachados.png"), 500, 0-200, 40, 40, 1);
  remolachas[5]=new Comida(loadImage("remolachados.png"), 420, 0-150, 40, 40, 3);
  remolachas[6]=new Comida(loadImage("remolachados.png"), 360, 0-230, 40, 40, 1);
  remolachas[4]=new Comida(loadImage("remolachados.png"), 30, 0-100, 40, 40, 2);
  fin = loadImage("remolachaeatersmiles.png");
}

void draw() {
  int total = contadorColisiones + contadorPerdidas;
  background(198, 235, 133);
  noStroke();
  fill(58, 160, 110);
  rect(0, 580, 800, 20);
  
  monstruo.mostrarse();
if(!terminaste){
  for (int i=0; i<8; i++) {
    remolachas[i].mostrarse();
    if (remolachas[i].notecomieron()) {     
    //  println("perdiste la remolacha "+ i);
      contadorPerdidas++;
      remolachas[i].serPerdida();
    }
    if (remolachas[i].tecomieron(monstruo)) {
    // println("que ricooo (remolacha "+ i +")");
      contadorColisiones++;
      remolachas[i].serDigerida();
      monstruo.comer();
    }
  }
}

  fill(144, 12, 63);
  textSize(20);
  text("Puntaje: "+contadorColisiones+"/"+total, 10, 20);
 // text(contadorColisiones + "+" +contadorPerdidas + "=" + total , 10, 20);
  
  if (total>=8) {
// println("FINAL");
    terminaste=true;
    noStroke();
    fill(198, 235, 133);
    rect(0, 0, 800, 600);
    image(fin, 50, 100, 400, 400);
    fill(144, 12, 63);
    textSize(40);
    text("TERMINASTE!", 480, 200);
    textSize(30);
    text("Comiste "+ contadorColisiones+ " remolachas.", 480, 300);
  }
  
  println(contadorColisiones + "+" +contadorPerdidas + "=" + total);
  
}



void keyPressed() {
  //println(key);
  if (key == 'a' || key == 'A' || keyCode == LEFT) {
    monstruo.moverse('a');
  }
  if (key == 'd' || key == 'D' || keyCode == RIGHT) {
    monstruo.moverse('d');
  }
}
