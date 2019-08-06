//Implementation of the following model: https://rosettacode.org/wiki/Forest_fire

public static final int arrayWidth=50;
public static final int arrayHeight=50;
public static final double cellSize=3;
public static final double offsetFromTop=20;//Offset from the top edge of the screen.
public static final double offsetFromLeft=20;//Offset from the left edge of the screen
private Cell[][] forest;

void setup(){
  size(400,400);
  frameRate(5);
  forest = new Cell[arrayHeight][arrayWidth];//Back-to-front. I dislike 2D arrays immensely.
  
  for(int h=0; h<arrayHeight; h++){
    for(int w=0; w<arrayWidth; w++){//Fills the "forest" with empty cells.
     forest[h][w]=new Cell();
    }
  }
  
}

void draw(){//Each cycle is one "frame".
  
  for(int h=0; h<arrayHeight; h++){
    for(int w=0; w<arrayWidth; w++){//For every spot of the array...
      Cell c = forest[h][w];
      if(c.isEmpty()){//Logic for empty cells.
        
        
        
      }
      else if(c.isTree()){//Logic for tree cells.
        
        
        
      }
      else if(c.isFire()){//Logic for burning cells.
        
        
        
      }
      
      
    }
  }
  
  
  
  
  
  
  
}
