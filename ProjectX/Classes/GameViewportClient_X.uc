/*******************************************************************************
 * GameViewportClient_X generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
 class GameViewportClient_X extends GameViewportClient
 transient
 native;

var transient bool bHandCursor;
var delegate<EventLocalPlayerJoin> __EventLocalPlayerJoin__Delegate;
var delegate<EventLocalPlayerLeave> __EventLocalPlayerLeave__Delegate;
var delegate<EventNotifyConnectionError> __EventNotifyConnectionError__Delegate;
var delegate<EventPrimaryPlayerChange> __EventPrimaryPlayerChange__Delegate;

delegate EventLocalPlayerJoin(LocalPlayer_X NewPlayer)
{
 //return;    
}

delegate EventLocalPlayerLeave(LocalPlayer_X OldPlayer)
{
 //return;    
}

delegate EventNotifyConnectionError(string Title, string Message)
{
 //return;    
}

delegate EventPrimaryPlayerChange(LocalPlayer_X OldPrimaryPlayer, LocalPlayer_X NewPrimaryPlayer)
{
 //return;    
}

static final function GameViewportClient_X GetInstance()
{
 return GameViewportClient_X(class'Engine'.static.GetEngine().GameViewport);
 //return ReturnValue;    
}

// Export UGameViewportClient_X::execGetViewportSizeStr(FFrame&, void* const)
native final function string GetViewportSizeStr();

// Export UGameViewportClient_X::execGetViewportSizePoint(FFrame&, void* const)
native final function Pointer GetViewportSizePoint();

// Export UGameViewportClient_X::execIsBorderlessViewport(FFrame&, void* const)
native final function bool IsBorderlessViewport();

// Export UGameViewportClient_X::execGetAvailableResolutionsStr(FFrame&, void* const)
native final function string GetAvailableResolutionsStr();

// Export UGameViewportClient_X::execGetAvailableResolutions(FFrame&, void* const)
native final function array<string> GetAvailableResolutions();

// Export UGameViewportClient_X::execSaveWindowState(FFrame&, void* const)
native final function SaveWindowState(coerce int ResX, coerce int ResY, bool bFullScreen, bool bBorderless, bool bVsync);

// Export UGameViewportClient_X::execSaveCurrentWindowState(FFrame&, void* const)
native final function SaveCurrentWindowState();

// Can't override 'final' function.
/*
function NotifyPlayerAdded(int PlayerIndex, LocalPlayer AddedPlayer)
{
 super.NotifyPlayerAdded(PlayerIndex, AddedPlayer);
 EventLocalPlayerJoin(AddedPlayer);
 //return;    
}
*/
// Can't override 'final' function.
/*
function NotifyPlayerRemoved(int PlayerIndex, LocalPlayer RemovedPlayer)
{
 super.NotifyPlayerRemoved(PlayerIndex, RemovedPlayer);
 EventLocalPlayerLeave(RemovedPlayer);
 //return;    
}
*/
/*
event LocalPlayer_X CreatePlayer(int ControllerId, Error_X OutError, bool bSpawnActor)
{
 local LocalPlayer_X NewPlayer;
 local int InsertIndex;

 // DebugMode:False
 assert(Outer.LocalPlayerClass != none);
 NewPlayer = LocalPlayer_X(new (Outer) Outer.LocalPlayerClass);
 NewPlayer.ViewportClient = self;
 NewPlayer.ControllerId = ControllerId;
 InsertIndex = AddLocalPlayer(NewPlayer);
 NewPlayer.OnCreated();
 // End:0x1B7
 if(bSpawnActor && InsertIndex != -1)
 {
     // End:0x198
     if(Outer.GetCurrentWorldInfo().NetMode != NM_Client)
     {
         // End:0x195
         if(!NewPlayer.SpawnPlayActor("", OutError))
         {
             RemoveLocalPlayer(NewPlayer);
             NewPlayer = none;
         }
     }
     // End:0x1B7
     else
     {
         NewPlayer.SendSplitJoin();
     }
 }
 // End:0x1FB
 if(OutError != "")
 {
     WarnInternal("Player creation failed with error:" @ OutError);
 }
 // End:0x261
 else
 {
     // End:0x261
     if(((NewPlayer != none) && NewPlayer.ViewportClient != none) && InsertIndex != -1)
     {
         //NotifyPlayerAdded(InsertIndex, NewPlayer);
     }
 }
 return NewPlayer;
 //return ReturnValue;    
}


function NotifyConnectionError(byte MessageType, optional string Message, optional string Title)
{
 local class OnlineGame;

 Message = Localize("Errors", "ConnectionFailed", "Engine");
 Title = Localize("Errors", "ConnectionFailed_Title", "Engine");
 OnlineGame = class'OnlineGame_X'.static.GetInstance();
 // End:0x11A
 if((OnlineGame != none) && OnlineGame.MatchmakingOld.bSearching)
 {
     OnlineGame.MatchmakingOld.HandleConnectionFailed(Message);
 }
 // End:0x1E7
 else
 {
     // End:0x19D
     if(OnlineGame != none)
     {
         // End:0x19D
         if(OnlineGame.JoinGame.IsJoiningGame())
         {
             OnlineGame.JoinGame.NotifyConnectionFailed(Message);
         }
     }
     EventNotifyConnectionError(Title, Message);
     super.NotifyConnectionError(MessageType, Message, Title);
 }
 //return;    
}

simulated event SetHardwareMouseCursorVisibility(bool bIsVisible)
{
 super.SetHardwareMouseCursorVisibility(bIsVisible);
 // End:0x2F
 if(!bDisplayHardwareMouseCursor)
 {
     bHandCursor = false;
 }
 //return;    
}

// Export UGameViewportClient_X::execFlashWindow(FFrame&, void* const)
native final function FlashWindow();

function bool RemovePlayerByID(int ControllerId)
{
 local Orientation LP;

 LP = FindPlayerByControllerId(ControllerId);
 // End:0x2E
 if(LP == none)
 {
     return false;
 }
 return RemovePlayer(LP);
 //return ReturnValue;    
}

event bool RemovePlayer(LocalPlayer_X ExPlayer)
{
 local int OldIndex, I;
 local array< optional class > IDMappings;

 // End:0x57
 if((Outer.GamePlayers.Length <= 1) || Outer.GamePlayers[0] == ExPlayer)
 {
     return false;
 }
 LogInternal(((((((("Removing player" @ string(ExPlayer)) @ " with ControllerId") @ string(ExPlayer.ControllerId)) @ "at index") @ string(Outer.GamePlayers.Find(ExPlayer))) @ "(") $ string(Outer.GamePlayers.Length)) @ "existing players)");
 ExPlayer.ViewportClient = none;
 // End:0x246
 if(ExPlayer.Actor != none)
 {
     // End:0x1DC
     if(Outer.GetCurrentWorldInfo().NetMode != NM_Client)
     {
         ExPlayer.Actor.Destroy();
     }
     // End:0x246
     else
     {
         // End:0x246
         if(PlayerController_X(ExPlayer.Actor) != none)
         {
             PlayerController_X(ExPlayer.Actor).ServerDestroy();
         }
     }
 }
 OldIndex = RemoveLocalPlayer(ExPlayer);
 LocalPlayer_X(ExPlayer).OnRemoved();
 // End:0x2BA
 if(OldIndex != -1)
 {
     NotifyPlayerRemoved(OldIndex, ExPlayer);
 }
 // End:0x376
 if(OldIndex != Outer.GamePlayers.Length)
 {
     I = 0;
     J0x2F2:
     // End:0x376 [Loop If]
     if(I < Outer.GamePlayers.Length)
     {
         // End:0x34F
         if(I < OldIndex)
         {
             IDMappings.AddItem(I);
         }
         // End:0x368
         else
         {
             IDMappings.AddItem(I + 1);
         }
         ++ I;
         // [Loop Continue]
         goto J0x2F2;
     }
 }
 // End:0x399
 if(IDMappings.Length > 0)
 {
     FixupOwnerReferences(IDMappings);
 }
 LogInternal(((((((("Finished removing player " @ string(ExPlayer)) @ " with ControllerId") @ string(ExPlayer.ControllerId)) @ "at index") @ string(OldIndex)) @ "(") $ string(Outer.GamePlayers.Length)) @ "remaining players)");
 return true;
 //return ReturnValue;    
}

function OnPrimaryPlayerSwitch(LocalPlayer_X OldPrimaryPlayer, LocalPlayer_X NewPrimaryPlayer)
{
 super.OnPrimaryPlayerSwitch(OldPrimaryPlayer, NewPrimaryPlayer);
 EventPrimaryPlayerChange(OldPrimaryPlayer, NewPrimaryPlayer);
 //return;    
}
*/