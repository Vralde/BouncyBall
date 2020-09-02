float SquareX = 0;
float SquareY = 0;
float SquareSX = 499;
float SquareSY = 499;
//Bruges til selve kassen.

float ElX = 100;
float ElY = 300;
//Bruges til boldens start position, samt når den skal flytte sig.

float EdgeUp = 0;
float EdgeRight = 0;
float EdgeDown = 0;
float EdgeLeft = 0;
//Bruges til måling af kollision på bolden og væggene.

float SpeedX = 5;
float SpeedY = 5;
//Bruges til boldens hastighed.

float SqDecrease = 1;
float SqIncrease = 0.5;
//Bruges til kassens skrumpe hastighed.

boolean TurnX = false;
boolean TurnY = false;
//Bruges til at få bolden til at ændre retning, efter kollision med væg.





void setup(){
 size(500, 500);
 background(0, 0, 0);
 frameRate(60);

  
}



void draw(){
  clear();
  
   
  stroke(255, 255, 255);
  fill(0, 0, 0);
  rect(SquareX, SquareY, SquareSX, SquareSY);
  fill(255, 255, 255);
  ellipse(ElX, ElY, 25, 25);
  //Her bliver kassen og bolden opstillet.
  

    if(EdgeUp >= 215){
      SqIncrease = 0;
      SqDecrease = 0;
  }
  //Her stopper kassen med at blive mindre. Den kan sagtens fortsætte, men bolden ville stoppe med at fungere, da den ender inden bagved "væggene".
 
  
  EdgeRight = SquareX + SquareSX;
  EdgeUp = SquareY;
  EdgeLeft = SquareX;
  EdgeDown = SquareY + SquareSY;
  
  SquareX = SquareX + SqIncrease;
  SquareSX = SquareSX - SqDecrease;
  SquareY = SquareY + SqIncrease;
  SquareSY = SquareSY - SqDecrease;
  
  //println("EdgeRight " + EdgeRight);
  //println("EdgeUp " + EdgeUp);
  //println("EdgeLeft " + EdgeLeft);
  //println("EdgeDown " + EdgeDown);
  
  //println("SquareX " + SquareX);
  //println("SquareY " + SquareY);
  //println("SquareSX " + SquareSX);
  //println("SquareSY " + SquareSY);
  
  //println("ElX " + ElX);

  //Alle "println" er blevet brugt til undersøgelser af funktioner.
  
  
  ElX = ElX + SpeedX;
  ElY = ElY + SpeedY;
  //Boldens hastighed
  
  if(ElX + 15 >= EdgeRight){
    TurnX = true;
  }
 
  if(ElX - 15 <= EdgeLeft){
    TurnX = true;
  }
 
  if(ElY + 15 >= EdgeDown){
    TurnY = true;
  }
  
  if(ElY - 15 <= EdgeUp){
    TurnY = true;
  }
  //Når bolden rammer en væg, skal den dreje. Grunden til der er minus og plus 15, er fordi boldens koordinat, kommer fra midten, derfor skal vi ændre boldens kollisions område lidt.
 
  
  
  if(TurnX == true){
    SpeedX = -SpeedX;
    TurnX = false;
  }
  
  if(TurnY == true){
    SpeedY = -SpeedY;
    TurnY = false;
  }
  //Når bolden rammer en væg, bliver en af hastighederne omvendt, så det ligner bolden hopper.
  
  
  

  
  
  
  
  
  
  
  
  
  
  
  
}
