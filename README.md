# NastyPigs

<img width="1088" alt="image" src="https://github.com/dalanad/NastyPigs/assets/43986725/f8d0bf15-9d87-431b-9dcb-6e7779bec5d5">

# 

**Game Title :** Nasty Pigs
**Genre :** RPG / Platformer

**Storyline**
The mighty King Arthur had his treasure stolen by a group of nasty pigs. He has started a conquest to destroy all the pigs and get his treasure back. The pigs have been notified about the king's mission and they have fortified their defences to protect the treasure at all cost. 

## Goal

- Kill as many pigs as possible
- Collect all the diamonds & coins.
- Reach the chest containing the stolen treasure.

## Rewards & Punishments

- Collect diamonds & cons to increase your score
- Collect hearts to get lives
- Enemy will cause damage
- Contact with bombs will cause damage

## Instructions to Play

- Use the arrow key to navigate left, right & up
- Jump on top of enemies to kill them
- Use the doors to navigate to the next level
- Collect all diamonds / coins in a level to advance to next

## Implementation Details

- Game Engine Used : Godot 3.5
- Number of Levels : 3
- Supported Platforms : HTML5 , macOS
- Input Method : Keyboard

**Game Assets**

- Royalty Free assets packs 
  - <https://pixelfrog-assets.itch.io/kings-and-pigs>
  - <https://pixelfrog-assets.itch.io/treasure-hunters> 
- Royalty free music was also taken from the internet

**Sound**

- Retro themed sound effects were added to the actions/events
- Each level has a unique background music

## Game Level & Layout Design

Game has a linear level layout so the player will have to complete each level to move to the next. And there is also ambient music associated with each level. & sound effects to  improve game atmosphere

**Level 01**

Basic level with few moving pigs & collectable items.
![](https://lh7-us.googleusercontent.com/C6h-nakn9ZlVm1ALzbR7p1YqDRWPJb5mEA3mOPoKLSDYI4f2Ost-bkf1FDJOtt0sabEqiwvW6JkC5ags4ptdfuZiFO37DbYEMKIFwH1E9aQUj1lmZYV2hF3fDsSBH2RJsehaz3D4C1Pamm0OqsdkXcQ)

**Level 02**

This level features a bomb canon which will shoot bombs at the direction of the player.

****![](https://lh7-us.googleusercontent.com/sIbqa6e9vWZ2M4Sc4Nb9WIB6hMrUQZxJHGofPLS-iswQKpdU8_YFCbvsLViIFRGlyi2E0LVMdKfHnRs0QMEXeMYLiWak8GDoRmxDzdBSn4fWkR9ENrgu4EEPmXC9XMbhW61j1x6MZdwXLFFCI0Yf49s)****

**Level 03**

This is the last level of the game. There is a pig throwing bombs in this level. At the end of the level the player can reach the stolen treasure.
****![](https://lh7-us.googleusercontent.com/jpTTJ87dOtwxDRqu9aXMVfLUiliIm36C3OA4aylft2O1Y_mhFUGT6uE2b88YHDUi9bsEukt0vILOhwgqPZ4ShsQmKprYJf5Dg8OKsrl_qPIgpr8ZiOecobT_I2ZbViXW7Gl5wt7iRdV1RagfCQqdWTM)****

**Techniques Used**

_TileMaps_ : Used to create the backgrounds & decorations with ease. 

![](https://lh7-us.googleusercontent.com/Y2X93PXOzp7yv7gO7ei7sxoSq9Q1TCtYQoUMQLFjG6EFKntOHpOXZ5G5C0C5pIcTDZwQLPW52yiz3sk6WnXRFZKSMkgS6rk8sX1DBhNFKtii1Vw79EQgwEluXtmkqSTVEEJwDe76zOrO1L2Drl6PMlw)

_Collision Layers_: Godot supports different collision layers & masks. These have been used to allow bombs to pass throgh the platforms yet still get blocked from the wall

![](https://lh7-us.googleusercontent.com/1Nua75G38nYMby0_GQz_4VzTEdPKZYvAVWCbLUGgXSDJqqPPWQW4ssIoUnS-RiSb298XwXro4V4JGg2JHlbPs-uLLuhMpgW48HNLTZoVdRDVPx4L8fpnC7TpCgN3yQpQLL2Qf7unD_diFpiDPP2aP_c)

_Global Scripts_ : used to share state, play audio etc

_Animation Trees_ : neat feature is godot used to manage currently playing animations for the player & enemies.

![](https://lh7-us.googleusercontent.com/p0xnBTahXWVKlp15Plm2HFrraO-BB0GIBAjG4zrHTmGt92ZOlmAfergF_zXdNqm5tfi1sM8RY8t1pUEFWE3n1BtIt9S0RspO6vFPKKs_AP-KgW0K9tC3aStLE4O94Wl97V3WoVCupfXPvSZA_HllWek)

_Path Following_ : Done through a custom script. Enemy will follow a predefined path.

![](https://lh7-us.googleusercontent.com/qE2ow115f7BtdESWIYoDwF74FOke78mBaNb6o9LPWxe7g8hfjcYXZfFTI8zd-j9QdXPeESQrZS6RAMXX9_6s_2CEHtLB-ZkkJw55yGA5UZ9CnE44nNtl6A_83RsQ47gXLUGAcERPEQfpPNNb_eYsN2Y)
