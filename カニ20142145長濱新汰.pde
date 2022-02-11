float baseH = 20;

float arm1W =120;
float arm1D = 30;
float arm1L = 30;

float arm2W = 30;
float arm2D = 30;
float arm2L = 30;

float arm3W =100;
float arm3D = 30;
float arm3L = 30;

float claw1W =40;
float claw1D =10;
float claw1L = 10;

float claw2W = 40;
float claw2D = 10;
float claw2L = 10;

float armW1 = 10;
float armW2 = 10;
float armW3 = 5;

float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angle4 = 0;
float l3 = 0;

float dif = 1.0;




void setup() {
  size(1200,800,P3D);
  camera(600,-600,600, 0, 0, 0, 0, 0, 1);
}
 
void draw() {
  background(255);
  //translate(width/2, height/2);    //立体の中心を画面中央に移動  
rotateY(radians(mouseX)); 
rotateX(radians(mouseY)); 
  fill(230,0,0);
 
  beginShape(QUADS);    //四角形を描くことを宣言する
 vertex(200, 0, 0);  //上面
vertex(-200, 0, 0);
vertex(0, 0, 160);
vertex(200, 0, 0); 

vertex(200, 60, 0);  //右側面
vertex(0, 60, 160); 
vertex(0, 0, 160);
vertex(200, 0, 0); 

vertex(-200, 0, 0);  //背面
vertex(-200, 60, 0);
vertex(200, 60, 0);
vertex(200, 0, 0); 

vertex(0, 0, 160);  //左側面
vertex(-200, 0, 0);
vertex(-200, 60, 0);
vertex(0, 60, 160);

vertex(200, 60, 0);  //底面
vertex(-200, 60, 0);
vertex(0, 60, 160);
  endShape();    //四角形を閉じる
  
  pushMatrix();   //左目
translate(-60,0,120);
fill(0);
sphere(20);
popMatrix();
  
    pushMatrix();   //右目
translate(60,0,120);
fill(0);
sphere(20);
popMatrix();
  
  if(keyPressed){
    if(key == 'o'){
      angle0 = angle0 + dif;
    }
    if(key == 'O'){
      angle0 = angle0 - dif;
    }
    if(key == 'a'){
      angle1 = angle1 + dif;
    }
    if(key == 'A'){
      angle1 = angle1 - dif;
    }
    if(key == 'b'){
      angle2 = angle2 + dif;
    }
    if(key == 'B'){
      angle2 = angle2 - dif;
    }
    if(key == 'g'){
      angle3 = angle3 + dif;
    }
    if(key == 'G'){
      angle3 = angle3 - dif;
    }
    if(key == 's'){
      angle4 = angle4 + dif;
    }
    if(key == 'S'){
      angle4 = angle4 - dif;
    }
    if(key == 'R'){
      angle0 = 0;
      angle1 = 0;
      angle2 = 0;
      angle3 = 0;
      angle4 = 0;
    }
  }
  
  //base
  translate(70,30,100);
  rotateX(radians(angle0));
   fill(230,0,0);
  box(30,30,30);
  
  //1st link
   //go to 2nd joint
  translate(0,0,0);
  rotateZ(radians(angle1));
  //go to center of 2nd joi
  translate(10/2+arm1W/2,0,0);
   fill(230,0,0);
  box(arm1W,arm1D,arm1L);
  
  //2nd link
  //go to 2nd joint
  translate(0,0,0);
  rotateX(radians(angle2)); 
  //go to center of 2nd joint
  translate(arm1W/2,0,0);
   fill(230,0,0);
  box(arm2W,arm2D,arm2L);
  
  //3rd link
  // go to 3rd joint
  translate(0,0,0);
  rotateZ(radians(angle3));
  //go to center of 2nd joi
  translate(arm3L/2+15,0,0);
   fill(230,0,0);
  box(arm3W,arm3D,arm3L);
  
  
  
  translate(arm3W/2,-arm3L/2+claw1L/2,0);
  //rotate(radians(angle4));
  //go to center of 2nd joi
  translate(claw1W/2,0,0);
   fill(230,0,0);
  box(claw1W,claw1D,claw1L);
  
  
  translate(-claw2W/2,arm3L-claw2L,0);
  
  rotate(-radians(angle4));
  //go to center of 2nd joi
  translate(claw2W/2,0,0);
  
   fill(230,0,0);
  box(claw2W,claw2D,claw2L);
  
  
  
  
}
