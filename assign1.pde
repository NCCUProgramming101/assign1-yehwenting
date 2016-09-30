/* please implement your assign1 code in this file. */
PImage backgroundImg1;
PImage backgroundImg2;
PImage fighter;
PImage treasure;
PImage hp;
PImage enemy;
int x,y;
int a,b;
int c;
int d,e;


void setup () {
  size(640,480) ;  // must use this size.
  backgroundImg1 = loadImage("img/bg1.png");
  backgroundImg2 = loadImage("img/bg2.png");
  fighter = loadImage("img/fighter.png");
  treasure = loadImage("img/treasure.png");
  hp = loadImage("img/hp.png");
  enemy = loadImage("img/enemy.png");
  //background's variable
  x = -640;
  y = 0;
  //treasure's variable
  a = floor(random(600));
  b = floor(random(45,430));
  //hp's variable
  c = floor(random(15,200));
  //enemy's variable
  d = 0;
  e = floor(random(80,400));
  
  
}

void draw() {
  //background
  image(backgroundImg1,x,0,640,480);
  image(backgroundImg2,y,0,640,480);
  x++;
  y++;
  if(y==640){
    y=-640;
  }
  if(x==640){
    x=-640;
  }
  
  //fighter
  image(fighter,570,240);
  
  //treasure
  image(treasure,a,b);
  
  //hp
  fill(250,12,6);
  rect(15,13,c,20);
  image(hp,10,10);
  
  //enemy
  image(enemy,d,e);
  d+=4;
  if(d>=640){
    d=-61;
  }
  
  
  
  
  
  
}
