/*******************************************************************************
 * Wheel_TA generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
 class Wheel_TA extends Component
 native;

/** How steering affects this wheel. 0.0 means it is not steered. 1.0 means steered fully normally. -1.0 means reversed steering. */
var() float SteerFactor;
/** Radius of wheel */
var() float WheelRadius;
var() float SuspensionStiffness;
var() float SuspensionDamping;
var() float SuspensionTravel;
var() float ContactForceDistance;
/** Scale lateral tire friction based on the ratio of forward speed vs side speed */
var() InterpCurveFloat LatFrictionCurve;
/** Scale longitudinal tire friction based on the ratio of forward speed vs side speed */
var() InterpCurveFloat LongFrictionCurve;
/** Scale tire friction when handbraking */
var() InterpCurveFloat HandbrakeLatFrictionCurve;
/** Scale long tire friction based on ratio for forward vs side speeed when handbraking */
var() InterpCurveFloat HandbrakeLongFrictionCurve;
/** Scale overall tire friction by the Z value of the contact normal. Ignores if the contact is sticky. */
var() InterpCurveFloat WallFrictionCurve;
/** Bone name on the skel mesh for this wheel */
var() name BoneName;
/** Offset from the bone location for the wheel center */
var() vector BoneOffset;
var const transient Vector LocalSuspensionRayStart;
var const transient vector LocalRestPosition;
// TODO
//var privatewrite export editinline transient VehicleSim_TA VehicleSim;
var const transient int WheelIndex;
var const transient WheelContactData Contact;
var bool bDrawDebug;
var private const transient bool bHadContact;
var const transient float FrictionCurveInput;

/*
var delegate<EventContactChanged> __EventContactChanged__Delegate;
delegate EventContactChanged(Wheel_TA Wheel) {}
*/

// Export UWheel_TA::execGetBoneLocation(FFrame&, void* const)
native final function vector GetBoneLocation();

// Export UWheel_TA::execGetLinearVelocity(FFrame&, void* const)
native final function vector GetLinearVelocity();

// Export UWheel_TA::execGetSpinSpeed(FFrame&, void* const)
native final function float GetSpinSpeed();

// Export UWheel_TA::execGetSteer(FFrame&, void* const)
native final function float GetSteer();

// Export UWheel_TA::execGetSuspensionDistance(FFrame&, void* const)
native final function float GetSuspensionDistance();

// Export UWheel_TA::execGetRefWheelLocation(FFrame&, void* const)
native final function vector GetRefWheelLocation();

// Export UWheel_TA::execUpdatePhysics(FFrame&, void* const)
native function UpdatePhysics(float MotorTorque, float BrakeTorque, float SteerAngle, float InHandbrakeAmount);

simulated function PrintDebugInfo(DebugDrawer Drawer) {}