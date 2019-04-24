/*******************************************************************************
 * Car_TA generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Car_TA extends Vehicle_TA;

var() array<CarComponent_TA> DefaultCarComponents;
var() export editinline EngineAudioComponent_TA EngineAudioComponent;
//var() export editinline EngineAudioREVComponent_TA EngineAudioRev;
//var() export editinline ThrottleShakeComponent_TA ThrottleShake;
var transient CarComponent_FlipCar_ta FlipComponent;
var transient byte DemolishTarget;
var transient byte DemolishSpeed;
var export editinline ProductLoader_TA Loadout;
var bool bLoadoutSet;
var transient bool bDemolishOnOpposingGround;
var transient bool bWasOnOpposingGround;
var transient bool bDemolishOnGoalZone;
var transient bool bWasInGoalZone;
var repnotify transient bool bOverrideHandbrakeOn;
var() bool bCollidesWithVehicles;
var repnotify transient bool bOverrideBoostOn;
var() FXActor_X ExitFXArchetype;
var() DemolishExplosion_TA DemolishExplosionArchetype;
var transient DemolishExplosion_TA DemolishExplosion;
var() export editinline BallIndicator_TA BallIndicatorArchetype;
var export transient editinline BallIndicator_TA BallIndicator;
var() float MaxTimeForDodge;
var transient float LastWheelsHitBallTime;
//var repnotify transient LoadoutTeamPaint TeamPaint;
//var repnotify transient ClubColorSet ClubColors;
var repnotify float ReplicatedCarScale;
//var repnotify transient DemolishData ReplicatedDemolish;
var transient FXActor_X BodyFXActor;
var PRI_TA AttackerPRI;
var transient Vector MouseAccel;
var transient Vector MouseAirAccel;
var repnotify transient SpecialPickup_TA AttachedPickup;
var transient Vector ReplayFocusOffset;
var() repnotify float AddedBallForceMultiplier;
var() repnotify float AddedCarForceMultiplier;
var export editinline CarTrajectoryComponent_TA CarTrajectoryComponent;
var transient GameEvent_TA GameEvent;
var export editinline NameplateComponentCar_TA NameplateComponentCar;