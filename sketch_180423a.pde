import ddf.minim.*;
import processing.video.*;

Movie video;
Minim minim;
AudioPlayer player;
Capture camera;



PImage img;
PImage soundON;
PImage soundOFF;
PImage midia;
PImage pdf;
PImage controle;
PImage retorno;

int Camera = 0;

void setup(){
  size(1024,768);
  img = loadImage("SpaceBackground.jpg");
  soundON = loadImage("audio-volume.png");
  soundOFF = loadImage("mute-audio.png");
  midia = loadImage("play-player-button-of-video.png");
  pdf = loadImage("pdf-file-format-symbol.png");
  controle = loadImage("photo-camera.png");
  retorno = loadImage("left-return-arrow.png");
    
    //AUDIO
   minim = new Minim(this);
   player = minim.loadFile("sound.mp3");
   
   //VIDEO
   video = new Movie(this, "kudasai.mov");
   camera= new Capture(this, 640, 480, 30);
}

void draw(){
  image(img, 0, 0, width, height);
  stroke(#007FFF);
  image(midia, 32, 150);
  image(controle, 32, 250);
  image(soundON, 32, 350);
  image(soundOFF, 32, 450);
  image(retorno, 944, 680);
  rect(14, 70, 97, 519, 7);
  rect(135, 34, 830, 630);
  fill(#000000, 70);
  
  //VIDEO
  image(video, 150, 50, 800, 600);
  
  //CAMERA
  if (Camera==1){
  camera.start();
  image(camera, 150, 50, 800, 600);
  camera.read();}
  
  /*textSize(32);
  text("Naruto - Blue Bird(Hip Hop remix)", 30, 678);*/
}


void movieEvent(Movie m){
  m.read();
}

void mousePressed(){
  if(mouseX> 32 && mouseX< 75 && mouseY <400 && mouseY> 350){
  player.play(); 
    }
  /*else{
    player.pause();
    }*/
     if(mouseX> 32 && mouseX< 75 && mouseY <210 && mouseY> 150){
  video.play();
    }
  else{
    video.pause();
    }
  if(mouseX> 32 && mouseX< 75 && mouseY <510 && mouseY> 450){
  player.pause();
    }
  if(mouseX> 950 && mouseX< 1010 && mouseY< 750 && mouseY> 700){
  //video.stop();
  //exit();
  setup();
  }
  if(mouseX> 32 && mouseX< 75 && mouseY<300 && mouseY>270 ){
  Camera = 1;
   } else Camera = 0;
 }
  
  
  

/*void keyPressed(){
  if ((key == 'Q')|(key =='q')){
   video.play();
  }
  else{
    video.pause();
  }
}*/
