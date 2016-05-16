import pitaru.sonia_v2_9.*;
  
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Minim minim;
AudioInput in;
AudioRecorder recorder;
AudioPlayer player;
ArrayList<AudioPlayer> playList = new ArrayList<AudioPlayer>();

void setup(){
  size(512,512);
  minim = new Minim(this);
  for(int i = 1; i < 18; i++){
    player = minim.loadFile(str(i)+".mp3");
    playList.add(player);
  }
}

void draw(){

}

void keyPressed() {
  if (key == ENTER) {
    int rand = (int)random(playList.size());
    println(rand);
    playList.get(rand).play();
    playList.get(rand).rewind();
  }
  
}
