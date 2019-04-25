/*******************************************************************************
 * BTDynamicLink generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class BTDynamicLink extends BTDecorator
    native;

/** Name to identify this node by */
var() const name LinkName;
/** If our link is not set, return success instead of failure */
var() bool bUnlinkedSuccess;
var const transient BTNode ChildArchetype;

event Init()
{
}

private final function HandleDynamicLinksChanged(BTComponent BT)
{
}

// Export UBTDynamicLink::execSetChildArchetype(FFrame&, void* const)
native final function SetChildArchetype(BTNode NewChildArchetype)
{
    //native.NewChildArchetype;        
}