void cargarImg(){
  monstruo= new Personaje(loadImage("remolachaeatersmiles.png"), loadImage("remolachaeater.png"), 100, 10, 70, 70);
  misParedes[0]= new Pared(100, 100, 500, 60);
  misParedes[1]= new Pared(40, 0, 60, 160);
  misParedes[2]= new Pared(100, 250, 600, 60);
  misParedes[3]= new Pared(700, 0, 60, 500);
  misParedes[4]= new Pared(0, 400, 500, 60);
  misParedes[5]= new Pared(440, 460, 60, 70);
  remolachas[0]=new Comida(loadImage("remolachados.png"), 200, 20, 40, 40);
  remolachas[1]=new Comida(loadImage("remolachados.png"), 40, 510, 40, 40);
  remolachas[2]=new Comida(loadImage("remolachados.png"), 600, 380, 40, 40);
  remolachas[3]=new Comida(loadImage("remolachados.png"), 30, 260, 40, 40);
  
  pasaje= new Puerta (700,510,60,80);
  fin = loadImage("remolachaeatersmiles.png");

}
