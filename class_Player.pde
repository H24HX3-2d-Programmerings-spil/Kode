class Player {
  PVector pos=new PVector(150, 580);
  PVector velo=new PVector(0, -60);
  int size=40;
  //konstruktør
  Player() {
  }
  //metoder
  void drawPlayer() {
    circle(pos.x, pos.y, size);
  }
  void jump() {
    pos.add(velo);
  }
  void gravity() {
    pos.y+=3;
  }
  void right() {
    pos.x+=20;
  }
}
