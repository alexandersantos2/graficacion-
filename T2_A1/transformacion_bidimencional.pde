float x = 100;
float y = 100;
float xSpeed = 2;
float ySpeed = 2;
float angle = 0;
float scaleFactor = 1.5;
float skewFactor = 0.3;

void setup() {
  size(700, 700);
}

void draw() {
  background(255);
  
  // Actualiza la posición con velocidad
  x += xSpeed;
  y += ySpeed;
  
  // Rebote en los límites del lienzo
  if (x > width - 50 || x < 50) {
    xSpeed *= -1;
  }
  if (y > height - 50 || y < 50) {
    ySpeed *= -1;
  }
  
  // Transformaciones
  translate(x, y);
  scale(scaleFactor);
  rotate(radians(angle));
  applyMatrix(1, skewFactor, 0, 1, 0, 0);
  
  // Establece el color a azul
  fill(0, 0, 255);
  
  // Dibuja un rectángulo en la posición transformada
  rect(-50, -50, 100, 100);
  
  // Actualiza el ángulo para animar la rotación
  angle += 1;
}
