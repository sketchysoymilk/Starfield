Particle [] hi = new Particle[2000];
void setup()
{
  size(500,500);
  background(0);
  for(int i = 0; i < hi.length; i++)
    hi[i] = new Particle();
  for(int i = 1; i < 2; i++)
    hi[i] = new OddballParticle();
  noStroke();
}
void draw()
{ 
  fill(0,0,0,10);
  rect(0,0,500,500);
  for(int i = 0; i < hi.length; i++){
    hi[i].move();
    hi[i].show();
  }
  
}

class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor, mySize;
  Particle(){
    myX = 250;
    myY = 250;
    mySpeed = Math.random()*6;
    myAngle = Math.random()*360;
    myColor = color(255,(int)(Math.random()*153)+102,102);
    mySize = (int)(Math.random()*20);
  }
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill(myColor);
    ellipse((float)(myX), (float)(myY),mySize,mySize);
  }
}

class OddballParticle extends Particle //inherits from Particle
{
  OddballParticle(){
    myX = 250;
    myY = 250;
    myColor = color(255);
  }
  void move(){
    myX=myX+(Math.random()*2)-1;
    myY=myY+(Math.random()*2)-1;
  }
  void show(){
    fill(myColor);
    ellipse((float)myX,(float)myY, 30,30);
  }
}
