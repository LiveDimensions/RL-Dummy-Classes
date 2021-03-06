/*******************************************************************************
 * GameShare_TA generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class GameShare_TA extends Object
    native;

var() const export editinline ObjectListComponent_X BallCamTargetList;
/** Every spawned game event */
var() const export editinline ObjectListComponent_X GameEventList;
var() const export editinline ObjectListComponent_X VehiclePickupList;
var() const export editinline ObjectListComponent_X LocalFXList;
var() const export editinline MaxActorsGroup_TA CarEngineAudioGroup;
var transient array<MaterialInstance> BallPositionMaterialInstances;
var transient array<VehiclePickup_Boost_TA> ActiveBoostPills;
// private const export editinline transient array<export editinline AkSoundSource> SoundSourcePool;

// Export UGameShare_TA::execGetPooledSoundSource(FFrame&, void* const)
//native final function AkSoundSource GetPooledSoundSource();