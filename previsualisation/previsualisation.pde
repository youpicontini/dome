import themidibus.*;

ArrayList<Line> lineArray;
MidiBus myBus;

int numberElements = 4;
int sideNumSphere = 15;

int r, g , b;

int[] currentCoordinates = new int[4];
int[][] coordinatesSphere = new int[sideNumSphere][4];
int[] currentValues = new int[numberElements];
Sphere sphereDome;

void setup(){
     size(800,800, P2D);
     JSONObject tempJson = loadJSONObject("shape.json");
     lineArray = new ArrayList<Line>();
     for(int i = 0; i < numberElements; i++){
          for(int j = 0; j<4; j++){
               //println(i+"  "+j);
               currentCoordinates[j] = tempJson.getJSONArray("coordinates").getJSONArray(i).getJSONObject(0).getJSONArray("line").getInt(j);
          }
          lineArray.add(new Line(currentCoordinates[0],currentCoordinates[1],currentCoordinates[2],currentCoordinates[3], i));
     }
     for(int i = 0; i < sideNumSphere; i++){
          for(int j = 0; j<4; j++){
               coordinatesSphere[i][j] = tempJson.getJSONArray("sphere").getJSONArray(i).getJSONObject(0).getJSONArray("line").getInt(j);
          }
     }
     
     sphereDome = new Sphere(sideNumSphere, coordinatesSphere);
     r=255;
     g = b = 0;
     
     myBus = new MidiBus(this, -1, "");
     MidiBus.list();
 }

void draw(){
     background(0);
     g = (int)(255*sin(millis()/100));
     b = (int)(255*sin(millis()/100));
     //println(g + "          "+b+"             "+millis());
     for(int i = 0; i < numberElements; i++){
          lineArray.get(i).draw();
          lineArray.get(i).setRGB(r,g,b);
     }
     sphereDome.draw();
}