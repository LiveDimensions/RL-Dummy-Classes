/*******************************************************************************
 * BoostMesh_TA generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class BoostMesh_TA extends Object
    placeable;
var() RandomRange FadeInTime;
var() RandomRange FadeOutTime;
// Don't have the class
//var() array<AnimatedMaterialMesh> MaterialParams;
var transient float MaxMaterialTime;

defaultproperties {
    FadeInTime = 3.0;
    FadeOutTime = 3.0;
}