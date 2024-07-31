# TAKP Texture Patcher

Ever notice black spot on your armor?
Your Half Elf cannot see through his visors.
Dragon should have holes in their wings?

This might be the fix for you!

### Why this repo

The objective is to have an updated script available that tries to gather all of the fixes mentionned over time. Aiming both PC and Mac version of the TAKP client.

There is a few places where we can find these fixes. They are scattered around the web making it harder to have a complete source of information. Some of the fix are deeper in forum post. These fix are also included in a few HD version of the texture file. You might want the texture patched but not the HD part of it since it comes with downside in the form of longer load time.

With this available people can read and see what is patched and/or run the patcher themself. The 75 files that are patched are also available if people just want to grab and replace without having to run the patcher.

### How to use

#### With the patched files

You just want the patched files?

Make sure your game is closed.
Create a copy of either your TAKP client or the .s3d files.
Drop in place the content of the folder `patched_s3d_files` into your TAKP client.
Start the game and enjoy.

#### With the patcher

You want to patch the files yourself?

Make sure your game is closed.
You can optionnaly make a backup of your TAKP client. (The patcher does a copy of the files it patches.)
Drop the file `patch_s3d_textures.bat` and `transpfx.exe` into your TAKP client folder
Run the `patch_s3d_textures.bat`
Start the game and enjoy.

### Tested on

The PC and Mac version of the TAKP client.

Both client use the same .s3d files with the same md5sum meaning that the patcher and files work on the 2 TAKP client.

### Inspirations

Before preparing this repo and while testing it I ~~shamelessly stole from~~ got inspired by these peoples.

- Nilbog
  - https://www.project1999.com/forums/showthread.php?t=87281
  - https://www.project1999.com/forums/showthread.php?t=34503
- EQ Classic HD
  - https://wiki.project1999.com/EQ_Classic_HD#The_Al.27Kabor_Project_version
