float angle = radians(222.49);
float speed = 0.001;


ArrayList<Particle> ps = new ArrayList<Particle>();
void setup() {
  //fullScreen(); // FULLSCREEN
  size(1024, 768); // EWindows Size
  stroke(0);
  strokeWeight(4);
}

float rt = 0;
void draw() {
  rt+=angle;
  ps.add(new Particle(rt));
  //background(255);
  fill(255, 20);
  rect(-10, -10, width+20, width+20);

  translate(width/2, height/2);
  for (int i = 0; i < ps.size(); i++) {
    Particle part = ps.get(i);
    part.show();
  }
}

class Particle {
  float x;
  float rot;

  Particle(float r) {
    rot = r;
    x = 0;
  }

  void show() {
    pushMatrix();
    rotate(rot);
    point(x, 0);

    x+=(min(width, height)/2-x)*speed;

    popMatrix();
  }
}
