int numCircles = 50;

//float[] xs = new float[numCircles];
//float[] ys = new float[numCircles];
PVector[] pos = new PVector[numCircles];
float speed = -6;

void setup()
{
 fullScreen(); 
 
 for(int i = 0;i < numCircles; i++){
   //xs[i]= width + 150 + i*300;
   //ys[i] = height*0.8;
   pos[i] = new PVector(width + 150 + i*300, height*0.8);
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
   pos[i].x = width + 150; 
 }
 
 //draw
 //ellipse(xs[i],ys[i],100,100);
 ellipse(pos[i].x ,pos[i].y,100,100);
 }
 
}
