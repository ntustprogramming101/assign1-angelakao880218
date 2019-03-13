int z=0;
int k=0;
int t=floor(random(3,6))*80;
int c=floor(random(3,6))*80;
int e=floor(random(3,8))*80;
int u=0;
void setup() {
	size(640, 480, P2D);
  z=e-25;
}



void draw() {
  //sky
  PImage backGround;
  backGround=loadImage("img/bg.jpg");
  image(backGround,0,0);
  //soil
  PImage soil;
  soil=loadImage("img/soil.png");
  image(soil,0,160);
  //grass
  fill(124,204,25);
  noStroke();
  rect(0,145,640,15);
  //sun
  fill(255,255,0);
  ellipse(590,50,130,130);
  fill(253,184,19);
  ellipse(590,50,120,120);
  //heart
  int x=25;
  PImage heart;
  heart=loadImage("img/life.png");
  image(heart,10,10);
  image(heart,10+2*x+20,10);
  image(heart,10+4*x+40,10);
  //rat
  PImage rat;
  rat=loadImage("img/groundhog.png");
  image(rat,280,80);
  //robot
  PImage robot;
  robot=loadImage("img/robot.png");
  
  image(robot,e,c);
  //light
  fill(#ff0000);
  z=z-2;
  rect(z,c+32,40,10,5);
  //soldier
  PImage soldier;
  soldier=loadImage("img/soldier.png");
  image(soldier,k,t);
  k=k+10;
  k%=720;
  
}
