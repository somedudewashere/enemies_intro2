//toDo
//add a siz PVector and use it to make the size of the ellipses
//change the speed to a vel pvector
//change the array to a PVector array list



int numCircles = 10;

//float[] xs = new float[numCircles];
//float[] ys = new float[numCircles];
PVector[] pos = new PVector[numCircles];
PVector[] siz = new PVector[numCircles];
float speed = -6;

void setup()
{
 fullScreen(); 
 
 for(int i = 0;i < numCircles; i++){
   //xs[i]= width + 150 + i*300;
   //ys[i] = height*0.8;
   pos[i] = new PVector(width + 150 + i*300, height*0.8);
   siz[i] = new PVector(50+random(0, 150),(50+random(0,150)));
 }
}


void draw()
{
 background(0); 
 
 for(int i = 0;i < numCircles; i++){
 //update
 pos[i].x += speed;
 //check
 if(pos[i].x < -150){
   pos[i].x = width + siz[i].x/2; 
 }
 
 //draw
 //ellipse(xs[i],ys[i],100,100);
 ellipse(pos[i].x, pos[i].y, siz[i].x, siz[i].y);
 }
 
}
