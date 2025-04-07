class Platform {
  PVector pos=new PVector();
  int platformHeight;
  int platformWidth;

  //konstruktør
  Platform(int ph, int pw, PVector p) {
    platformHeight = ph;
    platformWidth = pw;
    pos=p;
  }


  //metoder
  boolean collision(PVector spillerPos) {
    //Villas
    if (spillerPos.x>pos.x && spillerPos.x<pos.x+platformWidth && spillerPos.y+20>pos.y && spillerPos.y+20<pos.y+platformHeight) {
      return true;
    }
    return false;
  }
  void drawPlatform() {
    rect(pos.x, pos.y, platformWidth, platformHeight);
  }
  PVector getPos() {
    return pos;
  }
}
