/*******************************************************************************
 * AIManager_TA generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AIManager_TA extends Actor
    native
    notplaceable;

struct native CachedNavMeshLocation
{
    var Actor Actor;
    var vector NavMeshLocation;
    var vector OldActorLocation;
};

var() const config bool bFlushAILogEachLine;
var() const config bool bOutputLogToWindow;
var transient bool bPauseForDirtyTrees;
/** global AI locks */
var() const export editinline BTLockCollection Locks;
var privatewrite transient GameEvent_TA GameEvent;
var privatewrite transient array<AIController_TA> Bots;
var transient array<CachedNavMeshLocation> CachedNavMeshLocations;
var transient FileLog AILogFile;

final event AILog(Object Sender, coerce string Message, optional bool bVerbose)
{
    //return;    
}

function Init(GameEvent_TA InGameEvent)
{
    //return;    
}

function AddBot(AIController_TA Bot)
{
    //retrn;    
}

function RemoveBot(AIController_TA Bot)
{
    //return;    
}

event Destroyed()
{
}