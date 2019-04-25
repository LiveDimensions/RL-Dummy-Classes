/*******************************************************************************
 * DebugDrawer_X generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
 class DebugDrawer_X extends DebugDrawer;
/*
var() float textscale;
var transient GetAPlayerController Canvas;
var transient array<out Qword> DebugCategories;
var transient array<optional int> PossibleDebugCategories;
var transient float CharWidth;
var transient float LastWidestElement;
var transient bool bHideDebug;
var transient float OffsetX;

function bool ShouldDisplayDebug(name Category)
{
 // End:0x36
 if(PossibleDebugCategories.Find(Category) == -1)
 {
     PossibleDebugCategories.AddItem(Category);
 }
 return DebugCategories.Find(Category) != -1;
 //return ReturnValue;    
}

final function SetPos(float X, float Y)
{
 Canvas.super(DebugDrawer_X).SetPos(X + OffsetX, Y);
 //return;    
}

function StartSection()
{
 super.StartSection();
 UpdateCanvasIndentation();
 //return;    
}

function EndSection()
{
 super.EndSection();
 UpdateCanvasIndentation();
 //return;    
}

protected function UpdateCanvasIndentation()
{
 // End:0x53
 if(Canvas != none)
 {
     SetPos((float(Indentation) * CharWidth) + float(5), Canvas.CurY);
 }
 //return;    
}

function PrintSeperater()
{
 //return;    
}

function PrintProperty(coerce string PropertyName, coerce string Value)
{
 local float NameWidth, ValueWidth, YL;

 // End:0x1D3
 if(Canvas != none)
 {
     PropertyName = PropertyName $ "   ";
     // End:0x46
     if(Value == "")
     {
         Value = " ";
     }
     Canvas.StrLen(PropertyName, NameWidth, YL);
     Canvas.StrLen(Value, ValueWidth, YL);
     DrawBackground((NameWidth + ValueWidth) * textscale, YL * textscale);
     Canvas.SetDrawColor(64, 192, 255);
     Canvas.DrawText(PropertyName, false, textscale, textscale);
     Canvas.SetDrawColor(128, 128, 192);
     Canvas.DrawText(Value,, textscale, textscale);
     UpdateCanvasIndentation();
     DrawSpacer();
 }
 // End:0x1EF
 else
 {
     super.PrintProperty(PropertyName, Value);
 }
 //return;    
}

function PrintText(coerce string Text, optional @NULL InColor)
{
 local float XL, YL;

 InColor = DefaultTextColor;
 // End:0x104
 if(Canvas != none)
 {
     Canvas.SetDrawColorStruct(InColor);
     Canvas.StrLen(Text, XL, YL);
     DrawBackground(XL * textscale, YL * textscale);
     Canvas.DrawText(Text,, textscale, textscale);
     UpdateCanvasIndentation();
     DrawSpacer();
 }
 // End:0x120
 else
 {
     super.PrintText(Text, InColor);
 }
 //return;    
}

function StartDrawDebug(GetDefaultObject C)
{
 local float YL;

 Canvas = C;
 Canvas.StrLen("X", CharWidth, YL);
 CharWidth *= 2.0;
 // End:0x6F
 if(bHideDebug)
 {
     Canvas = none;
 }
 // End:0x88
 if(Canvas != none)
 {
     DrawHeader();
 }
 //return;    
}

function FinishDrawDebug()
{
 Canvas = none;
 //return;    
}

function DrawBackground(float Width, float Height)
{
 local float OldX, OldY;
 local GetDefaultObject OldColor;

 LastWidestElement = FMax(LastWidestElement, ((Width + Canvas.CurX) + float(10)) - OffsetX);
 OldColor = Canvas.DrawColor;
 OldX = Canvas.CurX;
 OldY = Canvas.CurY;
 SetPos(0.0, OldY);
 Canvas.SetDrawColor(0, 0, 0, 192);
 Canvas.DrawRect(LastWidestElement, Height);
 Canvas.SetPos(OldX, OldY);
 Canvas.SetDrawColorStruct(OldColor);
 //return;    
}

function DrawSpacer(optional float Height)
{
 Height = 2.0;
 DrawBackground(0.0, Height);
 SetPos(0.0, Canvas.CurY + Height);
 UpdateCanvasIndentation();
 //return;    
}

function DrawHeader()
{
 local string OptionsLabel, OptionsValues;
 local int I;
 local float XL, YL;

 OptionsLabel = "ShowDebug options:";
 I = 0;
 J0x29:
 // End:0x7F [Loop If]
 if(I < PossibleDebugCategories.Length)
 {
     OptionsValues $= ("  " $ string(PossibleDebugCategories[I]));
     ++ I;
     // [Loop Continue]
     goto J0x29;
 }
 Canvas.StrLen(OptionsLabel $ OptionsValues, XL, YL);
 SetPos(0.0, 0.0);
 Canvas.SetDrawColor(0, 0, 0, 192);
 Canvas.DrawRect(XL + float(10), YL + float(10));
 SetPos(5.0, 5.0);
 Canvas.SetDrawColor(128, 128, 128, 255);
 Canvas.DrawText(OptionsLabel, false, textscale, textscale);
 I = 0;
 J0x1BF:
 // End:0x2F2 [Loop If]
 if(I < PossibleDebugCategories.Length)
 {
     // End:0x26F
     if(ShouldDisplayDebug(PossibleDebugCategories[I]))
     {
         Canvas.SetDrawColor(255, 255, 128, 255);
         Canvas.DrawText("  " $ string(PossibleDebugCategories[I]), false, textscale, textscale);
     }
     // End:0x2E4
     else
     {
         Canvas.SetDrawColor(192, 192, 192, 255);
         Canvas.DrawText("  " $ string(PossibleDebugCategories[I]), false, textscale, textscale);
     }
     ++ I;
     // [Loop Continue]
     goto J0x1BF;
 }
 SetPos(5.0, (Canvas.CurY + YL) + float(15));
 //return;    
}
*/