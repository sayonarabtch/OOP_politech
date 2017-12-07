class Kvadrat {
  
  float x, y, s;
  Kvadrat(float _x, float _y, float _s){
    this.x = _x;
    this.y = _y;
    this.s = _s;
  }
  
  
  
  void right(float _s) {
    this.x+=_s;
  }
}


class Nasl extends Kvadrat {
    
   color c1;
   Nasl(float _x, float _y, float _s, color  _c1) {
    super(_x, _y, _s);
    this.c1 = _c1;
  }
  
  void draw() {
    rect(this.x,this.y,this.s,this.s);
    fill(this.c1);
  }
}
Nasl[] k_array;

void setup()
{
  
  size(600,600);
  //Kvadrat[] k_array;
  k_array = new Nasl[10];
  for(int i=0; i<10; i++){
   
    k_array[i] = new Nasl(random(width), random(height), 100.0, int(random(#000000, #ff0000)));
  }
}



void draw()
{
  background(0);
  
  for(int i=0; i<10; i++){
     k_array[i].draw();
     k_array[i].right(random(5));
  }
}