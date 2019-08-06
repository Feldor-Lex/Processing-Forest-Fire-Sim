//Cell class file
//Should have three states: Empty, tree, and burning

class Cell{
  //State can be: empty, tree, burning
  private String state;
  public static final double chanceOfRegrowth = .01;
  public static final double chanceOfSpread = .5;
  public static final double chanceOfBurning = .05;
  
  Cell(){//Constructor for an empty cell. This is how they all start out, as empty cells.
  this.state="empty";
    
    
  }
  public void doTick(){
    
    
    
    
    
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
  public boolean isFire(){
    if(this.state.equals("fire")){
      return true;}
      else
        return false;
  }
  
  
  public void doRender(){
    
    
    
  }
  
  
}
