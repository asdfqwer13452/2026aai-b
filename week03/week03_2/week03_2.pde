//week03-2 好玩的程式設計 Processing 結合for()+if()
//ctrl-n 開新的程式視窗
void setup(){
  size(800,100);
}
void draw(){
  background(#000000);//用tool-色彩選擇器 挑顏色
  for(int x=0;x<800;x+=100){
    if(x< mouseX && mouseX <x+100) fill(#A000F7);
    else fill(#D589FF);
    rect(x,0,100,100);
  }
}
