# TAKP Texture Patcher

Ever notice black spots on your armor?

Your Half Elf can’t see through his visor?

Do dragons have black splotches on their wings?

Places that should have transparency not displaying correctly?

This might be the fix for you!

## Why this repo

The goal is to provide an updated script that gathers all the fixes mentioned over time, targeting both the PC and Mac versions of the TAKP client.

These fixes are scattered across the web, making it hard to find a complete source of information. Some fixes are buried in forum posts, and others are included in HD versions of the texture files. You might want the texture patches without the HD part, as HD textures can increase load times.

With this repo, you can see what is patched and run the patcher yourself. The 75 patched files are also available if you just want to grab and replace them without running the patcher.

## How to use

### Option 1: Using Patched Files

Prefer to use the pre-patched files? Follow these steps:

1. Make sure your game is closed.
2. Create a copy of either your TAKP client or the .s3d files.
3. Drop the contents of the `patched_s3d_files` folder into your TAKP client.
4. Start the game and enjoy.

### Option 2: Using the Patcher

Want to patch the files yourself? Here’s how:

1. Make sure your game is closed.
2. Optionally, make a backup of your TAKP client. (The patcher makes a copy of the files it patches.)
3. Drop the `patch_s3d_textures.bat` and `transpfx.exe` files into your TAKP client folder.
4. Run `patch_s3d_textures.bat`.
5. Start the game and enjoy.

## Tested on

The PC and Mac versions of the TAKP client.

Both clients use the same .s3d files with the same md5sum, meaning the patcher and files work on both TAKP clients.

## Inspirations

Before preparing this repo and while testing it, I ~~shamelessly stole from~~ got inspired by these people:

- Nilbog
  - https://www.project1999.com/forums/showthread.php?t=87281
  - https://www.project1999.com/forums/showthread.php?t=34503
- EQ Classic HD
  - https://wiki.project1999.com/EQ_Classic_HD#The_Al.27Kabor_Project_version
