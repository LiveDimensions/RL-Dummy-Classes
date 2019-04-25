/*******************************************************************************
 * CarPreviewActor_TA generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib ? 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class CarPreviewActor_TA extends Actor
    placeable;

var() int ControllerId;
var() export editinline ProductLoader_TA ProductLoader;
var() export editinline CarMeshComponent_TA CarMesh;
var() export editinline LightEnvironmentComponent LightEnvironment;
var() export editinline SilhouetteComponent CarMeshSilhouette;
var() export editinline array<CarPreviewAnim_TA> AttachmentPreviewAnims;
var() export editinline array<CarPreviewAnim_TA> WheelAnims;
var() export editinline CarPreviewAnim_TA BodyAnim;
var() export editinline CarPreviewAnim_TA EngineAudioAnim;
var export editinline CarPreviewAnim_TA EngineAudioAnimInstance;
var() float  SupersonicFakeSpeed;
var() TurnTableActor_TA TurntableActor;
var transient LoadoutData Loadout;
var transient LoadoutData OldLoadout;
var transient array<ProductAsset_TA> PreviewProducts;
var transient FXActor_Boost_TA BoostFX;
var transient ProductSlot_TA PreviewSlot;
var transient Team_TA TeamArchetype;
var string PlayerName;
var transient FXActor_X BodyFX;
var transient ProductAsset_Boost_TA BoostAsset;
var transient ProductAsset_SupersonicTrail_TA SupersonicAsset;
var transient bool bLockLoadout;
var transient bool bSpinWheelsFromBoost;
var bool bAddToCarPreviewList;
var transient array<FXActor_TA> SupersonicFX;
var transient ProductAsset_EngineAudio_TA EngineAudioAsset;
var transient EngineAudioPreviewBase_TA EngineAudioPreview;
var transient MusicStingersPreview_TA MusicStingersPreview;
var() int LinkedControllerId;
var export editinline AkParamGroup Ak;

// Don't have the correct types, possibly are references to Event functions for this class?
/**
var ScriptDelegate __EventInitializeComponents__Delegate;
var ScriptDelegate __ProductApplicatorDelegate__Delegate;
*/

function __CarPreviewActor_TA__PostBeginPlay (CarMeshComponentBase_TA _) {}
function AddSilhouetteParents () {}
function RefreshSilhouette () {}
function ShowSilhouette (bool bShow) {}
function RefreshLoadout (Profile_TA Profile) {}
function int GetTeamIndex (Profile_TA Profile) {}
function SetTeamIndex (Profile_TA Profile, int TeamIndex) {}
function LoadoutSet_TA GetLoadoutSet (Profile_TA Profile) {}
function SetLoadoutSet (LoadoutSet_TA InLoadoutSet, int InTeamIndex) {}
function EnableTick (bool bEnable) {}
function DestroyTurnTableActor () {}
function ResetColors () {}
function SetLockLoadout (bool bInLock) {}
function BuildOnlineLoadout (LoadoutData InLoadout, ClientLoadoutOnlineData OnlineLoadout) {}
function UpdateParticlesFakeVelocity () {}
function Rotator GetSMRotation () {}
function SetSMRotation (float DeltaTime, float YawInput, bool bGamepad) {}
function ApplyTurntableBase () {}
function SetTurnTableActor (TurnTableActor_TA InTurnTableActor, Rotator StartRotation) {}
function FindTurnTableActor () {}
event OnOwnerChanged () {}
function Tick (float DeltaTime) {}
function SetPreviewHidden (bool bHide) {}
function SetPlayerName (string InPlayerName) {}
function AnimateBody () {}
function AnimateWheels () {}
function AnimateAttachment (ProductSlot_TA Slot, PrimitiveComponent AttachmentComponent, name CustomAnimName) {}
function AnimateAntenna (AntennaComponent_TA AntennaArchetype) {}
function PrimitiveComponent FindAttachmentComponent (ProductSlot_TA Slot, ProductAttachment AttachStruct) {}
function AnimateSlotChange (ProductAsset_TA Product) {}
function ActorComponent FindAttachmentByArchetype (ActorComponent InArchetype) {}
function StaticMeshComponent FindSMAttachmentByAsset (StaticMesh Mesh) {}
function SkeletalMeshComponent FindSKAttachmentByAsset (SkeletalMesh Mesh) {}
function UpdateTranslations () {}
function ClearBodyFX () {}
function ClearBoostFX () {}
function ClearComponents () {}
function InitMusicStingers () {}
function InitSupersonicFX () {}
function InitEngineAudioFX () {}
function InitBoostFX () {}
function InitBodyFX () {}
function InitComponents () {}
function HandleAllProductsLoaded (ProductLoader_TA Loader) {}
function SetBoostGlow (float Glow) {}
function UpdateBoostGlow () {}
function DeactivatePreviewSlot () {}
function ActivatePreviewSlot () {}
function SetPreviewSlot (ProductSlot_TA InSlot) {}
function ChangeCarPart (int SlotIndex, int ProductID, bool long OnlineID, int TeamPaintIndex) {}
function ForceSetLoadout (LoadoutData InLoadout) {}
function SetLoadout (LoadoutData InLoadout) {}
event Destroyed () {}
event PostBeginPlay () {}
function ProductApplicatorDelegate (ProductAsset_TA Asset) {}
event EventInitializeComponents (CarPreviewActor_TA PreviewActor) {}