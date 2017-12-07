class Kvadrat {
  
  float x, y, s;
  Kvadrat(float _x, float _y, float _s){
    this.x = _x;
    this.y = _y;
    this.s = _s;
  }
  
  void draw() {
    rect(this.x,this.y,this.s,this.s);
  }
  
  void right(float _s) {
    this.x+=_s;
  }
}

class nasl extends Kvadrat {
    
   color c1;
   nasl(float _x, float _y, float _s, fill(c1)) {
    super(_x, _y, _s);
    
   color c1 = color(128,156,64);
   }
}


void setup()
{
  
  size(600,600);
  nasl[] k_array;
  k_array = new nasl[10];
  for(int i=0; i<10; i++){
    k_array[i] = new nasl(random(width), random(height), 100.0, fill(c1) );
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