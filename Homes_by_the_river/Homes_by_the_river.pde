int NUMCIRCLES = 500;
float dia=15;
float[] thex=new float[NUMCIRCLES];
float[] they=new float[NUMCIRCLES];;
float[] thev=new float[NUMCIRCLES];;
float[] thet=new float[NUMCIRCLES];;

int i;
int randomy;
float r, g, b, a,x2,y2;
void setup()
{
 size(1000,900);
 frameRate(10);
 for(i=0;i<NUMCIRCLES;i++)
 {
 thex[i]=random(0,width);
 they[i]=random(0,height);
 thev[i]=random(5,20);
 thet[i]=random(0,TWO_PI);
 }
 
 
}

void draw()
{

  
  background(0);
  fill(255,40);
  for(i=0;i<NUMCIRCLES;i++)
  {
    r = random(0,128);
  g = random(100, 192);
  b = random(10, 250);
  a = random(50, 200);
  x2 = thex[i]+random(-20, 20);
  y2 = they[i]+random(-20, 20);
  stroke(r, g, b, a);
  line(thex[i],they[i], x2,y2);
    fill(r, g, b, a);
    ellipse(thex[i],they[i],20,20);
  
  //thex[i]+=thev[i]*cos(thet[i]);
  //they[i]+=thev[i]*sin(thet[i]);
  thex[i]=x2+random(-50, 400);
  thex[i]=y2+random(-100, 200);
  if(thex[i]>width) thet[i]= PI-thet[i];
  if(thex[i]<0) thet[i]=PI-thet[i];
  if(they[i]>height) thet[i]= TWO_PI-thet[i];
  if(they[i]<0) thet[i]=TWO_PI-thet[i];
   
     

  }
  for (int i = 0; i < 1000; i = i + 100)
  {
   
    randomy=i-100;
    house(i-400, randomy);
    house(randomy+50,i-400);
  }
}

void house(int x, int y)
{
  
  fill(255);
  pushMatrix();
  translate(x, y);
  triangle(30, 0, 0, 30, 60, 30);
  rect(0, 30, 60, 60);
  rect(24, 60, 20, 30);
  popMatrix();
}
