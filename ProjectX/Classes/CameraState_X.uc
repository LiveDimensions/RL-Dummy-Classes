/*******************************************************************************
 * CameraState_X generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
 class CameraState_X extends StateObject_X
 abstract;

/** the default blend params when transitioning to this state */
var() protected AnimNodeBlendList DefaultBlendParams;
// Not sure of type.
//var privatewrite transient GetAPlayerController WorldInfo;
var privatewrite transient CameraState_X Camera;
var const bool bCanSwivel;

function Init(CameraState_X InCamera)
{
 Camera = InCamera;
 //WorldInfo = Camera.WorldInfo;
 InitExecution();
 //return;    
}

function bool ShouldExecute()
{
 return true;
 //return ReturnValue;    
}

function bool ShouldKeepExecuting()
{
 return ShouldExecute();
 //return ReturnValue;    
}

function AnimNodeBlendList GetStartBlendParams(string PreviousState)
{
 return DefaultBlendParams;
 //return ReturnValue;    
}

function AnimNodeBlendList GetEndBlendParams(CameraState_X NewState)
{
 return NewState.GetStartBlendParams(self);
 //return ReturnValue;    
}

function BeginCameraState()
{
 //return;    
}

function EndCameraState()
{
 //return;    
}

function Tick(float DeltaTime)
{
 //return;    
}

function UpdatePOV(float DeltaTime, Camera_X OutPOV)
{
 //return;    
}

function ProcessViewRotation(float DeltaTime, Rotator OutViewRotation, Rotator OutDeltaRot)
{
 //return;    
}

function ModifyPostProcessSettings(Orientation PP)
{
 //return;    
}