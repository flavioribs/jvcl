{-----------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/MPL-1.1.html

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either expressed or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: JvExButtons.pas, released on 2004-01-04

The Initial Developer of the Original Code is Andreas Hausladen [Andreas dott Hausladen att gmx dott de]
Portions created by Andreas Hausladen are Copyright (C) 2004 Andreas Hausladen.
All Rights Reserved.

Contributor(s): -

You may retrieve the latest version of this file at the Project JEDI's JVCL home page,
located at http://jvcl.sourceforge.net

Known Issues:
-----------------------------------------------------------------------------}
// $Id$

unit JvQExButtons;

{$I jvcl.inc}
{MACROINCLUDE JvQExControls.macros}

{*****************************************************************************
 * WARNING: Do not edit this file.
 * This file is autogenerated from the source in devtools/JvExCLX/src.
 * If you do it despite this warning your changes will be discarded by the next
 * update of this file. Do your changes in the template files.
 ****************************************************************************}

interface

uses
  Classes, SysUtils,
  QGraphics, QControls, QForms, QButtons, QStdCtrls, QExtCtrls,
  Qt, QWindows, QMessages,
  JvQTypes, JvQThemes, JVCLXVer, JvQExControls;

type
  { QWinControl Begin }
  TJvExBitBtn = class(TBitBtn)
  { QControl }
  private
    FAboutJVCL: TJVCLAboutInfo;
    FDesktopFont: Boolean;
    FDragCursor: TCursor;
    FDragKind: TDragKind;
    FHintColor: TColor;
    FMouseOver: Boolean;
    FOnParentColorChanged: TNotifyEvent;
    FWindowProc: TWndMethod;
    procedure SetDesktopFont(Value: Boolean);
    procedure CMHitTest(var Mesg: TJvMessage); message CM_HITTEST;
    procedure CMHintShow(var Mesg: TJvMessage); message CM_HINTSHOW;
    procedure CMSysFontChanged(var Mesg: TMessage); message CM_SYSFONTCHANGED;
  protected
    procedure ColorChanged; override;
    procedure EnabledChanged; override;
    procedure FocusChanged; dynamic;
    function HitTest(X, Y: integer): Boolean; override;
    procedure MouseEnter(AControl: TControl); override;
    procedure MouseLeave(AControl: TControl); override;
    procedure ParentColorChanged; override;
    procedure TextChanged; override;
    procedure VisibleChanged; override;
    function HintShow(var HintInfo : THintInfo): Boolean; override;
    procedure WndProc(var Mesg: TMessage); dynamic;
    property DragCursor: TCursor read FDragCursor write FDragCursor stored False; { not implemented }
    property DragKind: TDragKind read FDragKind write FDragKind stored false; { not implemented }
    property OnParentColorChange: TNotifyEvent read FOnParentColorChanged write FOnParentColorChanged;
    property DesktopFont: Boolean read FDesktopFont write SetDesktopFont default false;
  public
    procedure Dispatch(var Mesg); override;
    function Perform(Msg: Cardinal; WParam, LParam: Longint): Longint;
    function IsRightToLeft: Boolean;
    property WindowProc: TWndMethod read FWindowProc write FWindowProc;
    property MouseOver: Boolean read FMouseOver write FMouseOver;
  published
    property AboutJVCLX: TJVCLAboutInfo read FAboutJVCL write FAboutJVCL stored False;
    property HintColor: TColor read FHintColor write FHintColor default clDefault;
  { QWinControl }
  private
    FInternalFontChanged: TNotifyEvent;
    FOnEvent: TEventEvent;
    procedure DoOnFontChanged(Sender: TObject);
    procedure CMDesignHitTest(var Mesg: TJvMessage); message CM_DESIGNHITTEST;
  protected
    procedure CreateWidget; override;
    procedure CreateWnd; virtual;
    procedure CursorChanged; override;
    procedure DoEnter; override;
    function DoPaintBackground(Canvas: TCanvas; Param: Integer): Boolean; virtual;
    procedure DoExit; override;
    procedure DoKillFocus(NextWnd: HWND); dynamic;
    procedure DoSetFocus(PreviousWnd: HWND); dynamic;
    function EventFilter(Sender: QObjectH; Event: QEventH): Boolean; override;
    procedure PaintWindow(PaintDevice: QPaintDeviceH);
    procedure RecreateWnd;
    procedure ShowingChanged; override;
    function WidgetFlags: Integer; override;
  public
    function ColorToRGB(Value: TColor): TColor;
    procedure PaintTo(PaintDevice: QPaintDeviceH; X, Y: Integer);
  published
    property OnEvent: TEventEvent read FOnEvent write FOnEvent;
  { QWinControl }
  private
    FCanvas: TCanvas;
    FDoubleBuffered: Boolean;
  protected
    procedure Paint; virtual;
    procedure Painting(Sender: QObjectH; EventRegion: QRegionH); override;
    property DoubleBuffered: Boolean read FDoubleBuffered write FDoubleBuffered;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property Canvas: TCanvas read FCanvas;
  end;
  
  { QControl begin }
  TJvExSpeedButton = class(TSpeedButton)
  { QControl }
  private
    FAboutJVCL: TJVCLAboutInfo;
    FDesktopFont: Boolean;
    FDragCursor: TCursor;
    FDragKind: TDragKind;
    FHintColor: TColor;
    FMouseOver: Boolean;
    FOnParentColorChanged: TNotifyEvent;
    FWindowProc: TWndMethod;
    procedure SetDesktopFont(Value: Boolean);
    procedure CMHitTest(var Mesg: TJvMessage); message CM_HITTEST;
    procedure CMHintShow(var Mesg: TJvMessage); message CM_HINTSHOW;
    procedure CMSysFontChanged(var Mesg: TMessage); message CM_SYSFONTCHANGED;
  protected
    procedure ColorChanged; override;
    procedure EnabledChanged; override;
    procedure FocusChanged; dynamic;
    function HitTest(X, Y: integer): Boolean; override;
    procedure MouseEnter(AControl: TControl); override;
    procedure MouseLeave(AControl: TControl); override;
    procedure ParentColorChanged; override;
    procedure TextChanged; override;
    procedure VisibleChanged; override;
    function HintShow(var HintInfo : THintInfo): Boolean; override;
    procedure WndProc(var Mesg: TMessage); dynamic;
    property DragCursor: TCursor read FDragCursor write FDragCursor stored False; { not implemented }
    property DragKind: TDragKind read FDragKind write FDragKind stored false; { not implemented }
    property OnParentColorChange: TNotifyEvent read FOnParentColorChanged write FOnParentColorChanged;
    property DesktopFont: Boolean read FDesktopFont write SetDesktopFont default false;
  public
    procedure Dispatch(var Mesg); override;
    function Perform(Msg: Cardinal; WParam, LParam: Longint): Longint;
    function IsRightToLeft: Boolean;
    property WindowProc: TWndMethod read FWindowProc write FWindowProc;
    property MouseOver: Boolean read FMouseOver write FMouseOver;
  published
    property AboutJVCLX: TJVCLAboutInfo read FAboutJVCL write FAboutJVCL stored False;
    property HintColor: TColor read FHintColor write FHintColor default clDefault;
  protected
    procedure FontChanged; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;
  

implementation

{$IFDEF UNITVERSIONING}
uses
  JclUnitVersioning;
{$ENDIF UNITVERSIONING}

{ QWinControl Create }

constructor TJvExBitBtn.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FWindowProc := WndProc;
  FInternalFontChanged := Font.OnChange;
  Font.OnChange := DoOnFontChanged;
  FHintColor := clDefault;
  FDoubleBuffered := True;
  FCanvas := TControlCanvas.Create;
  TControlCanvas(FCanvas).Control := Self;
  
end;

destructor TJvExBitBtn.Destroy;
begin
  
  FCanvas.Free;
  inherited Destroy;
end;
  
{ WinControl Paint }


procedure TJvExBitBtn.Paint;
begin
  TControlCanvas(Canvas).StopPaint;
  inherited Painting(Handle, QPainter_clipRegion(Canvas.Handle));
  TControlCanvas(Canvas).StartPaint;
end;

procedure TJvExBitBtn.Painting(Sender: QObjectH; EventRegion: QRegionH);
begin
  if QRegion_isEmpty(EventRegion) then
    Exit;
//  QPainter_setClipping(Canvas.Handle, True);
  TControlCanvas(Canvas).StartPaint;
  try
    QPainter_setClipRegion(Canvas.Handle, EventRegion);
    Canvas.Brush.Assign(Brush);
    Canvas.Font.Assign(Font);
    RequiredState(Canvas, [csHandleValid, csFontValid, csBrushValid]);
    Paint;
  finally
    TControlCanvas(Canvas).StopPaint;
  end;
end;
 
procedure TJvExBitBtn.WndProc(var Mesg: TMessage);
begin
  //OutputDebugString(PAnsiChar(Format('WINCONTROL %s: %s Msg $%x',[Name, ClassName, Mesg.Msg])));
  with TJvMessage(Mesg) do
  begin
    case Msg of
      { WinControl Messages }
      WM_KILLFOCUS   : DoKillFocus(FocusedWnd);
      WM_SETFOCUS    : DoSetFocus(FocusedWnd);
      CM_FONTCHANGED : FInternalFontChanged(Font);
      CM_HINTSHOW    : HintInfo^.HintColor := GetHintcolor(Self);
      WM_GETDLGCODE:
      begin
        Result := InputKeysToDlgCodes(InputKeys);
        Exit;
      end;
      WM_ERASEBKGND:
      begin
        Canvas.Start;
        try
          Handled := DoPaintBackGround(Canvas, LParam);
        finally
          Canvas.Stop;
        end;
        Exit;
      end;
      { Control Messages }
      CM_FOCUSCHANGED: FocusChanged;
      CM_MOUSEENTER: FMouseOver := True;
      CM_MOUSELEAVE: FMouseOver := False;
    end;
  end;
  inherited Dispatch(Mesg);
end;
{ QWinControl Common }
procedure TJvExBitBtn.CMDesignHitTest(var Mesg: TJvMessage);
begin
  with Mesg do
  begin
    Handled := inherited HitTest(XPos, YPos);
    if Handled then
      Result := HTCLIENT;
  end;
end;

procedure TJvExBitBtn.CMHitTest(var Mesg: TJvMessage);
begin
  with Mesg do
  begin
    if csDesigning in ComponentState then
      Result := Perform(CM_DESIGNHITTEST, XPos, YPos)
    else
    begin
      Handled := inherited HitTest(XPos, YPos);
      if Handled then
        Result := HTCLIENT;
    end;
  end;
end;

function TJvExBitBtn.DoPaintBackground(Canvas: TCanvas; Param: Integer): Boolean;
begin
  Result := false;
end;

procedure TJvExBitBtn.ShowingChanged;
begin
  Perform(CM_SHOWINGCHANGED, 0 ,0);
  inherited;
end;

procedure TJvExBitBtn.ColorChanged;
begin
  Perform(CM_COLORCHANGED, 0, 0);
  inherited;
end;

procedure TJvExBitBtn.CursorChanged;
begin
  Perform(CM_CURSORCHANGED, 0, 0);
  inherited;
end;

procedure TJvExBitBtn.DoSetFocus(PreviousWnd: QWidgetH);
begin
  { notification }
end;

procedure TJvExBitBtn.DoKillFocus(NextWnd: QWidgetH);
begin
  { notification }
end;

procedure TJvExBitBtn.DoEnter;
begin
  Perform(CM_ENTER, 0 ,0);
  inherited DoEnter;
end;

procedure TJvExBitBtn.DoExit;
begin
  Perform(CM_EXIT, 0 ,0);
  inherited DoExit;
end;

function TJvExBitBtn.EventFilter(Sender: QObjectH; Event: QEventH): Boolean;
begin
  Result := False;
  if Assigned(FOnEvent) then
    FOnEvent(Sender, Event, Result);
  if not Result then
    Result := inherited EventFilter(Sender, Event); 
end;

procedure TJvExBitBtn.FocusChanged;
begin
  NotifyControls(CM_FOCUSCHANGED);
end;

procedure TJvExBitBtn.DoOnFontChanged(Sender: TObject);
begin
  ParentFont := False;
  PostMessage(Self, CM_FONTCHANGED, 0, 0);
end;

procedure TJvExBitBtn.CreateWidget;
begin
  CreateWnd;
end;

procedure TJvExBitBtn.CreateWnd;
begin
  inherited CreateWidget;
end;

procedure TJvExBitBtn.RecreateWnd;
begin
  if not (csRecreating in ControlState) then
    RecreateWidget;
end;

procedure TJvExBitBtn.PaintTo(PaintDevice: QPaintDeviceH; X, Y: Integer);
begin
  WidgetControl_PaintTo(self, PaintDevice, X, Y);
end;

procedure TJvExBitBtn.PaintWindow(PaintDevice: QPaintDeviceH);
begin
  PaintTo(PaintDevice, 0, 0);
end;

function TJvExBitBtn.WidgetFlags: Integer;
begin
  Result := inherited WidgetFlags or
    Integer(WidgetFlags_WRepaintNoErase) or
    Integer(WidgetFlags_WMouseNoMask);
end;

function TJvExBitBtn.ColorToRGB(Value: TColor): TColor;
begin
  Result := QWindows.ColorToRGB(Value, self);
end;
  
{ QControl Common}

function TJvExBitBtn.HitTest(X, Y: integer): Boolean;
begin
   Result := Perform(CM_HITTEST, 0, 0) <> HTNOWHERE;
end;

procedure TJvExBitBtn.CMHintShow(var Mesg: TJvMessage);
begin
  with Mesg do
  begin
    Handled := inherited HintShow(HintInfo^);
  end;
end;

procedure TJvExBitBtn.CMSysFontChanged(var Mesg: TMessage);
begin
  if FDesktopFont then
  begin
    Font.Assign(Application.Font);
    FDesktopFont := True;
  end;
end;

procedure TJvExBitBtn.EnabledChanged;
begin
  Perform(CM_ENABLEDCHANGED, 0, 0);
  inherited EnabledChanged;
end;

procedure TJvExBitBtn.TextChanged;
begin
  Perform(CM_TEXTCHANGED, 0, 0);
  inherited TextChanged;
end;

procedure TJvExBitBtn.VisibleChanged;
begin
  Perform(CM_VISIBLECHANGED, 0, 0);
  inherited VisibleChanged;
end;

function TJvExBitBtn.HintShow(var HintInfo : THintInfo): Boolean;
begin
  Result := Perform(CM_HINTSHOW, 0, Integer(@HintInfo)) <> 0;
end;

procedure TJvExBitBtn.MouseEnter(AControl: TControl);
begin
  Perform(CM_MOUSEENTER, 0, 0);
  inherited MouseEnter(AControl);
end;

procedure TJvExBitBtn.MouseLeave(AControl: TControl);
begin
  Perform(CM_MOUSELEAVE, 0, 0);
  inherited MouseLeave(AControl);
end;

procedure TJvExBitBtn.ParentColorChanged;
begin
  inherited ParentColorChanged;
  if Assigned(FOnParentColorChanged) then
    FOnParentColorChanged(Self);
end;

procedure TJvExBitBtn.SetDesktopFont(Value: Boolean);
begin
  if FDesktopFont <> Value then
  begin
    FDesktopFont := Value;
    Perform(CM_SYSFONTCHANGED, 0, 0);
  end;
end;

procedure TJvExBitBtn.Dispatch(var Mesg);
begin
  if Assigned(FWindowProc) then
    FWindowProc(TMessage(Mesg))
  else
    inherited Dispatch(Mesg);
end;

function TJvExBitBtn.Perform(Msg: Cardinal; WParam, LParam: Longint): Longint;
var
  Mesg: TMessage;
begin
  Mesg.Msg := Msg;
  Mesg.WParam := WParam;
  Mesg.LParam := LParam;
  Mesg.Result := 0;
  Dispatch(Mesg);
  Result := Mesg.Result;
end;

function TJvExBitBtn.IsRightToLeft: Boolean;
begin
  Result := False;
end;
  
 
{ QControl Create }
constructor TJvExSpeedButton.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FHintColor := clDefault;
  FWindowProc := WndProc;
  
end;

destructor TJvExSpeedButton.Destroy;
begin
  
  inherited Destroy;
end;
 
procedure TJvExSpeedButton.WndProc(var Mesg: TMessage);
begin
  //OutputDebugString(PAnsiChar(Format('JV_CONTROL %s: %s Msg $%x',[Name, ClassName, Mesg.Msg])));
  with TJvMessage(Mesg) do
  begin
    case Msg of
      { Control Messages }
      CM_FOCUSCHANGED: FocusChanged;
      CM_MOUSEENTER: FMouseOver := True;
      CM_MOUSELEAVE: FMouseOver := False;
      CM_HINTSHOW:
        case FHintColor of
          clNone   : HintInfo^.HintColor := Application.HintColor;
          clDefault: HintInfo^.HintColor := GetHintColor(Parent);
        else
          HintInfo^.HintColor := FHintcolor;
        end;

    end;
  end;
  inherited Dispatch(Mesg);
end;

procedure TJvExSpeedButton.CMHitTest(var Mesg: TJvMessage);
begin
  with Mesg do
  begin
    Handled := inherited HitTest(XPos, YPos);
    if Handled then
      Result := HTCLIENT;
  end;
end;

procedure TJvExSpeedButton.ColorChanged;
begin
  Perform(CM_COLORCHANGED, 0, 0);
  inherited ColorChanged;
end;

procedure TJvExSpeedButton.FontChanged;
begin
  Perform(CM_FONTCHANGED, 0, 0);
  inherited FontChanged;
end;

procedure TJvExSpeedButton.FocusChanged;
begin
  { notification }
end;
 
{ QControl Common}

function TJvExSpeedButton.HitTest(X, Y: integer): Boolean;
begin
   Result := Perform(CM_HITTEST, 0, 0) <> HTNOWHERE;
end;

procedure TJvExSpeedButton.CMHintShow(var Mesg: TJvMessage);
begin
  with Mesg do
  begin
    Handled := inherited HintShow(HintInfo^);
  end;
end;

procedure TJvExSpeedButton.CMSysFontChanged(var Mesg: TMessage);
begin
  if FDesktopFont then
  begin
    Font.Assign(Application.Font);
    FDesktopFont := True;
  end;
end;

procedure TJvExSpeedButton.EnabledChanged;
begin
  Perform(CM_ENABLEDCHANGED, 0, 0);
  inherited EnabledChanged;
end;

procedure TJvExSpeedButton.TextChanged;
begin
  Perform(CM_TEXTCHANGED, 0, 0);
  inherited TextChanged;
end;

procedure TJvExSpeedButton.VisibleChanged;
begin
  Perform(CM_VISIBLECHANGED, 0, 0);
  inherited VisibleChanged;
end;

function TJvExSpeedButton.HintShow(var HintInfo : THintInfo): Boolean;
begin
  Result := Perform(CM_HINTSHOW, 0, Integer(@HintInfo)) <> 0;
end;

procedure TJvExSpeedButton.MouseEnter(AControl: TControl);
begin
  Perform(CM_MOUSEENTER, 0, 0);
  inherited MouseEnter(AControl);
end;

procedure TJvExSpeedButton.MouseLeave(AControl: TControl);
begin
  Perform(CM_MOUSELEAVE, 0, 0);
  inherited MouseLeave(AControl);
end;

procedure TJvExSpeedButton.ParentColorChanged;
begin
  inherited ParentColorChanged;
  if Assigned(FOnParentColorChanged) then
    FOnParentColorChanged(Self);
end;

procedure TJvExSpeedButton.SetDesktopFont(Value: Boolean);
begin
  if FDesktopFont <> Value then
  begin
    FDesktopFont := Value;
    Perform(CM_SYSFONTCHANGED, 0, 0);
  end;
end;

procedure TJvExSpeedButton.Dispatch(var Mesg);
begin
  if Assigned(FWindowProc) then
    FWindowProc(TMessage(Mesg))
  else
    inherited Dispatch(Mesg);
end;

function TJvExSpeedButton.Perform(Msg: Cardinal; WParam, LParam: Longint): Longint;
var
  Mesg: TMessage;
begin
  Mesg.Msg := Msg;
  Mesg.WParam := WParam;
  Mesg.LParam := LParam;
  Mesg.Result := 0;
  Dispatch(Mesg);
  Result := Mesg.Result;
end;

function TJvExSpeedButton.IsRightToLeft: Boolean;
begin
  Result := False;
end;
  

{$IFDEF UNITVERSIONING}
const
  UnitVersioning: TUnitVersionInfo = (
    RCSfile: '$RCSfile$';
    Revision: '$Revision$';
    Date: '$Date$';
    LogPath: 'JVCL\run'
  );

initialization
  RegisterUnitVersion(HInstance, UnitVersioning);

finalization
  UnregisterUnitVersion(HInstance);
{$ENDIF UNITVERSIONING}

end.
