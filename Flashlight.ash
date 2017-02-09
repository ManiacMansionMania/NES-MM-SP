// Script header for module 'Flashlight'

#ifdef AGS_SUPPORTS_IFVER     
#ifver 3.1.2                  
#define FLASHLIGHT_VERSION 2.0
#define FLASHLIGHT_VERSION_200
#endif                        
#endif                        
#ifndef FLASHLIGHT_VERSION_200
#error Flashlight module error: This module now requires AGS version 3.1.2 or higher! Please upgrade to a higher version of AGS to use this module.
#endif                        

struct FlashlightType {
  writeprotected GUI *AGSGUI;
  writeprotected Overlay *AGSOverlay;
  writeprotected DynamicSprite *BeamSprite;
  int DrawingColor;
  bool Enabled;
  writeprotected Character *FollowingCharacter;
  writeprotected bool IsFollowingMouse;
  writeprotected bool IsFollowingCharacter;
  writeprotected bool IsFollowingPlayer;
  writeprotected bool IsGUIMode;
  writeprotected bool IsOverlayMode;
  writeprotected bool IsStatic;
  float Radius;
  bool ScaleBeam;
  import void SetBeamSprite(DynamicSprite *beamSprite);
  import void SetFollowCharacter(Character*, bool followPlayer=true);
  import void SetFollowMouse();
  import void SetGUIMode(GUI*, DynamicSprite *beamSprite=0);
  import void SetOverlayMode(DynamicSprite *beamSprite=0);
  import void SetStatic();
  writeprotected DynamicSprite *ScreenSprite;
  int Transparency;
  int X;
  int Y;
};

import FlashlightType Flashlight;
