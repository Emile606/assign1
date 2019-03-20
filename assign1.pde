PImage bg,groundhog,life,robot,soil,soldier;
int sodierX,sodierY,robotX,robotY,laserX,laserY,laserW,laserMaxW = 40;

void setup() {
	size(640, 480, P2D);
  bg = loadImage("img/bg.jpg");
  soil = loadImage("img/soil.png");
  groundhog = loadImage("img/groundhog.png");
  life = loadImage("img/life.png");
  robot = loadImage("img/robot.png");
  soldier = loadImage("img/soldier.png");
  sodierY = 80*(floor(random(2,6))); //sodier.move
  robotX = 80*(floor(random(2,8))); //robot.move
  robotY = 80*(floor(random(2,6)));
  laserX = max(robotX-160,robotX+15);
  laserY = robotY+37;
}

void draw() {
  image(bg,0,0); //bgimage
//sun
  fill(255,255,0);
  noStroke();
  ellipse(590,50,130,130);
  fill(253,184,19);
//soil
  noStroke();
  ellipse(590,50,120,120);
  image(soil,0,160); 
//grass
  fill(124,204,25);
  noStroke();
  rectMode(CORNERS);
  rect(0,145,640,160);
//robot,hog
  image(robot,robotX,robotY);
  image(groundhog,280,80);
//heart
  image(life,10,10); 
  image(life,80,10);
  image(life,150,10);
//sodier's move
  image(soldier,sodierX-100,sodierY);
  sodierX += 4;
  sodierX %= 750;
//laser
  stroke(255,0,0);
  strokeWeight(10);
 line( (laserX -= 2), laserY, laserX+laserW,laserY );
   laserW = min( laserW += 2, laserMaxW );
  if ( laserX < robotX-160){
     laserX = robotX+25;
     laserW = 0;
     }
}
