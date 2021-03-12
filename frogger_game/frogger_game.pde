import ddf.minim.*;

Minim minim;
AudioPlayer effect;
AudioPlayer real;
AudioPlayer train1;
AudioPlayer music;
AudioPlayer sound;
AudioPlayer happy;


//PImage[] croc=new PImage[2];
PImage[] pug=new PImage[8];
PImage bg,button,car,lily,croc,train,house,dog;
boolean up=false;
boolean down=false;
boolean left=false;
boolean right=false;
int gs=0;
int width=800;
int height=533;
int bw=100;
int bh=100;
int xspeed=3;
float yspeed=1.0;
int grace=(int)(width*0.5)-(int)(bw*.5);
int boettger=(int)(height*.75)-(int)(bh*.5);
int x=(int)(width*0.5)-(int)(bw*.5);
int y=(int)(height*.75)-(int)(bh*.5);
int pugh=150;
int pugw=150;
float pugx=10;
float pugy=(int)(height*.5)-(int)(pugh*.5);
float yspeed1=1.0;
float carx=150;
float cary=533.00;
float cary1=cary-210.00;
float cary2=cary1-210.00;
float yspeed2=1.0;
//int cary2=cary-300;
boolean a=false;
boolean b=false;
boolean c=false;
boolean d=false;
float lilyx=350;
float lilyy=533;
float lilyy1=lilyy-210;
float lilyy2=lilyy-400;
float crocx=350;
float crocy=425;
float crocy1=crocy-210;
float crocy2=crocy-400;
boolean page=false;
float trainx=lilyx+175;
float trainy=-300;
float trainy1=trainy-415;
float housex=trainx+175;
float housey=10;
float housey1=housey+150;
float housey2=housey1+150;
float housey3=housey2+150;
int score=0;
float gyb=10;
boolean m=false;
boolean s=false;
boolean noise=false;
boolean hp=false;

 void setup()
 {
size(800,533);
smooth();
bg=loadImage("bg.jpg");
   button=loadImage("play.png");
   car=loadImage("racecar.png");
   lily=loadImage("lily.png");
  croc=loadImage("crocodile.gif");
  train=loadImage("train.png");
   house=loadImage("house.png");
   dog=loadImage("pug.gif");
   frameRate(20);
   //pug=loadImage("pug.gif");
//pug=loadImage("pug.gif"); 
pug[0] =loadImage("dog0.gif");
pug[1] =loadImage("dog1.gif");
pug[2] =loadImage("dog2.gif");
pug[3] =loadImage("dog3.gif");
pug[4] =loadImage("dog4.gif");
pug[5] =loadImage("dog5.gif");
pug[6] =loadImage("dog6.gif");
pug[7] =loadImage("dog7.gif");

  minim=new Minim(this);
    effect=minim.loadFile("effect.mp3");
    real=minim.loadFile("real.mp3");
    train1=minim.loadFile("train.mp3");
    music=minim.loadFile("music.mp3");
    sound=minim.loadFile("sound1.mp3");
    happy=minim.loadFile("happy.mp3");
//croc[0]=loadImage("croc1.gif");
//croc[1]=loadImage("croc2.gif");
//frameRate(2);

 //effect.loop();

//real.loop();
 // train1.loop();

 }  
 
 void draw()
 {




   
   if (gs==0)
  {
   GsZero(); 
   
  }
  else if (gs==1)
  {
   GsOne();
  }
   else if (gs==2)
  {
     GsTwo();
  }
  
 /* else if (gs==3)
  {
    GsThree();
  }*/
  
  /*if(score==4)
  {
    gs=3;
  }*/
  
  if (page) 
  {
gs=0;
  }

  
  
  if(gs==0)
  {
pugx=25;
 pugy=(int)(height*.5)-(int)(pugh*.5);
score=0;
xspeed=3;
  }
  if(gs==1)
 {
   m=false;
 }
 if(gs==0)
 {
   m=true;
 }
if(gs==2)
{
  s=true;
}
if(gs==0)
{
  s=false;
}

if(s)
{
  sound.play();
  sound.unmute();
}
if(s==false)
{
  sound.mute();
}

 if(m)
 {
   music.play(); 
   music.unmute();
 }
 if(m==false)
 {
   music.mute();
 }
 
 if(gs==3)
 {
  hp=true; 
 }
   if(gs==0||gs==1||gs==2)
 {
 hp=false;
 }  
 if(hp)
 {
   happy.play();
 happy.unmute();
 }
 
 if(hp==false)
 {
   happy.mute();
 }
 
 if (dist((pugx+35),(pugy+25),(carx+31),(cary+50))<=66)
 {
   real.play();
   gs=2;
 }
 else if (dist((pugx+35),(pugy+25),(carx+31),(cary1+50))<=66)
 {
  real.play();
   gs=2;
 }
 else if (dist((pugx+35),(pugy+25),(carx+31),(cary2+50))<=66)
 {
 real.play();
   gs=2;
 }
 

 
 if(dist((pugx+35),(pugy+25),(lilyx+46),(lilyy+46))<=70)
 {
  pugy=lilyy; 
 }
  if(dist((pugx+35),(pugy+25),(lilyx+46),(lilyy1+46))<=70)
 {
  pugy=lilyy1; 
 }
  if(dist((pugx+35),(pugy+25),(lilyx+46),(lilyy2+46))<=70)
 {
  pugy=lilyy2; 
 }
 
   if(dist((pugx+35),(pugy+25),(crocx+64),(crocy2+46))<=75&&((pugy>lilyy||pugy<lilyy)||(pugy>lilyy1||pugy<lilyy1)||(pugy>lilyy2||pugy<lilyy2)))
 {
  real.play();
  gs=2; 
 }
 
 if(dist((pugx+35),(pugy+25),(crocx+64),(crocy1+46))<=75&&((pugy>lilyy||pugy<lilyy)||(pugy>lilyy1||pugy<lilyy1)||(pugy>lilyy2||pugy<lilyy2)))
 {
   real.play();
  gs=2; 
 }
  if(dist((pugx+35),(pugy+25),(crocx+64),(crocy+46))<=75&&((pugy>lilyy||pugy<lilyy)||(pugy>lilyy1||pugy<lilyy1)||(pugy>lilyy2||pugy<lilyy2)))
 {
   real.play();
  gs=2; 
 }
 
 if(dist((pugx+35),(pugy+25),(trainx+29),(trainy+150))<=64)
 {
real.play();
   gs=2;
 }
   if(dist((pugx+35),(pugy+25),(trainx+29),(trainy+100))<=64)
 {
  real.play();
   gs=2;
 }
  if(dist((pugx+35),(pugy+25),(trainx+29),(trainy+200))<=64)
 {
 real.play();
   gs=2;
 }
  if(dist((pugx+35),(pugy+25),(trainx+29),(trainy+39))<=64)
 {
    real.play();
   gs=2;
 }
   if(dist((pugx+35),(pugy+25),(trainx+29),(trainy+251))<=64)
 {
  real.play();
   gs=2;
 }
 //train2
  if(dist((pugx+35),(pugy+25),(trainx+29),(trainy1+150))<=64)
 {
 real.play();
   gs=2;
 }
   if(dist((pugx+35),(pugy+25),(trainx+29),(trainy1+100))<=64)
 {
  real.play();
   gs=2;
 }
  if(dist((pugx+35),(pugy+25),(trainx+29),(trainy1+200))<=64)
 {
    real.play();
   gs=2;
 }
  if(dist((pugx+35),(pugy+25),(trainx+29),(trainy1+39))<=64)
 {
real.play();
   gs=2;
 }
   if(dist((pugx+35),(pugy+25),(trainx+29),(trainy1+251))<=64)
 {
     real.play();
   gs=2;
 }
 
/* if(gs==0)
 {
   noise=false;
 }
 
 if(noise)
 {
   real.play();
 }
 else 
 {
   real.pause();
 }*/
 
 if(dist((pugx+35),(pugy+25),housex+37,housey+33)<=58||dist((pugx+35),(pugy+25),housex+37,housey1+33)<=58||dist((pugx+35),(pugy+25),housex+37,housey2+33)<=58||dist((pugx+35),(pugy+25),housex+37,housey3+33)<=58)
 {
  // effect.loop();
    effect.play();
   // effect.pause();
  score+=1;
  xspeed+=1;
  pugx=25;
 pugy=(int)(height*.5)-(int)(pugh*.5);
 
//gyb+=2;
 }
   if(!effect.isPlaying()){
        effect.loop();
        effect.pause();
      }
 
   if(!real.isPlaying()){
        real.loop();
        real.pause();
      }
    if(!train1.isPlaying()){
        train1.loop();
        train1.pause();
      }
 
 if(gs==0||gs==2||gs==3)
 {
   effect.pause();
   
     train1.pause();
 }

 
 /*if(dist((pugx+35),(pugy+25),(crocx+64),(crocy+46))<=99)
 {
   gs=2;
 }
// if((pugx+35)*/
 
 
 /* 
  if(((pugx+40)>=120&&(pugx+40)<=180)&&((pugy+45)>=cary&&(pugy+45)<=cary))
  {
    a=true;
  }
if (((pugx+80)>=120&&(pugx+80)<=180)&&((pugy+45)>=cary&&(pugy+45)<=cary))
{
  b=true;
}
    if (((pugx+80)>=120&&(pugx+80)<=180)&&((pugy+105)>=cary&&(pugy+105)<=cary))
{
  c=true;
}*/
  
  
  if(pugy<-80||pugy>533)
  {
   gs=2; 
  }
  if(pugx<-60||pugx>800)
  {
   gs=2; 
  }
   if (left)
  {
  pugx-=gyb;
  }
  if (right)
  {
  pugx+=gyb;
  }
   if (up)
  {
  pugy-=gyb;
  }
   if (down)
  {
  pugy+=gyb;
  }

 }
 
 void GsZero()
 {


   background(bg);
   textAlign(CENTER);
  textSize(32);
  text("Dogger",width/2,50); 
     textSize(24);
  text("Fogger with a dog",width/2,100);
   textSize(18);
   text("Use the up, down, left and right arrows to avoid obstacles and get to the other side.",width/2,300);
      text("Get to 4 points and you win.",width/2,320);
   image(button,x,y);
   image( pug[frameCount%8],360,150);
 }
 
 void GsOne()
 {
background(0,150,0);
 text("Score: "+score,50,50); 
     textSize(16);
strokeWeight(5);//road
line(carx-10,0,carx-10,533);
line(carx+72,0,carx+72,533);
line(carx+31,0,carx+31,10);
line(carx+31,30,carx+31,40);
line(carx+31,60,carx+31,70);
line(carx+31,90,carx+31,100);
line(carx+31,120,carx+31,130);
line(carx+31,150,carx+31,160);
line(carx+31,180,carx+31,190);
line(carx+31,210,carx+31,220);
line(carx+31,240,carx+31,250);
line(carx+31,270,carx+31,280);
line(carx+31,300,carx+31,310);
line(carx+31,330,carx+31,340);
line(carx+31,360,carx+31,370);
line(carx+31,390,carx+31,400);
line(carx+31,420,carx+31,430);
line(carx+31,450,carx+31,460);
line(carx+31,480,carx+31,490);
line(carx+31,510,carx+31,520);




strokeWeight(10);//vertical tracks
line(trainx-10,0,trainx-10,533);
line(trainx+69,0,trainx+69,533);

strokeWeight(5);//horizontal tracks
line(trainx-25,10,trainx+84,10);
line(trainx-25,40,trainx+84,40);
line(trainx-25,70,trainx+84,70);
line(trainx-25,100,trainx+84,100);
line(trainx-25,130,trainx+84,130);
line(trainx-25,160,trainx+84,160);
line(trainx-25,190,trainx+84,190);
line(trainx-25,220,trainx+84,220);
line(trainx-25,250,trainx+84,250);
line(trainx-25,280,trainx+84,280);
line(trainx-25,310,trainx+84,310);
line(trainx-25,340,trainx+84,340);
line(trainx-25,370,trainx+84,370);
line(trainx-25,400,trainx+84,400);
line(trainx-25,430,trainx+84,430);
line(trainx-25,460,trainx+84,460);
line(trainx-25,490,trainx+84,490);
line(trainx-25,520,trainx+84,520);


image(house,housex,housey);
image(house,housex,housey1);
image(house,housex,housey2);
image(house,housex,housey3);
image(lily,lilyx,lilyy);
image(lily,lilyx,lilyy1);
image(lily,lilyx,lilyy2);
image( pug[frameCount%8], pugx, pugy);
image(car,carx,cary);
image(car,carx,(cary1));
image(car,carx,cary2);
image(croc,crocx,crocy);
image(croc,crocx,crocy1);
image(croc,crocx,crocy2);
image(train,trainx,trainy);
image(train,trainx,trainy1);

//image(croc[frameCount%2],crocx,crocy);


//image(car,carx,cary);
//image(pug,pugx,pugy);
//image(pug,pugx,pugy);

//cary+=yspeed;
//cary1+=yspeed1;
//cary2+=yspeed2;
cary=cary-xspeed;
cary1=cary1-xspeed;
  cary2=cary2-xspeed;
lilyy=lilyy-xspeed;
lilyy1=lilyy1-xspeed;
lilyy2=lilyy2-xspeed;
crocy=crocy-xspeed;
crocy1=crocy1-xspeed;
crocy2=crocy2-xspeed;
trainy=trainy+xspeed;
trainy1=trainy1+xspeed;

if(cary<=-100)
{
cary=height;
//cary1=530;
}

if(cary1<=-100)
{
  cary1=height;
}
if(cary2<=-100)
{
  cary2=height;
}



if (lilyy<=-92)
{
  lilyy=height;
}
if (lilyy1<=-92)
{
  lilyy1=height;
}
if (lilyy2<=-92)
{
  lilyy2=height;
}

if(crocy<=-92)
{
  crocy=height;
}
if(crocy1<=-92)
{
  crocy1=height;
}
if(crocy2<=-92)
{
  crocy2=height;
}
if(trainy>=533)
{
  train1.play();
  trainy=-300;
}
if(trainy1>=533)
{
  train1.play();
  trainy1=-300;
}


 }
 
 void GsTwo()
 {

   background(0,0,0);
   textSize(50);
  text("Game Over",width/2,75); 
     
     textSize(36);
     text("Dogger",width/2,155); 
       text("Click enter to play again",width/2,200); 
       textSize(24);
       text("Score= "+score,width/2,400); 
     image(car,(width/2)-31,230);
 }

void GsThree()
{
   background(0,0,0);
   textSize(50);
  text("You Win!",width/2,75); 
     
     textSize(36);
     text("Dogger",width/2,155); 
       text("Click enter to play again",width/2,200); 
       textSize(24);
       text("Score= "+score,width/2,400); 
     image(car,(width/2)-31,230);
  
}


//**INTERACTVITY**
//used to detirminr if mouse is clicking the button
boolean mouseOverButton(int x, int y, int bw, int bh)
{
  if((mouseX> x &&mouseX<x+bw)&&(mouseY>y&mouseY<y+bh))
  {
   return true;
  }
  else 
  {
    return false;
  }
}
void mousePressed()//button
{
  if(gs==0&&mouseOverButton(x,y,bw,bh))
  {
    gs=1;
    page=false;
  }
/*  else if(gs==1&&mouseOverButton(x,y,50,50))
  {
    gs=2;
  }*/
 
}


void keyPressed()//manuvering dog with keys

{
 if((gs==2||gs==3)&&key==ENTER)
{
  page=true;
  
}
  if (keyCode == LEFT)
  {
  left=true;
  }
  if (keyCode == RIGHT)
  {
  right=true;
  }
   if (keyCode == UP)
  {
  up=true;
  }
   if (keyCode == DOWN)
  {
  down=true;
  }

}

void keyReleased()//manuvering dog with keys
{
 

  if (keyCode == LEFT)
  {
  left=false;
  }
  if (keyCode == RIGHT)
  {
  right=false;
  }
  if (keyCode == UP)
  {
  up=false;
  }
  if (keyCode == DOWN)
  {
  down=false;
  }
  }

  
