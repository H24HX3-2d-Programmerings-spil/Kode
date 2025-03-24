Platform[] platformlevel1 =new Platform[9];
PVector[] platformPos=new PVector[9];
Player player=new Player();
boolean collision;


void setup() {
  size(800, 800);
  platformPos[0]=new PVector(100, 400);
  platformPos[1]=new PVector(250, 400);
  platformPos[2]=new PVector(250, 600);
  platformPos[3]=new PVector(400, 400);
  platformPos[4]=new PVector(400, 600);
  platformPos[5]=new PVector(550, 400);
  platformPos[6]=new PVector(550, 600);
  platformPos[7]=new PVector(400, 100);
  platformPos[8]=new PVector(100, 600);
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
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP && collision) {
      player.jump();
    }
    if (keyCode == RIGHT) {
      player.right();
    }
  }
}
