SCS 3213 - Game Development
Mini Project 
NastyPigs
 19000332 - Dharmathilake M.D.D.P

Game Title : Nasty Pigs
Genre : RPG / Platformer

Storyline
The mighty king Arthur had his treasure stolen by a group of nasty pigs. He has started a conquest to destroy all the pigs and get his treasure back. The pigs have been notified about the king's mission and they have fortified their defences to protect the treasure at all cost. 

Goal
Kill as many pigs as possible
Collect all the diamonds & coins.
Reach the chest containing the stolen treasure.

Rewards & Punishments:
Collect diamonds & cons to increase your score
Collect hearts to get lives
Enemy will cause damage
Contact with bombs will cause damage

Instructions to Play
Use the arrow key to navigate left, right & up
Jump on top of enemies to kill them
Use the doors to navigate to the next level
Collect all diamonds / coins in a level to advance to next

Implementation Details
Game Engine Used : Godot 3.5
Number of Levels : 3
Supported Platforms : HTML5 , macOS
Input Method : Keyboard

Game Assets
Royalty Free assets packs 
https://pixelfrog-assets.itch.io/kings-and-pigs
https://pixelfrog-assets.itch.io/treasure-hunters 
Royalty free music was also taken from the internet

Sound
Retro themed sound effects were added to the actions/events
Each level has a unique background music

Game Level & Layout Design

Game has a linear level layout so the player will have to complete each level to move to the next. And there is also ambient music associated with each level. & sound effects to  improve game atmosphere

Level 01
Basic level with few moving pigs & collectible items.



Level 02
This level features a bomb canon which will shoot bombs at the direction of the player.




Level 03
This is the last level of the game. There is a pig throwing bombs in this level. At the end of the level the player can reach the stolen treasure.



Techniques Used

TileMaps : Used to create the backgrounds & decorations with ease. 


Collision Layers: Godot supports different collision layers & masks. These have been used to allow bombs to pass throgh the platforms yet still get blocked from the wall


Global Scripts : used to share state, play audio etc

Animation Trees : neat feature is godot used to manage currently playing animations for the player & enemies.


Path Following : Done through a custom script. Enemy will follow a predefined path.




