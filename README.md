# Osmos  
  Osmos is a single player game, in which you control an orange cell with your mouse. Your goal is to grow by absorbing other cells, and to become the biggest cell there is.  
**Working Features**
      - Direct your cell's movement using your mouse.  
      - When two cells come in contact with each other, the bigger of the two absorbs the smaller one, growing in size.  
      - The bigger you are, the slower you move.  
      - Different cell types  
      - 5 levels. To progress to a higher level, you need to make your cell bigger than a certain size. Higher levels are slightly harder than lower levels, and have a bigger variety of cell types.  
      - Upon losing (being eaten) or beating level 5, you will be given the choice of restarting from level 1 or closing the game.  
      - Zooming enabled  
**Cell Types**  
      - Standard cell- These cells are the most common and will spawn in all levels. If they are smaller than the player, they will appear blue, otherwise they will appear red.  
      - Ovarium- These cells will just move around randomly. They have a purple color. They appear starting from level 2.  
      - Nemocyte- These cells will try their best to avoid the player, no matter how big the player is. They have a green color. They appear starting from level 3 and onwards.  
      - Ferax- These cells will try their best to avoid the player if they're smaller, but will pursue the player if they are bigger. They have a black color. They appear starting from level 4 and onwards.  
**Unresolved bugs**  
      - Sometimes the game freezes when there's a presence of a moving cell (Ovarium, Nemocyte, Ferax). I don't know why. Level 1 doesn't seem to have the problem since only standard cells spawn in level 1.   
      - Small cells (including the player) will appear to have a very distorted shape that may look like two circles stuck to each other. This is just a problem with how the cells move and I can't really fix it unless I change the frame rate, but that would ruin the entire game. In the case of VERY small cells, the "two circles stuck together" will be far apart enough that they look like two different cells, when reality it's just one cell moving.  
      - When it comes to spawning cells, cells will only spawn in a certain field (that is the area of the width and height). However they can move outside that area.  
      - Due to the coding of the movement of the cells, cells that try to move away from you (Nemocyte and Ferax) are pretty much impossible to catch :(  
