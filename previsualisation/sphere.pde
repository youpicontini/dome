class Sphere{
     
     int sideNum;
     int sR,sG,sB,strokeWidth;
     int[][] coordinates;
     
     Sphere(int _sideNum, int[][] _coordinates){

          sideNum = _sideNum;
          coordinates = _coordinates;
          sR = 191;
          sG = 153;
          sB = 89;
          strokeWidth = 8;
     }
     
     void draw(){
          stroke(0,255,0);
          for(int i = 0; i < sideNum; i++){
               line(coordinates[i][0],coordinates[i][1],coordinates[i][2],coordinates[i][3]);
          }
     }
}