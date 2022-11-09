# ardour-cooltehno-lua

This is my collection of LUA scripts for DAW Ardour (https://ardour.org/) Free to use or do whatever you want with it.

## 1. MIDI Glue ![MIDI_Glue_icon](https://user-images.githubusercontent.com/19673308/200134679-1c25a406-5e14-4531-b490-87e5278b7c46.png)

### Description:

This script lets user to glue few layered MIDI regions to one in "G-mode" (Grab Mode) in Ardour. All you need to do is to select one or more of the layered regions in "G-mode" and run the script. This script works only with Ardour 7, not with Ardour 6.9

### Installation (Linux):

(1)
Download the script via "Raw" button from here: https://github.com/cooltehno/ardour-cooltehno-lua/blob/main/MIDI_Glue.lua (right mouse button -> Save Link As) and put the downloaded file in to the directory <b>.config/adrour7/scripts</b> (if the directory doesn't exist - just create it):

![MIDI_Glue_Install](https://user-images.githubusercontent.com/19673308/200136244-2c0a30b7-a4a3-4703-9ad5-dfa848dbf20b.gif)

(2)
For comfortable usage - you can assign this script to assignable button in Ardour GUI:
![MIDI_Glue_assign](https://user-images.githubusercontent.com/19673308/200134231-12e3e3b9-ddf1-4781-838e-b895dc4fa4be.gif)
- (then you'll get a MIDI Glue icon on the desired botton):     ![MIDI_Glue_icon](https://user-images.githubusercontent.com/19673308/200134378-2cd3bc5f-4af0-4dfb-935e-7da7e118e1f3.png)

(3)
You can use the assigned button as it is, but you can make even more comfortable assigment
using Shortcut through the Keyboard Shortcuts. In the GIF example the used combination is "<b>Alt+G</b>" (this is handy considering the use of "G" key for "G-mode"):

![MIDI_Glue_Alt+G_Shortcut](https://user-images.githubusercontent.com/19673308/200134578-538b8f83-4242-423b-a251-2c2e67cd3a26.gif)

### USAGE:
Just select desired regions in the bundle of layers you're going to "glue" then press <b>Alt+G & Enter</b> (this keyboard binding works, if you make the assigments (2),(3) described above in the installation). The <b>Enter</b> key closes the emerging dialogue with the default settings:
![MIDI_Glue_USAGE](https://user-images.githubusercontent.com/19673308/200234537-094ecdbe-3976-47e3-aa67-9969fb85c9b7.gif)



### How the script works
The script uses stendard Ardour's commands one by one:
- <b>Set Range to Selected Regions</b>
- <b>Consolidate</b>
- & returns the Mouse mode from "<b>R</b>" back to "<b>G</b>"

### Few conditionals for correct gluing ALL the midi notes:
- All the layers must be transparent (not opaque) (Alt+0):
![context_transparent_no_opaque](https://user-images.githubusercontent.com/19673308/200143773-ef990475-7add-4bb1-96e9-aad08bd7715a.png)

- For default transparent new region drawing - Session Properties>MIDI Options>Draw tool creates opaque MIDI regions - must be unchecked:

![uchecked_opaque](https://user-images.githubusercontent.com/19673308/200143842-8d700f89-0244-4074-a129-c85c59badee2.png)

- For default transparent new region recording - the “Rec:” drop-down (just right of the transport controls) - must be <b>Snd on Snd</b>:
![Snd on Snd](https://user-images.githubusercontent.com/19673308/200143888-8e9999bd-bdb9-4254-b652-9402bdf590b0.gif)

### Discussion:
https://discourse.ardour.org/t/midi-glue-lua-script-midi-join/107829
