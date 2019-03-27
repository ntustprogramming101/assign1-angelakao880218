PImage backGround;
PImage soil;
PImage heart;
PImage rat;
PImage robot;
PImage soldier;
int heartR=25;
int robotX=floor(random(2,8))*80;
int robotY=floor(random(2,6))*80;
int soldierY=floor(random(2,6))*80;
int lightX,lightY,lightLong;
int lightMove,lightMove2;
int soldierX=-80;


void setup() {
	size(640, 480, P2D);
  backGround=loadImage("img/bg.jpg");
  soil=loadImage("img/soil.png");
  heart=loadImage("img/life.png");
  rat=loadImage("img/groundhog.png");
  robot=loadImage("img/robot.png");
  soldier=loadImage("img/soldier.png");
  lightX=robotX+25;
  lightY=robotY+37;
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
  stroke(#ff0000);
  strokeCap(ROUND);
  strokeWeight(10);
  line(lightMove,lightY,lightMove2,lightY);
  lightLong=(lightLong+2)%185;
  lightX=robotX+25;
  lightMove=min(lightX,lightX-lightLong);
  lightMove2=min(lightX,lightMove+30);
  
  //soldier
  image(soldier,soldierX,soldierY);
  soldierX+=5;
  if(soldierX>640){
  soldierX=-80; 
  }
  
}
