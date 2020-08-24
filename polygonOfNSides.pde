
int n = 3;
double area;
void setup(){
  size(500,500);
}

double area(){
  return n/2 * sin(2*PI / n);
}

void draw(){
 background(100);
 textAlign(CENTER,CENTER);
 textSize(30);
 area = area();
 text("area " + area,width/2,50);
 text("n = " + n,width/2,100);
 noStroke();
 fill(255);
 circle(width/2,height/2,200);
 fill(0);
 pushMatrix();
 translate(width/2,height/2);
 beginShape();
 for(int i = 0; i<n;i++){
   float x = 100 * cos(i  * 2*PI / n);
   float y = 100 * sin(i  * 2*PI / n);
   vertex(x,y);
 }
 endShape(CLOSE);
 popMatrix(); 
}


void mousePressed(){
  n++;
  area = area();
}
