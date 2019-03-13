PImage backGround;
PImage soil;
PImage heart;
PImage rat;
PImage robot;
PImage soldier;
int heartR;
int robotX=floor(random(3,8))*80;
int robotY=floor(random(3,6))*80;
int soldierY=floor(random(3,6))*80;
int lightX;
int soldierX;




void setup() {
	size(640, 480, P2D);
  backGround=loadImage("img/bg.jpg");
  soil=loadImage("img/soil.png");
  heart=loadImage("img/life.png");
  rat=loadImage("img/groundhog.png");
  robot=loadImage("img/robot.png");
  soldier=loadImage("img/soldier.png");
  heartR=25;
  lightX=robotX-10;
}





void draw() {
  //sky
  image(backGround,0,0);
  
  //soil
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
  image(heart,10,10);
  image(heart,10+2*heartR+20,10);
  image(heart,10+4*heartR+40,10);
  
  //rat
  image(rat,280,80);
  
  //robot
  image(robot,robotX,robotY);
  
  //light
  fill(#ff0000);
  lightX=lightX-2;
  rect(lightX,robotY+32,40,10,5);
  
  //soldier
  image(soldier,soldierX,soldierY);
  soldierX=soldierX+10;
  soldierX%=720;
  
}
