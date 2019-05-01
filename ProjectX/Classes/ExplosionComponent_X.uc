/*******************************************************************************
 * ExplosionComponent_X generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
 class ExplosionComponent_X extends ActorComponent_X
 native;

var() float RBVelocityChange;
/** Where the radius should start growing from - anything inside this radius will be hit instantly */
var() float StartRadius;
/** Size the radius should grow to */
var() float EndRadius;
/** How quickly we grow from StartRadius to EndRadius */
var() float Speed;
/** Falloff for damage and momentum as radius increases */
var() float Falloff;
/** Enable to let the explosion hurt people thru world geometry */
var() bool bPassThroughWorldGeometry;
/** Don't hurt Instigator */
var() bool bIgnoreInstigator;
var() bool bDebug;
/** Offset from owner's location to produce momentum from */
var() vector MomentumOffset;
var transient float Lifetime;
var transient array<Actor> DamagedActors;

protected event Detached()
{
 DamagedActors.Length = 0;
 Lifetime = 0.0;
 //return;    
}

/*
event ProcessHit(GetAPlayerController Victim, GetAPlayerController HitLocation, @NULL ExtraHitInfo, optional float DamageScale)
{
 DamageScale = 1.0;
 // End:0x148
 if(!bIgnoreInstigator || Victim != Owner.Instigator)
 {
     // End:0x148
     if(DamageComponent != none)
     {
         DamageComponent.SetLocation(HitLocation).SetMomentumDir(Normal(HitLocation - (Owner.Location + (MomentumOffset >> Owner.Rotation)))).SetHitInfo(ExtraHitInfo).ScaleDamage(DamageScale).ApplyDamage(Victim);
     }
 }
 //return;    
}
*/