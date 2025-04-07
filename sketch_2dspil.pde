Platform[] platformlevel1 =new Platform[9];
PVector[] platformPos=new PVector[9];
Player player=new Player();
boolean collision;
String[] ans={"Lille Bogstav", "Stort Bogstav"};
Question question=new Question("Hvad er en primitiv datatype?", ans, 1);

void setup() {
  size(800, 800);
  innitPlatformPos();
  for (int i = 0; i < 9; i = i+1) {
    platformlevel1[i]=new Platform(50, 100, platformPos[i]);
  }
}

void draw() {
  collision=false;
  background(227);
  for (int i= 0; i<9; i++) {
    platformlevel1[i].drawPlatform();
  }
  player.drawPlayer();
  for (int i=0; i<9; i++) {
    if (platformlevel1[i].collision(player.pos)) {
      collision=true;
    }
  }
  if (!collision) {
    player.gravity();
  }
  if (platformlevel1[platformlevel1.length-1].collision(player.pos)) {
  question.drawQuestion();
}
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP && collision) {
      player.jump();
    }
    if (keyCode == RIGHT) {
      player.right();
    }
    if (keyCode == LEFT) {
      player.left();
    }
  }
}
void innitPlatformPos() {
  platformPos[0]=new PVector(170, 300);
  platformPos[1]=new PVector(170, 400);
  platformPos[2]=new PVector(250, 600);
  platformPos[3]=new PVector(400, 500);
  platformPos[4]=new PVector(400, 600);
  platformPos[5]=new PVector(100, 600);
  platformPos[6]=new PVector(300, 425);
  platformPos[7]=new PVector(330, 300);
  platformPos[8]=new PVector(500, 300);
}
void mousePressed() {
  println(mouseX+" "+mouseY);
  if(question.collision(question.getFPos(),mouseX,mouseY)){
  text("incorrect",400,200);
  }
}
