PVector direction;
float magnitude;

CubeMatrix cubeMatrix;
//long lastTime = 0;

void setup() {
  size(846/2, 1504/2, P3D);
  smooth();
  cubeMatrix = new CubeMatrix();
  //  lastTime = millis();
}

void draw() {
  background(0);
  cubeMatrix.display();
  if (cubeMatrix.isMoving) {
    cubeMatrix.move();
    if (!cubeMatrix.speedAssigned) {
      cubeMatrix.assignSpeed();
    }
  } else {
    cubeMatrix.reset();
  }
}

void mouseClicked() {
  magnitude = random(10, 100);
  cubeMatrix.isMoving = !cubeMatrix.isMoving;
}

