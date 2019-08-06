//Cell class file
//Should have three states: Empty, tree, and burning

class Cell{
  //State can be: empty, tree, burning
  private String state;
  private int hp;
  
public static final float cellSize=10;
public static final float offsetFromTop=20;//Offset from the top edge of the screen.
public static final float offsetFromLeft=20;//Offset from the left edge of the screen

  
  Cell(){//Constructor for an empty cell. This is how they all start out, as empty cells.
  this.state="empty";
  this.hp=0;
    
  }

  /**
  * Returns true if the cell is in the empty state.
  */  
  public boolean isEmpty(){
    if(this.state.equals("empty")){
      return true;}
      else
        return false;
  }

  /**
  * Returns true if the cell is in the tree state
  */
  public boolean isTree(){
    if(this.state.equals("tree")){
      return true;}
      else
        return false;
  }
  
  /**
  * Returns true if the cell is in the "fire" state.
  */
  public boolean isBurning(){
    if(this.state.equals("burning")){
      return true;}
      else
        return false;
  }
  
  /**
  * Returns a "fire"'s HP.
  */
  public int getHP(){
   return(hp); 
  }
  /**
  * Makes a tree grow at the designated cell
  */
  public void doGrow(){
   this.state="tree"; 
  }
  
  /**
  * Sets the tree on fire, eg, to the "burning" state.
  */
  public void doBurn(){
   this.state="burning"; 
   this.hp=3;
  }
  
  /**
  * Does "damage" to a burning tree
  */
  public void doDamage(){
   this.hp--; 
  }
  
  /**
  * Sets the state of a cell to empty (eg, after it's been burned)
  */
  public void doEmpty(){
   this.state="empty"; 
  }
  
  public void doRender(float xPos, float yPos){
    if(this.isEmpty())
      return;//If it's empty, no need to render anything.
    if(this.isTree())//If it's a tree, make it green.
      fill(0,128,0);
    if(this.isBurning())//If it's fire, make it red.
      fill(128,0,0);
    noStroke();
    //Finally, draws the square now that everything's been set up.
    rect((xPos*cellSize)+offsetFromLeft,(yPos*cellSize)+offsetFromTop,cellSize,cellSize);
    
    
    
  }
  
  
}
