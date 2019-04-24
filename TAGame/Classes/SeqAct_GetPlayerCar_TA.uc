/*******************************************************************************
 * SeqAct_GetPlayerCar_TA generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SeqAct_GetPlayerCar_TA extends SequenceAction;

var() string PlayerName;
var transient Actor FoundActor;

defaultproperties
{
     ObjName="Get Player Car"
     ObjCategory="TAGame"
	 
	 bCallHandler=false
     VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_Object',LinkDesc="Found Actor",PropertyName=FoundActor,bWriteable=true,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
}

event Activated()
{
	local byte PRI;
    //return;    
}