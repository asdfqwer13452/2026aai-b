//week14-1 好玩的打地鼠 結合 week13-1 week10-1
//修改至week13-1 再加上week10-1的void mousePressed()
//把gopher.png 拉到程式裡  
PImage img; //外面宣告變數(可讓別人裡面使用)
void setup() {
  size(300, 300);
  img=loadImage("gopher.png"); //把gopher.png圖檔 拉到程式裡
}
void mousePressed(){
  int i= mouseY/100, j=mouseX/100; //左手i對y座標,右手j對x座標
  if(a[i][j]>0){//如果地鼠還在
    a[i][j]=-120;//放2秒的大叉叉
  }
}
int[][]a={{0, 0, 0}, {0, 0, 0}, {0, 0, 0}};//地鼠有沒有冒起來
void draw() {
  background(#fffff2); //淡黃色背景
  if (frameCount%60==0) {//每60framges(1秒)冒出一隻地鼠
    int i=int(random(3)), j=int(random(3));
    a[i][j]=60;//會站起來60frame(1秒)
  }
  for (int i=0; i<3; i++) {
    for (int j=0; j<3; j++) {
      float x=j*100, y=i*100+100;
      //if(i==0&&j==0) y+=mouseY;//暫時實驗用的,看到畫面壞了
      if (a[i][j]>0) {
        a[i][j]-=1;//生命的倒數計時
        y-=100*sin(a[i][j]*PI/60);
        image(img,x,y,100,100);
      } else if (a[i][j]<0){//死掉的地鼠
        y-=100;
        rect(x,y,100,100);
        line(x,y,x+100,y+100);
        line(x+100,y,x,y+100);
        a[i][j]+=1;
      }
    }
    rect(0, 100+i*100, 300, 100);//低一格的地方,放長方形擋住
  }
}
