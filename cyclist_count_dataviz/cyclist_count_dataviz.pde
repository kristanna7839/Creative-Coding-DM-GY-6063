/*
** Cyclist Count by Year At Selected Commuter Locations
** data from:
** https://data.cityofnewyork.us/d/m6ar-24vj?category=Transportation&view_name=Cyclist-Count-by-Year-At-Selected-Commuter-Locatio
** your task: create a unique data visualization.
** for more information on working with data in Processing, see: https://processing.org/tutorials/data/
*/

String[] headers;
int[][] data; 

void setup(){
  smooth();
  size(900,600);
  // load csv file into String array
  String [] lines = loadStrings("Cyclist_Count_by_Year_At_Selected_Commuter_Locations.csv");

  
  //split the first line into an array and load it into our global headers array
  headers = split(lines[0], ",");
   
   
  //create a temporary 2D String array.
  //we'll think of it as a 28 row x 9 column matrix
  String[][] tempData = new String[lines.length-1][headers.length];

  
  //Curious to see how many rows and columns we're loading into our tempData?
  //uncomment this line below.
  //println( lines.length-1 + " rows by " + headers.length + " cols.");
  
  //loop through each of the subsequent lines after the header row and
  //assign each to the row index of our tempData matrix 
  for(int i = 1; i < lines.length; i++){
    tempData[i-1] = split(lines[i], ",");//assigns an array to each temData row
  }
  

  
  //construct our global data matrix.
  //we can also think of this as a 28 row x 9 col matrix
  data = new int[tempData.length][tempData[0].length];

  //loop through each of the rows and columns of our tempData matrix.
  //a.k.a. nested for loops.
  for(int i = 0; i < tempData.length; i++){ //for each row
    for(int j = 0; j < tempData[i].length; j++){ //and for each col
 
        data[i][j] = Integer.parseInt(tempData[i][j]);
        
    }
  }
}
void draw(){

  background(245);
 
  float screenPart = height/28; 
  
  
  int yposition = height/2-100;
  int leftMargin = 20;
 
 


 



  strokeWeight(4);
  textAlign(RIGHT);
  textSize(10);
  fill(0);
  
  
if ( mouseY > 0 && mouseY < 21 ){
  int n = 1;
  
 for ( int a = 1 ; a < data[n].length ; a++) {
  int graphData = data[n][a];
  int graphHigh = graphData/10 ;
    if ( graphData == data[n][8] ) { // IF IT'S GRAND TOTAL
    strokeWeight(9);  // INCREASE STROKE WEIGHT
    stroke(0); // CHANGE STROKE COLOR TO BLACK
    yposition = yposition+20;
    fill(0);
    textSize(14); 
    text(headers[a],(width-leftMargin)-graphHigh-10,yposition+6);
    textSize(30); // SET TEXT SIZE FOR YEAR
    text(data[n][0],width-leftMargin+5,yposition + 50);  // SHOW YEAR
    }else{
    stroke(100);
    fill(150);
    text(headers[a],(width-leftMargin)-graphHigh-10,yposition+3);
    }//end else    
  line (width-leftMargin,yposition,(width-leftMargin)-graphHigh,yposition);
  yposition = yposition + 30 ;
  }  // end for
  

} else if (mouseY > 21 && mouseY < 21*2){
int n = 2;
  
 for ( int a = 1 ; a < data[n].length ; a++) {
  int graphData = data[n][a];
  int graphHigh = graphData/10 ;
    if ( graphData == data[n][8] ) { // IF IT'S GRAND TOTAL
    strokeWeight(9);  // INCREASE STROKE WEIGHT
    stroke(0); // CHANGE STROKE COLOR TO BLACK
    yposition = yposition+20;
    fill(0);
    textSize(14); 
    text(headers[a],(width-leftMargin)-graphHigh-10,yposition+6);
    textSize(30); // SET TEXT SIZE FOR YEAR
    text(data[n][0],width-leftMargin+5,yposition + 50);  // SHOW YEAR
    }else{
    stroke(100);
    fill(150);
    text(headers[a],(width-leftMargin)-graphHigh-10,yposition+3);
    }//end else    
  line (width-leftMargin,yposition,(width-leftMargin)-graphHigh,yposition);
  yposition = yposition + 30 ;
  }  // end for

}else if (mouseY > 21+(21*1) && mouseY < 21+(21*2)){
int n = 3;
  
 for ( int a = 1 ; a < data[n].length ; a++) {
  int graphData = data[n][a];
  int graphHigh = graphData/10 ;
    if ( graphData == data[n][8] ) { // IF IT'S GRAND TOTAL
    strokeWeight(9);  // INCREASE STROKE WEIGHT
    stroke(0); // CHANGE STROKE COLOR TO BLACK
    yposition = yposition+20;
    fill(0);
    textSize(14); 
    text(headers[a],(width-leftMargin)-graphHigh-10,yposition+6);
    textSize(30); // SET TEXT SIZE FOR YEAR
    text(data[n][0],width-leftMargin+5,yposition + 50);  // SHOW YEAR
    }else{
    stroke(100);
    fill(150);
    text(headers[a],(width-leftMargin)-graphHigh-10,yposition+3);
    }//end else    
  line (width-leftMargin,yposition,(width-leftMargin)-graphHigh,yposition);
  yposition = yposition + 30 ;
  }  // end for

}else if (mouseY > 21+(21*2) && mouseY < 21+(21*3)){
int n = 4;
  
 for ( int a = 1 ; a < data[n].length ; a++) {
  int graphData = data[n][a];
  int graphHigh = graphData/10 ;
    if ( graphData == data[n][8] ) { // IF IT'S GRAND TOTAL
    strokeWeight(9);  // INCREASE STROKE WEIGHT
    stroke(0); // CHANGE STROKE COLOR TO BLACK
    yposition = yposition+20;
    fill(0);
    textSize(14); 
    text(headers[a],(width-leftMargin)-graphHigh-10,yposition+6);
    textSize(30); // SET TEXT SIZE FOR YEAR
    text(data[n][0],width-leftMargin+5,yposition + 50);  // SHOW YEAR
    }else{
    stroke(100);
    fill(150);
    text(headers[a],(width-leftMargin)-graphHigh-10,yposition+3);
    }//end else    
  line (width-leftMargin,yposition,(width-leftMargin)-graphHigh,yposition);
  yposition = yposition + 30 ;
  }  // end for

}else if (mouseY > 21+(21*3) && mouseY < 21+(21*4)){
int n = 5;
  
 for ( int a = 1 ; a < data[n].length ; a++) {
  int graphData = data[n][a];
  int graphHigh = graphData/10 ;
    if ( graphData == data[n][8] ) { // IF IT'S GRAND TOTAL
    strokeWeight(9);  // INCREASE STROKE WEIGHT
    stroke(0); // CHANGE STROKE COLOR TO BLACK
    yposition = yposition+20;
    fill(0);
    textSize(14); 
    text(headers[a],(width-leftMargin)-graphHigh-10,yposition+6);
    textSize(30); // SET TEXT SIZE FOR YEAR
    text(data[n][0],width-leftMargin+5,yposition + 50);  // SHOW YEAR
    }else{
    stroke(100);
    fill(150);
    text(headers[a],(width-leftMargin)-graphHigh-10,yposition+3);
    }//end else    
  line (width-leftMargin,yposition,(width-leftMargin)-graphHigh,yposition);
  yposition = yposition + 30 ;
  }  // end for

}else if (mouseY > 21+(21*4) && mouseY < 21+(21*5)){
int n = 6;
  
 for ( int a = 1 ; a < data[n].length ; a++) {
  int graphData = data[n][a];
  int graphHigh = graphData/10 ;
    if ( graphData == data[n][8] ) { // IF IT'S GRAND TOTAL
    strokeWeight(9);  // INCREASE STROKE WEIGHT
    stroke(0); // CHANGE STROKE COLOR TO BLACK
    yposition = yposition+20;
    fill(0);
    textSize(14); 
    text(headers[a],(width-leftMargin)-graphHigh-10,yposition+6);
    textSize(30); // SET TEXT SIZE FOR YEAR
    text(data[n][0],width-leftMargin+5,yposition + 50);  // SHOW YEAR
    }else{
    stroke(100);
    fill(150);
    text(headers[a],(width-leftMargin)-graphHigh-10,yposition+3);
    }//end else    
  line (width-leftMargin,yposition,(width-leftMargin)-graphHigh,yposition);
  yposition = yposition + 30 ;
  }  // end for

}





}
