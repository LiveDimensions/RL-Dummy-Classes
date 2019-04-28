/*******************************************************************************
 * AIController_Soccar_TA generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AIController_Soccar_TA extends AIController_TA;

/** Targets used by the behavior tree */
var() BTProxyType BallProxyType;
/** Targets used by the behavior tree */
var() BTProxyType BallLandingProxyType;
/** Targets used by the behavior tree */
var() BTProxyType BallTeamGoalLineProxyType;
/** Targets used by the behavior tree */
var() BTProxyType BallEnemyGoalLineProxyType;
/** Targets used by the behavior tree */
var() BTProxyType BallProjectedProxyType;
var() BTProxyType TeamGoalProxyType;
var() BTProxyType EnemyGoalProxyType;
var() BTProxyType MidFieldProxyType;
var() BTTarget BallTarget;
var() BTTarget TeamGoalTarget;
var() BTTarget EnemyGoalTarget;
var privatewrite transient GameEvent_Soccar_TA SoccarGame;
var privatewrite transient Ball_TA Ball;
var privatewrite transient AICachedGoalInfo TeamGoalInfo;
var privatewrite transient AICachedGoalInfo EnemyGoalInfo;
var transient float LastBallHitTime;

/*
var delegate<EventBallChanged> __EventBallChanged__Delegate;
delegate EventBallChanged(AIController_Soccar_TA SoccarAI)
{
    //return;    
}
*/   
function Init(GameEvent_TA InGameEvent)
{
    
}
/**
private final function AICachedGoalInfo GetCachedGoalInfo(int TeamNum)
{
    local AICachedGoalInfo GoalInfo;
    local Rotator DeltaRot;

    GoalInfo.Goal = SoccarGame.Goals[TeamNum];
    DeltaRot = Normalize(SoccarGame.Pylon.FieldOrientation - GoalInfo.Goal.Rotation);
    GoalInfo.FieldSize = SoccarGame.Pylon.FieldSize << DeltaRot;
    return GoalInfo;
    //return ReturnValue;    
}
**/
private final function HandleBallsChanged(GameEvent_Soccar_TA G, Ball_TA B)
{
    //return;    
}

private final function HandleActiveRoundChanged(GameEvent_Soccar_TA G)
{
    //return;    
}

protected function UpdateBall()
{

}

protected function OnCarSetup(Car_TA InCar)
{
   
}

private final function HandleHitBall(Car_TA InCar, Ball_TA HitBall)
{

}

protected function SetBall(Ball_TA InBall)
{
   
}

protected event bool GetProxyDataInternal(BTProxyType Type, int Index, out BTProxyData OutData)
{
}    