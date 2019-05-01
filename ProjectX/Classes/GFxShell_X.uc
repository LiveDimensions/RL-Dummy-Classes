/*******************************************************************************
 * GFxModal_X generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class GFxShell_X extends GFxDataSingleton_X;

var() GFxMoviePlayer_X MoviePlayerArchetype;
var const transient LocalPlayer_X Player;
/** Whether game is paused */
var databinding bool bGamePaused;
var const transient bool bWasFullscreen;
/** Cache gamepad analog values for radial menus */
var databinding float LeftX;
/** Cache gamepad analog values for radial menus */
var databinding float LeftY;
var databinding float RightX;
var databinding float RightY;
var const transient array<GFxMoviePlayer_X> Movies;
var const export editinline GFxDataStore_X DataStore;
var privatewrite transient byte NavigationMode;
var const transient byte InputType;
