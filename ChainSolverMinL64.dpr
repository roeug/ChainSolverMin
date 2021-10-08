program ChainSolverMinL64;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

uses
{$IFnDEF FPC}
{$ELSE}
  Interfaces,
{$ENDIF}
  Forms,
  UnitChainEditorMin in 'UnitChainEditorMin.pas' {_FormChainEditor},
  ChainClassesMin in 'ChainClassesMin.pas',
  CadClassesMin in 'CadClassesMin.pas',
  UnitLookInOOB in 'UnitLookInOOB.pas' {_FormLookInOOB},
  UnitFormMemoOkCancel in 'UnitFormMemoOkCancel.pas' {_FormMemoOKCancel},
  NuclideClassesMin, UnitSplashSolverMin {_FormSplashSolver};

{$R *.res}

begin

 RequireDerivedFormResource := False;
 Application.Scaled := True;
 Application.Initialize;
 _FormSplashSolver:= T_FormSplashSolver.Create(Application);
 with _FormSplashSolver do
 begin
  Show;
  Update; {Process any pending Windows paint messages}
 end;
 Application.HelpFile:= 'ChainSolver.hlp';
 Application.Title:= 'ChainSolverMin(CT W32)';

 Application.CreateForm(T_FormChainEditor, _FormChainEditor);
  with _FormSplashSolver do
 begin
  ProgressBar.Position:= (ProgressBar.Position + 1) mod ProgressBar.Max;
  Update; {Process any pending Windows paint messages}
 end;

 Application.CreateForm(T_FormLookInOOB, _FormLookInOOB);

 with _FormSplashSolver do
 begin
  ProgressBar.Position:= (ProgressBar.Position + 1) mod ProgressBar.Max;
  Update; {Process any pending Windows paint messages}
 end;


 Application.CreateForm(T_FormMemoOKCancel, _FormMemoOKCancel);

 with _FormSplashSolver do
 begin
  ProgressBar.Position:= (ProgressBar.Position + 1) mod ProgressBar.Max;
  Update; {Process any pending Windows paint messages}
 end;
 _FormChainEditor.FormInit(nil);
 with _FormSplashSolver do
 begin
  ProgressBar.Position:= (ProgressBar.Position + 1) mod ProgressBar.Max;
  Update; {Process any pending Windows paint messages}
 end;
 _FormChainEditor.Show;
 Application.ProcessMessages;
 _FormChainEditor.KeyPreview:= True;
 with _FormSplashSolver do
 begin
  ProgressBar.Position:= (ProgressBar.Position + 1) mod ProgressBar.Max;
  Update; {Process any pending Windows paint messages}
 end;

 _FormChainEditor.OnKeyUp:= _FormChainEditor.FormKeyUp;
 _FormChainEditor.Caption:= Application.Title;
 Application.Run;
end.

