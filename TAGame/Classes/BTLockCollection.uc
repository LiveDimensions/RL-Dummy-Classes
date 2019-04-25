/*******************************************************************************
 * BTLockCollection generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class BTLockCollection extends Component
    native;

struct native TimedLock
{
    var name Name;
    var float ReleaseTime;
    var bool bLockedOneFrame;

};

var private const transient array<TimedLock> Locks;
var delegate<EventLockSet> __EventLockSet__Delegate;
var delegate<EventLockExpired> __EventLockExpired__Delegate;

delegate EventLockSet(name LockName)
{
    //return;    
}

delegate EventLockExpired(name LockName)
{
    //return;    
}

// Export UBTLockCollection::execAddNamedLock(FFrame&, void* const)
native final function AddNamedLock(name LockName, float ForHowLong)
{
    //native.LockName;
    //native.ForHowLong;        
}

// Export UBTLockCollection::execRemoveNamedLock(FFrame&, void* const)
native final function RemoveNamedLock(name LockName)
{
    //native.LockName;        
}

// Export UBTLockCollection::execIsNameLocked(FFrame&, void* const)
native final function bool IsNameLocked(name LockName)
{
    //native.LockName;        
}

// Export UBTLockCollection::execGetTimeRemaining(FFrame&, void* const)
native final function float GetTimeRemaining(name LockName)
{
    //native.LockName;        
}

// Export UBTLockCollection::execUpdateLocks(FFrame&, void* const)
native final function UpdateLocks();