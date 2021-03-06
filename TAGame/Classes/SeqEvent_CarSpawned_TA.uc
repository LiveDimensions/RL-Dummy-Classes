/*******************************************************************************
 * SeqEvent_CarSpawned_TA generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib � 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqEvent_CarSpawned_TA extends SequenceEvent;

var() string PlayerName;

defaultproperties
{
    ObjCategory="TAGame"

    MaxTriggerCount=0
    bPlayerOnly=false
       OutputLinks(0)=(LinkDesc="Out",bHasImpulse=false,bDisabled=false,bDisabledPIE=false,LinkedOp=none,ActivateDelay=0.0,DrawY=0,bHidden=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0,PIEActivationTime=0.0,bIsActivated=false)
    ObjName="Car Spawned"
}