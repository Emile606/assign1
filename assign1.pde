PImage bg,groundhog,life,robot,soil,soldier;
int sodierX,sodierY,robotX,robotY,laserX,laserY;

void setup() {
	size(640, 480, P2D);
  bg = loadImage("img/bg.jpg");
  soil = loadImage("img/soil.png");
  groundhog = loadImage("img/groundhog.png");
  life = loadImage("img/life.png");
  robot = loadImage("img/robot.png");
  soldier = loadImage("img/soldier.png");
  sodierY = 80*(floor(random(2,6))); //sodier.move
  robotX = 80*(floor(random(2,6))); //robot.move
  robotY = 80*(floor(random(2,6)));
  laserX = robotX; //laser.X,Y
  laserY = robotY+37;

}

void draw() {
  image(bg,0,0); //bgimage
  
  fill(255,255,0);//sun
  stroke(255,255,0);
  ellipse(590,50,130,130);
  fill(253,184,19);
  stroke(253,184,19);
  ellipse(590,50,120,120);
  
  image(soil,0,160); //soil
  
  /*strokeWeight(1);//check line
  line(80,160,80,480);
  line(160,160,160,480);
  line(240,160,240,480);
  line(320,160,320,480);
  line(400,160,400,480);
  line(480,160,480,480);
  line(560,160,560,480);*/
  
  fill(124,204,25);//grass
  stroke(124,204,25);
  rectMode(CORNERS);
  rect(0,145,640,160);
  
  image(groundhog,280,80);
  image(life,10,10);  //heart
  image(life,80,10);
  image(life,150,10);
  
  image(soldier,sodierX-100,sodierY); //sodier's move
  sodierX += 4;
  sodierX %= 750;
  
  stroke(255,0,0);//laser
  strokeWeight(10);
  line(laserX,laserY,laserX-20,laserY);
  laserX -= 2;
  if(laserX<(robotX-135)){
    laserX=robotX+25;
    }

  image(robot,robotX,robotY); //robot
}
