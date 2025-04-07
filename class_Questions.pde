class Question {
  String question;
  String[] answers;
  int correct = 0;
  PVector qPos=new PVector(200, 100);
  PVector fPos=new PVector(100, 200); //falsk
  PVector sPos=new PVector(600, 200); //sandt

  //konstruktør
  Question(String spg, String[] ans, int cor) {
    question = spg;
    answers = ans;
    correct = cor;
  }

  //metoder
  void drawQuestion() {
    fill(0);
    textSize(35);
    text(question, qPos.x, qPos.y);
    textSize(20);
    fill(255);
    rect(fPos.x, fPos.y, 110, -20);
    rect(sPos.x, sPos.y, 110, -20);
    fill(0);
    text(answers[0], fPos.x, fPos.y);
    text(answers[1], sPos.x, sPos.y);
    fill(255);
  }
  PVector getFPos() {
    return fPos;
  }
  PVector getSPos() {
    return sPos;
  }
   boolean collision(PVector pos,int x,int y) {
    //Villas
    if (pos.x>x && pos.x<x+110 && pos.y+20>y && pos.y+20<y+-20) {
      return true;
    }
    return false;
  }
}
