//Implementation of the following model: https://rosettacode.org/wiki/Forest_fire

public static final int arrayWidth=50;
public static final int arrayHeight=50;

  //#Variables for the specifics of the forest groth/burn conditions.
  public static final float chanceOfRegrowth = .0001;
  public static final float chanceOfSpread = .02;
  public static final float chanceOfBurning = .001;


private Cell[][] forest;

void setup(){
  size(700,700);
  frameRate(20);
  forest = new Cell[arrayHeight][arrayWidth];//Back-to-front. I dislike 2D arrays immensely.
  
  for(int h=0; h<arrayHeight; h++){
    for(int w=0; w<arrayWidth; w++){//Fills the "forest" with empty cells.
     forest[h][w]=new Cell();
    }
  }
  
}

void draw(){//Each cycle is one "frame".
  background(0);//Sets the background to black.
  
  for(int h=0; h<arrayHeight; h++){
    for(int w=0; w<arrayWidth; w++){//For every spot of the array...
      Cell c = forest[h][w];
      if(c.isEmpty()){//Logic for empty cells.
        if(random(1)<chanceOfRegrowth)//If random grow conditions are successful
          c.doGrow();
        
      }
      else if(c.isTree()){//Logic for tree cells.
        if(random(1)<chanceOfBurning)//If random grow conditions are successful
          c.doBurn();
        //Spread logic
        if(h+1<arrayHeight&&forest[h+1][w].isEmpty()&&random(1)<chanceOfSpread)
          forest[h+1][w].doGrow();
        if(h-1>0&&forest[h-1][w].isEmpty()&&random(1)<chanceOfSpread)
          forest[h-1][w].doGrow();
        if(w+1<arrayWidth&&forest[h][w+1].isEmpty()&&random(1)<chanceOfSpread)
          forest[h][w+1].doGrow();
        if(w-1>0&&forest[h][w-1].isEmpty()&&random(1)<chanceOfSpread)
          forest[h][w-1].doGrow();
        
        
      }
      else if(c.isBurning()){//Logic for burning cells. Since it only needs to run a single function, no need for curly braces.
        if(c.getHP()<3){
        if(h+1<arrayHeight&&forest[h+1][w].isTree())
          forest[h+1][w].doBurn();
        if(h-1>0&&forest[h-1][w].isTree())
          forest[h-1][w].doBurn();
        if(w+1<arrayWidth&&forest[h][w+1].isTree())
          forest[h][w+1].doBurn();
        if(w-1>0&&forest[h][w-1].isTree())
          forest[h][w-1].doBurn();
        }//Ensures that fires don't "teleport".
        c.doDamage();
        if(c.getHP()==0)//If a tree has "Fully burned".
          c.doEmpty();
        //#THIS WON'T WORK!!
        //Specifically, it's going to end up burning multiple cells at once - I think.
        //Might need to make it so it doesn't "empty" itself.
    }//That's the end of all the cell logic.
      
      c.doRender(w,h);
      
    }
  }
  
  
  
  
  
  
  
}
