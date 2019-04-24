/*******************************************************************************
 * Vehicle_TA generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Vehicle_TA extends RBActor_TA
    notplaceable;

var() const export editinline CarMeshComponent_TA CarMesh;
//var() export editinline VehicleSim_TA VehicleSim
//var() StickyForceData StickyForce 
//var() AutoFlipData AutoFlip
var repnotify transient bool bDriving
var const repnotify transient bool bReplicatedHandbrake
var transient bool bJumped
var transient bool bDoubleJumped
var transient bool bOnGround
var transient bool bSuperSonic
var repnotify transient bool bPodiumMode
//var const transient VehicleInputs Input
var const repnotify transient byte ReplicatedThrottle
var const repnotify transient byte ReplicatedSteer
var transient AIController_TA AIController
var transient PlayerController_TA PlayerController
var transient PRI_TA PRI
var const transient int VehicleUpdateTag
//var() BallInteractionSettings BallInteraction
//var CarInteractionData CarInteraction
var const transient Vector LocalCollisionOffset
var const transient Vector LocalCollisionExtent
var transient int LastBallTouchFrame
var transient int LastBallImpactFrame
var transient CarComponent_Boost_TA BoostComponent
var transient CarComponent_Dodge_TA DodgeComponent
var transient CarComponent_AirControl_TA AirControlComponent
var transient CarComponent_Jump_TA JumpComponent
var transient CarComponent_DoubleJump_TA DoubleJumpComponent
//var const export editinline PitchTekDrawingComponent_TA PitchTekComponent
//var export transient editinline LocalPlayerAudioParamsComponent_TA LocalPlayerAudioParamsComponent
var transient float TimeBelowSupersonicSpeed 
//var NetworkConfig_TA NetworkConfig

