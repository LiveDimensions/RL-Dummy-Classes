/*******************************************************************************
 * Car_TA generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class BallCamTarget_TA extends ActorComponent_X;

/** Offset the focal point from our owner's location, transformed by owner's rotation */
var() Vector LocalTranslation;
/** Offset the focal point from our owner's location, in world space */
var() Vector WorldTranslation;
/** Min and Max pitch for pulling the camera to the focal point */
var() int PitchMin;
/** Min and Max pitch for pulling the camera to the focal point */
var() int PitchMax;
/** Min and Max yaw for pulling the camera to the focal point */
var() int YawMin;
/** Min and Max yaw for pulling the camera to the focal point */
var() int YawMax;
/** Group that this ball cam target belongs to, so the player can focus on certain types of ball cam targets */
var() privatewrite name Group;
/** draw a green box around the focal point in world space */
var() bool bDrawFocus;
