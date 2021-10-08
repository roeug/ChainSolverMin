unit UnitChainEditorMin;

{$IFDEF FPC}
 {$MODE Delphi}{$H+}
{$ENDIF}

interface

uses
{$IFnDEF FPC}
  Mask, Windows,
{$ELSE}
  MaskEdit, LCLIntf, LCLType, //LMessages,
{$ENDIF}
  Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, Grids, Buttons, BKStringGrid,
  Menus, ExtDlgs;

type

  { T_FormChainEditor }

  T_FormChainEditor = class(TForm)
   BitBtnDelLastTimeInterval: TButton;
   BitBtnNewTimeInterval: TButton;
    ButtonExcelExport: TButton;
    CopyStateNames: TMenuItem;
    EditSumTotalTimeRO: TEdit;
    EditSumTotalPowerMultTimeRO: TEdit;
    ItemAddStateChilds: TMenuItem;
    ItemHidefissionlinks: TMenuItem;
    ItemSaveCADimage: TMenuItem;
    ItemShowCrossSections: TMenuItem;
    ItemShowHalfLifes: TMenuItem;
    ItemShowRI: TMenuItem;
    ItemUseCumYieldsForState: TMenuItem;
    ItemUseIndYieldsForState: TMenuItem;
    ItemZoomIn: TMenuItem;
    ItemZoomOut: TMenuItem;
    Label6: TLabel;
    LinkPopupItemUseCumYieldForLink: TMenuItem;
    LinkPopupItemUseIndYieldForLink: TMenuItem;
    PopupMenuCAD: TPopupMenu;
    PopupMenuLink: TPopupMenu;
    SaveCadImageDialog: TSavePictureDialog;
    SaveDialog: TSaveDialog;
    OpenDialog: TOpenDialog;
    PageControl: TPageControl;
    TabSheetChainEditor: TTabSheet;
    TabSheetConditions: TTabSheet;
    LabelChainFileName: TLabel;
    TabSheetTimes: TTabSheet;
    TabSheetCalc: TTabSheet;
    TabSheetAnswers: TTabSheet;
    LabelTimesFileName: TLabel;
    ScrollBoxTimes: TScrollBox;
    PanelTimesCommon: TPanel;
    BitBtnApplyAllTimes: TBitBtn;
    ButtonTimesFileSave: TButton;
    ButtonTimesFileOpen: TButton;
    PanelCalcRight: TPanel;
    MemoCalculatorStdOut: TMemo;
    TabSheetSpectra: TTabSheet;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    PanelChainBottom: TPanel;
    StringGridStateLink: TBKStringGrid;
    SplitterHorzChainEdit: TSplitter;
    PanelChainEditBig: TPanel;
    ScrollBoxCAD: TScrollBox;
    Image: TImage;
    LabelSolverStdOut: TLabel;
    SplitterCalcPage: TSplitter;
    PanelChainRightBottom: TPanel;
    ButtonLookInOOB: TButton;
    ButtonToChain: TButton;
    SpeedButtonInfo: TSpeedButton;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    ButtonTestChain: TButton;
    StringGridAnswers: TStringGrid;
    StringGridResults: TStringGrid;
    ScrollBoxConditions: TScrollBox;
    PanelDepressionSSK: TPanel;
    GroupBoxDepression: TGroupBox;
    LabelDepressionVolume: TLabel;
    LabelDeplessionL: TLabel;
    CheckBoxDepression: TCheckBox;
    EditDepressionVolume: TEdit;
    EditDepressionL: TEdit;
    GroupBoxSSKinitial: TGroupBox;
    GroupBoxRAs: TGroupBox;
    PanelRAs: TPanel;
    LabelRA_V: TLabel;
    LabelRA_M: TLabel;
    LabelNperCM3: TLabel;
    EditRA_V: TEdit;
    EditRA_M: TEdit;
    ButtonLoadResPar: TButton;
    ButtonRA_FillDefaults: TButton;
    GroupBoxMM: TGroupBox;
    LabelMM_V: TLabel;
    LabelMM_M: TLabel;
    EditMM_V: TEdit;
    EditMM_M: TEdit;
    ButtonSaveMM: TButton;
    ButtonLoadMM: TButton;
    StringGridMM: TBKStringGrid;
    GroupBoxOM: TGroupBox;
    LabelOM_V: TLabel;
    LabelOM_M: TLabel;
    StringGridOM: TBKStringGrid;
    EditOM_V: TEdit;
    EditOM_M: TEdit;
    ButtonLoadOM: TButton;
    ButtonSaveOM: TButton;
    PaneRA_Top: TPanel;
    PanelBlock: TGroupBox;
    LabelVblock: TLabel;
    LabelSkin_V: TLabel;
    LabelBlock_M: TLabel;
    LabelSkin_M: TLabel;
    LabelLmean4SSK: TLabel;
    LabelTemperature4SSK: TLabel;
    LabelUnits_MV: TLabel;
    RadioGroupCellType: TRadioGroup;
    EditTemperature: TEdit;
    EditBlock_V: TEdit;
    EditSkin_V: TEdit;
    EditBlock_M: TEdit;
    EditSkin_M: TEdit;
    Editl_mean: TEdit;
    CheckBoxSSKconsider: TCheckBox;
    ButtonBuildResTable: TButton;
    ButtonLoadResTable: TButton;
    ButtonSaveResTable: TButton;
    GroupBoxInitialValues: TGroupBox;
    GroupBoxInitialWhat: TGroupBox;
    RadioButtonNuclei: TRadioButton;
    RadioButtonMasses: TRadioButton;
    StringGridMasses: TStringGrid;
    StringGridInitialValues: TBKStringGrid;
    CheckBoxPercent: TCheckBox;
    ScrollBox1: TScrollBox;
    PanelAnswers: TPanel;
    RadioGroupAnswers: TRadioGroup;
    RadioGroupActivityUnits: TRadioGroup;
    CheckBoxAnswersA_Z: TCheckBox;
    CheckBoxSaveSlow: TCheckBox;
    PanelCalcTop: TScrollBox;
    ProgressBarCalc: TProgressBar;
    CheckBoxDLL: TCheckBox;
    CheckBoxJAC: TCheckBox;
    ButtonCalc: TButton;
    ButtonAbortCalc: TButton;
    RadioGroupSolver: TGroupBox;
    RadioButtonVODE: TRadioButton;
    RadioButtonLSODA: TRadioButton;
    RadioButtonRADAU: TRadioButton;
    RadioButtonMEBDF: TRadioButton;
    PanelChainRight: TScrollBox;
    ButtonRepaint: TButton;
    ButtonClearChainEditor: TButton;
    ProgressBarLoad: TProgressBar;
    GroupBoxStates: TGroupBox;
    EditState: TEdit;
    CheckBoxBuildLinks: TCheckBox;
    ButtonAddState: TButton;
    ButtonDeleteState: TButton;
    ComboBoxStates: TComboBox;
    CheckBoxCapture: TCheckBox;
    CheckBoxFission: TCheckBox;
    CheckBoxDecay: TCheckBox;
    CheckBoxThreshold: TCheckBox;
    BitBtnEditAddStatesList: TBitBtn;
    GroupBoxLinks: TGroupBox;
    LabelStart4Link: TLabel;
    LabelEnd4Link: TLabel;
    ButtonAddLink: TButton;
    ComboBoxLinks: TComboBox;
    ButtonDeleteLink: TButton;
    EditLinkStart: TComboBox;
    EditLinkFinish: TComboBox;
    ButtonSaveChain: TButton;
    ButtonLoadChain: TButton;
    ButtonLoadDB: TButton;
    CheckBoxTimesAutoApply: TCheckBox;
    ButtonSaveSSKconditions: TButton;
    ButtonLoadSSKconditions: TButton;
    PanelMassButtons: TPanel;
    LabelTotalMass: TLabel;
    EditTotalMass: TEdit;
    ButtonLoadInitials: TButton;
    ButtonSaveInitials: TButton;
    StringGridRA_Rs: TStringGrid;
    StringGridGroupUpKeV: TStringGrid;
    PanelSpectraBottom: TPanel;
    ButtonCalcSpectra: TButton;
    RadioGroupSpectraWhat: TRadioGroup;
    StringGridSpectra: TStringGrid;
    CheckBoxSpectraPercent: TCheckBox;
    CheckBoxSpectraGasFPonly: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure ButtonRepaintClick(Sender: TObject);
    procedure ButtonAddStateClick(Sender: TObject);
    procedure ButtonClearChainEditorClick(Sender: TObject);
    procedure ButtonLoadDBClick(Sender: TObject);
    procedure ImageMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: integer);
    procedure ButtonAddLinkClick(Sender: TObject);
    procedure ComboBoxStatesChange(Sender: TObject);
    procedure ButtonDeleteStateClick(Sender: TObject);
    procedure ButtonDeleteLinkClick(Sender: TObject);
    procedure ComboBoxLinksChange(Sender: TObject);
    procedure ButtonLookInOOBClick(Sender: TObject);
    procedure ButtonToChainClick(Sender: TObject);
    procedure ButtonSaveChainClick(Sender: TObject);
    procedure ButtonLoadChainClick(Sender: TObject);
    procedure EditStateKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure BitBtnApplyAllTimesClick(Sender: TObject);
    procedure TimesChange(Sender: TObject);
    procedure BitBtnNewTimeIntervalClick(Sender: TObject);
    procedure BitBtnDelLastTimeIntervalClick(Sender: TObject);
    procedure ButtonTimesFileSaveClick(Sender: TObject);
    procedure ButtonTimesFileOpenClick(Sender: TObject);
    procedure TabSheetConditionsShow(Sender: TObject);
    procedure RadioButtonMassesNucleiClick(Sender: TObject);
    procedure ButtonTestCalcClick(Sender: TObject);
    procedure RadioGroupAnswersClick(Sender: TObject);
    procedure RadioGroupActivityUnitsClick(Sender: TObject);
    procedure TabSheetAnswersShow(Sender: TObject);
    procedure ButtonLoadResParClick(Sender: TObject);
    procedure TabSheetCalcShow(Sender: TObject);
    procedure ButtonSaveMMClick(Sender: TObject);
    procedure ButtonSaveOMClick(Sender: TObject);
    procedure ButtonLoadMMClick(Sender: TObject);
    procedure ButtonLoadOMClick(Sender: TObject);
    procedure ButtonRA_FillDefaultsClick(Sender: TObject);
    procedure ButtonLoadResTableClick(Sender: TObject);
    procedure ButtonSaveResTableClick(Sender: TObject);
    procedure StringGridMMKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure ButtonBuildResTableClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure StringGridInitialValuesUserChangedCell(Sender: TObject; ACol, ARow: integer; const Value: string);
    procedure ButtonLoadInitialsClick(Sender: TObject);
    procedure ButtonSaveInitialsClick(Sender: TObject);
    procedure ButtonExcelExportClick(Sender: TObject);
    procedure EditLinkStartEndChange(Sender: TObject);
    procedure CheckBoxAnswersA_ZClick(Sender: TObject);
    procedure StringGridAnswersColumnMoved(Sender: TObject; FromIndex, ToIndex: integer);
    procedure EditTotalMassChange(Sender: TObject);
    procedure CopyStateNamesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGridRA_RsDblClick(Sender: TObject);
    procedure StringGridRA_RsSelectCell(Sender: TObject; ACol, ARow: integer; var CanSelect: boolean);
    procedure RadioGroupSolverClick(Sender: TObject);
    procedure ButtonCalcClick(Sender: TObject);
    procedure RadioGroupCellTypeClick(Sender: TObject);
    procedure StringGridStateLinkUserChangedCell(Sender: TObject; ACol, ARow: integer; const Value: string);
    procedure BitBtnEditAddStatesListClick(Sender: TObject);
    procedure ItemShowHalfLifesClick(Sender: TObject);
    procedure CheckBoxBuildLinksClick(Sender: TObject);
    procedure ItemHidefissionlinksClick(Sender: TObject);
    procedure ItemUseIndYieldsForStateClick(Sender: TObject);
    procedure PopupMenuCADPopup(Sender: TObject);
    procedure ItemZoomInClick(Sender: TObject);
    procedure ItemZoomOutClick(Sender: TObject);
    procedure ItemSaveCADimageClick(Sender: TObject);
    procedure ItemShowCrossSectionsClick(Sender: TObject);
    procedure ItemShowRIClick(Sender: TObject);
    procedure SpeedButtonInfoClick(Sender: TObject);
    procedure ItemUseCumYieldsForStateClick(Sender: TObject);
    procedure ItemAddStateChildsClick(Sender: TObject);
    procedure ButtonAbortCalcClick(Sender: TObject);
    procedure StringGridMassesSetEditText(Sender: TObject; ACol, ARow: integer; const Value: string);
    procedure StringGridInitialValuesSetEditText(Sender: TObject; ACol, ARow: integer; const Value: string);
    procedure CheckBoxConsiderClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure StringGridRA_RsKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure StringGridRA_RsKeyPress(Sender: TObject; var Key: char);
    procedure PanelChainBottomCanResize(Sender: TObject; var NewWidth, NewHeight: integer; var Resize: boolean);
    procedure ButtonTestChainClick(Sender: TObject);
    procedure PageControlChanging(Sender: TObject; var AllowChange: boolean);
    procedure StringGridStateLinkSelectCell(Sender: TObject; ACol, ARow: integer; var CanSelect: boolean);
    procedure StringGridStateLinkKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure StringGridInitialValuesKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure StringGridMassesKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure StringGridAnswersKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure PageControlResize(Sender: TObject);
    procedure PanelTimesCommonResize(Sender: TObject);
    procedure ImageMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: integer);
    procedure ButtonSaveSSKconditionsClick(Sender: TObject);
    procedure ButtonLoadSSKconditionsClick(Sender: TObject);
    procedure StringGridRA_RsMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: integer);
    procedure FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure GroupBoxLinksMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: integer);
    procedure LinkPopupItemUseIndYieldForLinkClick(Sender: TObject);
    procedure LinkPopupItemUseCumYieldForLinkClick(Sender: TObject);
    procedure StringGridRA_RsSetEditText(Sender: TObject; ACol, ARow: integer; const Value: string);
    procedure FormResize(Sender: TObject);
    procedure ButtonCalcSpectraClick(Sender: TObject);
    procedure TabSheetSpectraShow(Sender: TObject);
    procedure CheckBoxSpectraPercentClick(Sender: TObject);
    procedure RadioGroupSpectraWhatClick(Sender: TObject);
    procedure CheckBoxSpectraGasFPonlyClick(Sender: TObject);
    procedure StringGridAnswersFixedCellClick(Sender: TObject; ACol, ARow: integer);
    procedure StringGridAnswersSelectCell(Sender: TObject; ACol, ARow: integer; var CanSelect: boolean);
  private
    { Private declarations }
    fTimesFileNameWithPath: string;
    fMmFileName: string;
    fOmFileName: string;
    fRtbFileName: string;
    fSaveStr: string;
    fInitialValuesFileName: string;
    fChainCalculated: boolean;
    fAnswersCol, fAnswersCol0, fC: array of integer;
    fTheDataModule: TObject;
    fStringGridRA_RsStateName: string;
    fTmpLines: TStringList;
    fTmpLines0, fTmpLines1, fTmpLines2, fTmpLines3: TStringList;
    fTmpSortedLines: TStringList;
    fNeedToBuildSSK_TableList, fNeedNewCalculator, fNeedPrepareConditions: boolean;
    fTabSheetAnswersEnabled, fIsReadOnlyDir: boolean;
    fAllowPrepareConditions: boolean;
    fShiftPressed: boolean;
    fDirForCalculator: string;
    fApplicationExePath: string;
    fSSKCalculating: boolean;
    fSSK_CalcAborted: boolean;
    fNuclideListLoaded: boolean;
    fInAnswerSelection: boolean;
    fAnswerColSelection: TGridRect;
    procedure RefreshRAdata;
    procedure CreateNewCalculator;
    function InitCalculator: boolean;
    procedure FillRA_RsInfoForm;
    procedure LookInOOB_InfoForm;
    procedure LoadResTableFromFile(const FileName: string);
    procedure RepaintAnswersTable(const AskSlow: boolean; const ItemNo: integer);
    procedure DoSolve(const Solver: string);
    procedure SetActiveState(aStatePointer: pointer);
    procedure SetActiveLink(aLinkPointer: pointer);
    procedure LoadInitials(const FileName: string);
    function LoadTimes(const FileName: string): boolean;
    procedure LoadMM(const FileName: string);
    procedure LoadOM(const FileName: string);
    procedure PrepareAnswersCols;
    function IsGetN0fromMassDolja(const MassDolja: single; const aStateName: string; var N0: single): boolean;
    function PrepareConditions: boolean; // prepares grids and Previous values restore
    function ApplyConditions: boolean;
    function ApplyTimes: boolean;
    procedure RepaintCAD;
    procedure OnCadChange(Sender: TObject);
    function PrepareCalculator: boolean;
    // procedure InitDebug;
    procedure ChaingAllCumYieldsForDecayChildsWithParentsOnIndYields;
    procedure ChaingAllIndYieldsForDecayChildsWithOutParentsOnCumYields;
    // procedure InitChainPage;
    procedure SetImageSize(const aWidth, aHeight: integer);
    procedure AddStatesByNamesStr(const NamesStr: string; Sender: TObject);
    procedure StringGridRA_RsMoveTo(const ACol, ARow: integer);
    procedure StringGridRA_RsSetCellChecked(const ACol, ARow: integer; const Checked: boolean);
    function StringGridRA_RsGetCellChecked(const ACol, ARow: integer): boolean;
    procedure RepaintSpectraTable;
    function CopyToClipboardFromAnswerStringGrid(StringGrid: TStringGrid): boolean;
    procedure ToBuildResTable(Sender: TObject);
  public
    { Public declarations }
    // IDebug: integer;
    // BDebug: LongBool;
    procedure FormInit(Sender: TObject);
  end;

var
  _FormChainEditor: T_FormChainEditor;

implementation

{$IFnDEF FPC}
 {$R *.frm}

{$ELSE}
 {$R *.frm}
{$ENDIF}


uses
  inifiles, Parsing, Clipbrd, ChainClassesMin, CadClassesMin, NuclideClassesMin, UnitDM_OOB, ChainCalculatorMin, EuLibMin,
  SelfShieldingCalculatorClassesMin, UnitLookInOOB,
  UnitFormMemoOkCancel, UnitSplashSolverMin, mxNativeExcel;

const
//  BufferSize = 255;
  BegiEndSectionChar: ansichar = #255;
  ExcelColLimit = 255;

var
  Chain: TChain;
  ChainCAD: TChainCAD;
  NuclideList: TNuclideList;
  ActiveLink: TCadLink;
  ActiveState: TCadState;
  ChainCalc: TChainCalculator;
  AllTimePoint: TList;
  SSK_Calc: TSelfShieldingCalculator;
  SSK_TableList: TSSK_TableList;
  OldCalculators: TList;
  GroupUpKeV: TFloatList;
  E_gammas, E_betas, E_alphas: array of double;
  SpNg_fromT, SpEgNg_fromT, SpNb_fromT, SpEbNb_fromT, SpNa_fromT, SpEaNa_fromT: array of array of double; // Spectra  6 items
  EgammasCount, EbetasCount, EalphasCount: integer;
  mxNativeExcel: TmxNativeExcel;

function DirExists(Name: string): boolean;
begin
  Result := FileExists(Name);
end;

procedure T_FormChainEditor.FormCreate(Sender: TObject);
var
  // TODO TempPathPChar, I deleted for linux
  // TempPathPChar: array [0 .. BufferSize] of Char;
  // I: Integer;
  aStr: string;
begin
  mxNativeExcel := nil;
  fNuclideListLoaded := False;
  fApplicationExePath := ExtractFilePath(Application.ExeName);
  fDirForCalculator := '';
  fIsReadOnlyDir := True;
  fAllowPrepareConditions := True;
  try
    // TODO deleted for linux
(*
  I:= GetTempPath(BufferSize, TempPathPChar); // TempDir
  if ((I > 0) and (I < BufferSize)) then
  begin // OK
   aStr:= string(TempPathPChar);
   if DirExists(aStr) then
    if (IsWritableDir(aStr)) then
    begin
     fDirForCalculator:= aStr;
     fIsReadOnlyDir:= False;
    end
  end;
*)
    if (fDirForCalculator = '') then
    begin // CurrentDir
      aStr := GetCurrentDir;
      if DirExists(aStr) then
        if (IsWritableDir(aStr)) then
        begin
          fDirForCalculator := aStr;
          fIsReadOnlyDir := False;
        end;
    end;
    if (fDirForCalculator = '') then
    begin // ExeDir
      aStr := fApplicationExePath;
      fDirForCalculator := aStr; // No Choice
      if (IsWritableDir(aStr)) then
      begin
        fIsReadOnlyDir := False;
      end;
    end;
  except
    fDirForCalculator := fApplicationExePath;
    fIsReadOnlyDir := not (IsWritableDir(fDirForCalculator));
  end;
  Image.Visible := False;
  fTmpLines := TStringList.Create;
  fTmpLines0 := TStringList.Create;
  fTmpLines1 := TStringList.Create;
  fTmpLines2 := TStringList.Create;
  fTmpLines3 := TStringList.Create;
  fTmpSortedLines := TStringList.Create;
  fTmpSortedLines.Sorted := True;
  Chain := TChain.Create;
  fTheDataModule := T_DataModuleOOB.Create;
  NuclideList := TNuclideList.Create;
  OldCalculators := TList.Create;
  ChainCAD := TChainCAD.Create(Chain);
  ActiveLink := nil;
  ActiveState := nil;
  AllTimePoint := TList.Create;
  AllTimePoint.Add(nil);
  ChainCalc := nil;
  SSK_Calc := nil;
  SSK_TableList := nil;
  ChainCAD.OnChange := nil;
  ChainCAD.Canvas := nil;
  OnKeyUp := nil;
  if fIsReadOnlyDir then
  begin
    CheckBoxDLL.Checked := False;
    CheckBoxDLL.Enabled := False;
    RadioButtonRADAU.Enabled := False;
    RadioButtonMEBDF.Enabled := False;
  end;
  aStr := fApplicationExePath + 'ChainSolver.hlp';
  if not (FileExists(aStr)) then
    aStr := 'ChainSolver.hlp';
  Application.HelpFile := aStr;
  Self.HelpFile := aStr;
  fNeedPrepareConditions := True;
  GroupUpKeV := TFloatList.Create;
end;

procedure T_FormChainEditor.FormInit(Sender: TObject);
var
  I: integer;
begin
  SetActiveState(nil);
  SetActiveLink(nil);
  // PageControl.Pages[PageControl.PageCount - 1].PageControl:= nil;
  for I:=0 to PageControl.PageCount-1 do
   PageControl.Pages[I].TabVisible:= True;
  PageControl.ActivePageIndex := 0;
  Application.ProcessMessages;
  fTmpLines.Clear;
  with StringGridStateLink do
  begin
    StringGridStateLink.ColWidths[0] := 64;
    StringGridStateLink.ColWidths[1] := StringGridStateLink.Width - 65;
    fTmpLines.Add(' # ');
    fTmpLines.Add('Decay');
    fTmpLines.Add('Thermal');
    fTmpLines.Add('Resonance');
    fTmpLines.Add('Fast');
    fTmpLines.Add('g-factor');
    Cells[1, 0] := 'str';
    for I := 5 to RowCount - 1 do
      fTmpLines.Add('Line ' + IntToStr(I + 1));
    StringGridStateLink.Cols[0].Assign(fTmpLines);
  end;
  // Page Spectra
  StringGridGroupUpKeV.ColWidths[0] := 32;
  fTmpLines.Clear;
  fTmpLines.Add(' # ');
  for I := 1 to StringGridGroupUpKeV.RowCount - 1 do
    fTmpLines.Add(IntToStr(I));
  StringGridGroupUpKeV.Cols[0].Assign(fTmpLines);
  fTmpLines.Add('  ');
  StringGridGroupUpKeV.Cells[1, 0] := ' Eup, keV';
  StringGridGroupUpKeV.Cells[1, 1] := ' 1E12';
  StringGridGroupUpKeV.Cells[1, 2] := ' 100';
  // Page Spectra End
(*
// QQQ
 EditState.Text:='Lu-177m,Hf-177g,Hf-177m1,Hf-177m2';
// EditState.Text:='Hf-178...179';
// EditState.Text:='Hf-178m2 Hf-178m1';
// EditState.Text:='Ho-160g Ho-160m1 Ho-160m2';
 CheckBoxCapture.Checked:= False;
 CheckBoxCapture.Enabled:= False;
 CheckBoxThreshold.Checked:= False;
 CheckBoxThreshold.Enabled:= False;
 CheckBoxFission.Checked:= False;
 CheckBoxFission.Enabled:= False;
 ButtonLoadDBClick(nil);
 ButtonAddState.Enabled:= True;
// EditState.Text:= '';
*)
  // QQQ
  EditState.Text := '';
  StringGridRA_Rs.RowCount := 2;
  PrepareConditions;
  // Param present
  fTmpLines.Clear;
  with Self do
  begin
    fTmpLines.Add('State');
    fTmpLines.Add('Consider');
    fTmpLines.Add(' N min ');
    fTmpLines.Add(' N max ');
    fTmpLines.Add(' Points');
    StringGridRA_Rs.FixedCols := 0;
    StringGridRA_Rs.Rows[0].Assign(fTmpLines);
    StringGridRA_Rs.FixedCols := 1;
    if ParamCount > 0 then
      if ((Pos('.', ParamStr(1)) > 0) and (Pos('\', ParamStr(1)) = 0)) then
      begin // The chain
        if FileExists(ParamStr(1)) then
        begin
          Application.ProcessMessages;
          ChainCAD.Free;
          Chain.LoadFromFile(ParamStr(1)); // '_1.chn');
          ChainCAD := TChainCAD.Create(Chain);
          ChainCAD.CreateStates;
          ChainCAD.CreateLinks;
          LabelChainFileName.Caption := 'Chain file:' + ParamStr(1);
          OnCadChange(Self);
        end;
      end
      else
      begin // all
        if FileExists(ParamStr(1) + '.chn') then
        begin
          Application.ProcessMessages;
          ChainCAD.Free;
          Chain.LoadFromFile(ParamStr(1) + '.chn');
          ChainCAD := TChainCAD.Create(Chain);
          ChainCAD.CreateStates;
          ChainCAD.CreateLinks;
          LabelChainFileName.Caption := 'Chain file:' + ParamStr(1) + '.chn';
          OnCadChange(Self);
        end;
        if FileExists(ParamStr(1) + '.pow') then
        begin
          LoadTimes(ParamStr(1) + '.pow');
        end;
        if FileExists(ParamStr(1) + '.mm') then
        begin
          LoadMM(ParamStr(1) + '.mm');
        end;
        if FileExists(ParamStr(1) + '.om') then
        begin
          LoadOM(ParamStr(1) + '.om');
        end;
        if FileExists(ParamStr(1) + '.ivl') then
        begin
          if (Chain <> nil) then
            if (Chain.States.Count > 0) then
            begin
              PrepareConditions;
              LoadInitials(ParamStr(1) + '.ivl');
            end;
        end;
        if FileExists(ParamStr(1) + '.rtb') then
        begin
          LoadResTableFromFile(ParamStr(1) + '.rtb');
        end;
      end;
    Application.ProcessMessages;
  end;
end;

procedure T_FormChainEditor.FormShow(Sender: TObject);
begin
  if not(FileExists(ExtractFilePath(Application.ExeName) + '/!Debug.it+ ')) then
  begin  // Spectra page -  TODO maybe later
//    PageControl.Pages[PageControl.PageCount - 1].PageControl := nil;  //  TabSheetSpectra.Visible:= False;
  end;
  Application.ProcessMessages;
  if _FormSplashSolver.Visible then
    _FormSplashSolver.Update;
  Application.ProcessMessages;
  ChainCAD.Canvas := Image.Canvas;
  if _FormSplashSolver.Visible then
    _FormSplashSolver.Update;
  ChainCAD.OnChange := OnCadChange;
  if _FormSplashSolver.Visible then
    _FormSplashSolver.Update;
  Image.Visible := True;
  SetImageSize(ChainCAD.Width, ChainCAD.Height);
  RepaintCAD;
  Application.ProcessMessages;
  if _FormSplashSolver.Visible then
    _FormSplashSolver.Hide;
  _FormSplashSolver.Close;
  if (Pos('Simple', RadioGroupCellType.Items[RadioGroupCellType.ItemIndex]) > 0) then
  begin
    LabelSkin_V.Visible := False;
    EditSkin_V.Visible := False;
    //  LabelOM_V.Visible:= False;
    //  EditOM_V.Visible:= False;
  end
  else
  begin
    LabelSkin_V.Visible := True;
    EditSkin_V.Visible := True;
    //  LabelOM_V.Visible:= True;
    //  EditOM_V.Visible:= True;
  end;
  PageControl.ActivePage := PageControl.Pages[0];
end;

procedure T_FormChainEditor.FormDestroy(Sender: TObject);
var
  I: integer;
begin
  ChainCalc.Free;
  ChainCalc := nil;
  for I := OldCalculators.Count - 1 downto 0 do
  begin
    TChainCalculator(OldCalculators[I]).Free;
    OldCalculators[I] := nil;
  end;
  OldCalculators.Free;
  OldCalculators := nil;
  fTmpLines.Free;
  fTmpLines0.Free;
  fTmpLines1.Free;
  fTmpLines2.Free;
  fTmpLines3.Free;
  fTmpSortedLines.Free;
  if mxNativeExcel<> nil then
   mxNativeExcel.Free;
end;

procedure T_FormChainEditor.FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if (ssShift in Shift) then
    fShiftPressed := True
  else
    fShiftPressed := False;
  if (PageControl.ActivePage = TabSheetAnswers) then
  begin
    // Ctrl+Ins or Ctrl+C
    if (not (ssAlt in Shift) and (ssCtrl in Shift) and (Key = VK_INSERT) or (Key = Ord('C'))) then
    begin
      CopyToClipboardFromAnswerStringGrid(TStringGrid(StringGridAnswers));
    end;
  end;
end;

procedure T_FormChainEditor.FormKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
var
  I: integer;
begin
  try
    if (ssShift in Shift) then
      fShiftPressed := True
    else
      fShiftPressed := False;
    // TabSheetChainEditor
    if TabSheetChainEditor.Visible then
    begin
      if ((Key in [Ord('I'), Ord('i')]) and (ssCtrl in Shift) and (ssAlt in Shift)) then
      begin
        if (ChainCAD.States.Count > 0) then
          if NuclideList.Count < 1 then
            MessageDlg('Nuclides were NOT loaded ! Yields can not be initialized !' + #13 + #10 + 'Use button "LOAD DB"!', mtWarning,
              [mbOK], 0)
          else
            ChaingAllCumYieldsForDecayChildsWithParentsOnIndYields;
      end
      else if ((Key in [Ord('C'), Ord('c')]) and (ssCtrl in Shift) and (ssAlt in Shift)) then
      begin
        if NuclideList.Count < 1 then
          MessageDlg('Nuclides were NOT loaded ! Yields can not be initialized !' + #13 + #10 + 'Use button "LOAD DB"!', mtWarning,
            [mbOK], 0)
        else
        begin
          ChaingAllIndYieldsForDecayChildsWithOutParentsOnCumYields;
        end;
        Exit;
      end
      else if ((Key in [Ord('Y'), Ord('y')]) and (ssCtrl in Shift) and (ssAlt in Shift)) then
      begin
        if NuclideList.Count < 1 then
          MessageDlg('Nuclides were NOT loaded ! Yields can not be initialized !' + #13 + #10 + 'Use button "LOAD DB"!', mtWarning,
            [mbOK], 0)
        else
        begin
          ChaingAllCumYieldsForDecayChildsWithParentsOnIndYields;
          ChaingAllIndYieldsForDecayChildsWithOutParentsOnCumYields;
        end;
      end;
    end;
    // Any Tab
    if ((Key in [VK_CANCEL, Ord('C'), Ord('c')]) and (ssCtrl in Shift)) then
    begin
      if (ChainCalc <> nil) then
        if ChainCalc.Calculating then
        begin
          ChainCalc.StopCalculation;
          MemoCalculatorStdOut.Lines.Add('ABORTING...');
          for I := 0 to ChainCalc.CalculatorStdOut.Count - 1 do
            MemoCalculatorStdOut.Lines.Add(ChainCalc.CalculatorStdOut[I]);
          if not (TabSheetCalc.Visible) then
            TabSheetCalc.Show;
          Exit;
        end;
      if EuLibMin.InLongOperation then
      begin
        EuLibMin.StopLongOperation := True;
        MessageDlg('Ctrl+C or Control+Break pressed.' + #13 + #10 + 'Aborting somewhere !', mtWarning, [mbOK], 0);
        Exit;
      end;
      if fSSKCalculating then
        if SSK_Calc <> nil then
        begin
          SSK_Calc.AbortCalcSSK := True;
          fSSK_CalcAborted := True;
          Application.ProcessMessages;
        end;
    end;
  except
    // Say nothing
  end;
end;

procedure T_FormChainEditor.FormResize(Sender: TObject);
begin
  StringGridRA_Rs.Height := GroupBoxRAs.Height - StringGridRA_Rs.Top;
end;

procedure T_FormChainEditor.PageControlChanging(Sender: TObject; var AllowChange: boolean);
var
  Answer: word;
begin
  try
    AllowChange := True;
    if PageControl.ActivePage = TabSheetChainEditor then
    begin
      PageControl.SetFocus; // To Enable ButtomToChain if need
      if ((ActiveState <> nil) or (ActiveLink <> nil)) then
        if (ButtonToChain.Enabled) then
        begin
          Answer := MessageDlg('Edited data were not saved to chain ! Save ?', mtWarning, [mbYes, mbNo, mbCancel], 0);
          if (Answer = mrCancel) then
          begin
            AllowChange := False;
            if (ActiveState <> nil) then
              ComboBoxStates.Text := ActiveState.State.Name
            else if (ActiveLink <> nil) then
              ComboBoxLinks.Text := ActiveLink.Link.Name;
            if StringGridStateLink.Visible then
              StringGridStateLink.SetFocus;
            Exit;
          end
          else if (Answer = mrYes) then
            ButtonToChainClick(Self);
        end;
    end
    else if PageControl.ActivePage = TabSheetTimes then
    begin
      if CheckBoxTimesAutoApply.Checked then
      begin
        if not (ApplyTimes) then
        begin
          AllowChange := False;
        end;
      end;
    end;
  except
    // Say nothing
  end;
end;

// Chain page start

procedure T_FormChainEditor.PanelChainBottomCanResize(Sender: TObject; var NewWidth, NewHeight: integer; var Resize: boolean);
begin
  StringGridStateLink.ColWidths[1] := StringGridStateLink.Width - 65;
end;

procedure T_FormChainEditor.ItemZoomInClick(Sender: TObject);
begin
  if ChainCAD <> nil then
  begin
    Image.Visible := False;
    with ChainCAD do
    begin
      if ScrollBoxCAD.Visible then
        ScrollBoxCAD.SetFocus;
      Image.Canvas.Brush.Color := clWhite;
      Image.Canvas.FillRect(Image.Canvas.ClipRect);
      ChainCAD.Zoom(2);
      SetImageSize(ChainCAD.Width, ChainCAD.Height);
      ChainCAD.PaintStates;
      ChainCAD.PaintLinks;
      if ChainCAD.StateHeight > 8 then
        ItemZoomOut.Enabled := True
      else
        ItemZoomOut.Enabled := False;
      if ChainCAD.StateHeight < 80 then
        ItemZoomIn.Enabled := True
      else
        ItemZoomIn.Enabled := False;
    end;
    Image.Visible := True;
  end;
end;

procedure T_FormChainEditor.ItemZoomOutClick(Sender: TObject);
begin
  if ChainCAD <> nil then
    with ChainCAD do
    begin
      if ScrollBoxCAD.Visible then
        ScrollBoxCAD.SetFocus;
      Image.Canvas.Brush.Color := clWhite;
      Image.Canvas.FillRect(Image.Canvas.ClipRect);
      ChainCAD.Zoom(0.5);
      SetImageSize(ChainCAD.Width, ChainCAD.Height);
      ChainCAD.PaintStates;
      ChainCAD.PaintLinks;
      if ChainCAD.StateHeight > 8 then
        ItemZoomOut.Enabled := True
      else
        ItemZoomOut.Enabled := False;
      if ChainCAD.StateHeight < 80 then
        ItemZoomIn.Enabled := True
      else
        ItemZoomIn.Enabled := False;
    end;
end;

procedure T_FormChainEditor.SetImageSize(const aWidth, aHeight: integer);

  procedure AdjustImagePictureGraphicSize(InWidth, InHeight: integer);
  const
    Divider = 100;
    Factor = 99;
  begin
    if ((InHeight > 0) and (InWidth > 0)) then
      try
        Image.Picture.Graphic.Height := InHeight;
        Image.Picture.Graphic.Width := InWidth;
      except
        AdjustImagePictureGraphicSize(InWidth * Factor div Divider, InHeight * Factor div Divider);
      end;
  end;

begin
  if ((Image.Picture.Graphic.Height <> aHeight) or (Image.Picture.Graphic.Width <> aWidth)) then
    try
      Image.Height := aHeight;
      Image.Picture.Graphic.Height := aHeight;
      Image.Width := aWidth;
      Image.Picture.Graphic.Width := aWidth;
    except
      on EOutOfResources do
      begin
        MessageDlg('Can not set new image size !' + #10#13 + 'Out of resources: not enough storage is available. Sorry.', mtWarning, [mbOK], 0);
        AdjustImagePictureGraphicSize(aWidth, aHeight);
      end
      else
        MessageDlg('Can not set new image height !', mtWarning, [mbOK], 0);
    end;
end;

procedure T_FormChainEditor.ItemSaveCADimageClick(Sender: TObject);
var
  Bitmap: TBitmap;
  Png: TPortableNetworkGraphic;
  FileExtenstion: string;
begin
  if SaveCadImageDialog.Execute then
  begin
    Bitmap := TBitmap.Create;
    Png := TPortableNetworkGraphic.Create;

    if ChainCAD <> nil then
      try
        FileExtenstion := UpperCase(Trim(ExtractFileExt(SaveCadImageDialog.FileName)));
        if (FileExtenstion = '.BMP') then
          // Graphic (*.png;*.xpm;*.bmp;*.cur;*.ico;*.icns;*.jpeg;*.jpg;*.jpe;*.jfif;*.tif;*.tiff;*.gif;*.tga;*.pbm;*.pgm;*.ppm;*.gif)|*.png;*.xpm;*.bmp;*.cur;*.ico;*.icns;*.jpeg;*.jpg;*.jpe;*.jfif;*.tif;*.tiff;*.gif;*.tga;*.pbm;*.pgm;*.ppm;*.gif|Portable Network Graphic (*.png)|*.png|Pixmap (*.xpm)|*.xpm|Bitmaps (*.bmp)|*.bmp|Cursor (*.cur)|*.cur|Icon (*.ico)|*.ico|Mac OS X Icon (*.icns)|*.icns|Joint Picture Expert Group (*.jpeg;*.jpg;*.jpe;*.jfif)|*.jpeg;*.jpg;*.jpe;*.jfif|Tagged Image File Format (*.tif;*.tiff)|*.tif;*.tiff|Graphics Interchange Format (*.gif)|*.gif|TARGA (TGA) Image File Format (*.tga)|*.tga|Portable PixMap (*.pbm;*.pgm;*.ppm)|*.pbm;*.pgm;*.ppm|Animated GIF (*.gif)|*.gif|All files (*.*)|*.*|
        begin
          // BMP
          try
            Bitmap.LoadFromDevice(Image.Canvas.Handle);
            Bitmap.SaveToFile(SaveCadImageDialog.FileName);
          except
          end;
        end
        else
        if (FileExtenstion = '.PNG') then
          // PNG
        begin
          try
            Png.LoadFromDevice(Image.Canvas.Handle);
            Png.SaveToFile(SaveCadImageDialog.FileName);
          except
          end;
        end
        else
        begin
          MessageDlg('Unsupported format (' + FileExtenstion + ')' + #10#13 + ' Use BMP *TODO others)!' + #10#13 +
            ' Will not export', mtWarning, [mbOK], 0);
          Exit;
        end;
      finally
        Bitmap.Free;
        Png.Free;
      end;
  end;
end;

procedure T_FormChainEditor.ItemAddStateChildsClick(Sender: TObject);
var
  NoInChain, I: integer;
  aTransitions: TNuclideTransitions;
  ChildList: TLongIntList;
  aStr: string;
begin
  if NuclideList.Count < 1 then
  begin
    if (MessageDlg('Nuclides were NOT loaded ! States will not be initialized !' + #13 + #10 + 'Use button "LOAD DB" ! Load ?',
      mtWarning, [mbYes, mbNo], 0) = mrYes) then
      ButtonLoadDBClick(Self);
  end;
  if NuclideList.Count > 1 then
    if (ActiveState <> nil) then
    begin
      NoInChain := Chain.FindState(ActiveState.State.ThZpA_s);
      if (NoInChain >= 0) then
      begin
        ChildList := TLongIntList.Create;
        try
          aTransitions := [];
          if CheckBoxDecay.Checked then
            aTransitions := aTransitions + [ntDecay];
          if CheckBoxCapture.Checked then
            aTransitions := aTransitions + [ntCapture];
          if CheckBoxThreshold.Checked then
            aTransitions := aTransitions + [ntThreshold];
          NuclideList.FindChilds(fTheDataModule, ActiveState.State.ThZpA_s, aTransitions, ChildList);
          aStr := '';
          for I := 0 to ChildList.Count - 1 do
            aStr := aStr + ' ' + ThZpA_sToStr(ChildList[I]);
          AddStatesByNamesStr(aStr, Self);
        finally
          ChildList.Free;
        end;
      end;
    end;
end;

procedure T_FormChainEditor.ItemShowCrossSectionsClick(Sender: TObject);
begin
  ItemShowCrossSections.Checked := not (ItemShowCrossSections.Checked);
  ChainCAD.ShowSigmaC := ItemShowCrossSections.Checked;
  RepaintCAD;
end;

procedure T_FormChainEditor.ItemShowRIClick(Sender: TObject);
begin
  ItemShowRI.Checked := not (ItemShowRI.Checked);
  ChainCAD.ShowRI := ItemShowRI.Checked;
  RepaintCAD;
end;

procedure T_FormChainEditor.BitBtnEditAddStatesListClick(Sender: TObject);
var
  I: integer;
  aStr: string;
begin
  with _FormMemoOKCancel, Self do
  begin
    _FormMemoOKCancel.Caption := 'Add state(s)';
    aStr := '';
    if Chain <> nil then
      for I := 0 to Chain.States.Count - 1 do
        aStr := aStr + Chain.States[I].Name + ' ';
    _FormMemoOKCancel.MemoInChain.Lines.Text := aStr;
    _FormMemoOKCancel.GroupBox1.Caption := ' ' + IntToStr(Chain.States.Count) + ' States in the chain';
    _FormMemoOKCancel.Memo.Lines.Clear;
    if (Trim(EditState.Text) <> '') then
      _FormMemoOKCancel.Memo.Lines.Add(EditState.Text);
    aStr := '';
    if (_FormMemoOKCancel.ShowModal = mrOk) then
    begin
      // qqqq was 2 below
      // for I:= 0 to _FormMemoOKCancel.Memo.Lines.Count-1 do
      // aStr:= aStr+_FormMemoOKCancel.Memo.Lines[I]+',';
      // qqqq was 2 up
      aStr := Trim(_FormMemoOKCancel.Memo.Lines.Text);
      for I := 1 to Length(aStr) do
        if ((aStr[I] = #10) or (aStr[I] = #13)) then // Remember TRANSFER (PERE-NOS) for >1024 linelength
          aStr[I] := ' ';
      try
        try
          Self.AddStatesByNamesStr(aStr, _FormMemoOKCancel);
        except
          MessageDlg('Exception in AddStatesByNamesStr(BitBtnEditAddStatesListClick)', mtWarning, [mbOK], 0);
        end;
      finally

      end;
    end;
  end;
end;

procedure T_FormChainEditor.CopyStateNamesClick(Sender: TObject);
var
  I: integer;
  aStr: string;
begin
  fTmpSortedLines.Clear;
  try
    aStr := '';
    for I := 0 to Chain.States.Count - 1 do
      fTmpSortedLines.Add(Chain.States[I].Name);
    aStr := '';
    fTmpSortedLines.Sort;
    for I := 0 to fTmpSortedLines.Count - 1 do
      aStr := aStr + fTmpSortedLines[I] + ',';
    Clipboard.AsText := Copy(aStr, 1, Length(aStr) - 1);
  except
    MessageDlg('Exception in CopyStateNamesClick', mtWarning, [mbOK], 0);
  end;
end;

procedure T_FormChainEditor.CheckBoxBuildLinksClick(Sender: TObject);
begin
  if CheckBoxBuildLinks.Checked then
  begin
    CheckBoxCapture.Enabled := True;
    CheckBoxDecay.Enabled := True;
    CheckBoxFission.Enabled := True;
    CheckBoxThreshold.Enabled := True;
  end
  else
  begin
    CheckBoxCapture.Enabled := False;
    CheckBoxDecay.Enabled := False;
    CheckBoxFission.Enabled := False;
    CheckBoxThreshold.Enabled := False;
  end;
end;

procedure T_FormChainEditor.SetActiveState(aStatePointer: pointer);
var
  I: integer;
  aState: TCadState;
  Answer: word;
begin
  fSaveStr := '';
  if (aStatePointer = nil) then
  begin
    StringGridStateLink.Enabled := False;
    ButtonDeleteState.Enabled := False;
  end
  else
  begin
    StringGridStateLink.Enabled := True;
    ButtonDeleteState.Enabled := True;
  end;
  aState := TCadState(aStatePointer);
  if ((ActiveState <> nil) or (ActiveLink <> nil)) then
    if (ButtonToChain.Enabled) then
    begin
      Answer := MessageDlg('Edited data were not saved to chain ! Save ?', mtWarning, [mbYes, mbNo, mbCancel], 0);
      if (Answer = mrCancel) then
      begin
        if (ActiveState <> nil) then
          ComboBoxStates.Text := ActiveState.State.Name
        else if (ActiveLink <> nil) then
          ComboBoxLinks.Text := ActiveLink.Link.Name;
        Exit;
      end
      else if (Answer = mrYes) then
        ButtonToChainClick(Self);
    end;
  ActiveState := aState;
  ActiveLink := nil; // qq 3 line
  ComboBoxLinks.ItemIndex := -1;
  ButtonDeleteLink.Enabled := False;
  ButtonToChain.Enabled := False;
  with Self, StringGridStateLink do
  begin
    StringGridStateLink.TopRow := 1;
    StringGridStateLink.Row := 1;
    StringGridStateLink.Cols[1].Clear;
    if ActiveState <> nil then
    begin
      ButtonLookInOOB.Enabled := True;
      StringGridStateLink.Cells[1, 0] := 'State ' + ActiveState.State.Name;
      for I := 0 to ComboBoxStates.Items.Count - 1 do
        if ComboBoxStates.Items[I] = ActiveState.State.Name then
        begin
          ComboBoxStates.ItemIndex := I;
          if (ComboBoxStates.Text = '') then
            ButtonDeleteState.Enabled := False
          else
            ButtonDeleteState.Enabled := True;
          break;
        end;
      for I := 0 to ActiveState.State.ValuesStr.Count - 1 do
        StringGridStateLink.Cells[1, I + 1] := ActiveState.State.ValuesStr[I];
    end
    else
      ButtonLookInOOB.Enabled := False;
  end;
end;

procedure T_FormChainEditor.SetActiveLink(aLinkPointer: pointer);
var
  I: integer;
  aLink: TCadLink;
  Answer: word;
begin
  fSaveStr := '';
  if (aLinkPointer = nil) then
  begin
    StringGridStateLink.Enabled := False;
    ButtonDeleteLink.Enabled := False;
  end
  else
  begin
    StringGridStateLink.Enabled := True;
    ButtonDeleteLink.Enabled := True;
  end;
  aLink := TCadLink(aLinkPointer);
  if ((ActiveState <> nil) or (ActiveLink <> nil)) then
    if (ButtonToChain.Enabled) then
    begin
      Answer := MessageDlg('Edited data were not saved to chain ! Save ?', mtWarning, [mbYes, mbNo, mbCancel], 0);
      if (Answer = mrCancel) then
        Exit
      else if (Answer = mrYes) then
        ButtonToChainClick(Self);
    end;
  ActiveLink := aLink;
  ActiveState := nil; // qq 3 line
  ComboBoxStates.ItemIndex := -1;
  ButtonDeleteState.Enabled := False;
  ButtonToChain.Enabled := False;
  with Self, StringGridStateLink do
  begin
    StringGridStateLink.TopRow := 1;
    StringGridStateLink.Row := 1;
    StringGridStateLink.Cols[1].Clear;
    if ActiveLink <> nil then
    begin
      for I := 0 to ComboBoxLinks.Items.Count - 1 do
        if ComboBoxLinks.Items[I] = ActiveLink.Link.Name then
        begin
          ComboBoxLinks.ItemIndex := I;
          if (ComboBoxLinks.Text = '') then
            ButtonDeleteLink.Enabled := False
          else
            ButtonDeleteLink.Enabled := True;
          break;
        end;
      ButtonLookInOOB.Enabled := True;
      StringGridStateLink.Cells[1, 0] := 'Link ' + ActiveLink.Link.Name;
      for I := 0 to ActiveLink.Link.ValuesStr.Count - 1 do
        StringGridStateLink.Cells[1, I + 1] := ActiveLink.Link.ValuesStr[I];
    end
    else
      ButtonLookInOOB.Enabled := False;
  end;
end;

procedure T_FormChainEditor.ButtonRepaintClick(Sender: TObject);
begin
  RepaintCAD;
end;

procedure T_FormChainEditor.AddStatesByNamesStr(const NamesStr: string; Sender: TObject);
// Delimiters now are in StrToStateNamesList
//const
// Delimiters = [',', ' ', ';', '.', '\', '/', #10, #13];
var
  aNuclideList: TNuclideList;
  aTransitions: TNuclideTransitions;
  I: integer;
  // StateNames: TStringList;
  OnCadChangeSave: TNotifyEvent;
  HorScrollBarPosition, VerScrollBarPosition: integer;
  SaveCursor: TCursor;
  SaveCaption: string;
begin
  HorScrollBarPosition := ScrollBoxCAD.HorzScrollBar.Position;
  VerScrollBarPosition := ScrollBoxCAD.VertScrollBar.Position;
  if (Sender <> ButtonLoadDB) then
    ButtonLoadDB.SetFocus; // if Sender is edit it will NOT get ReturnKey from MessageDlg
  Application.ProcessMessages;
  if NuclideList.Count < 1 then
    if (MessageDlg('Nuclides were NOT loaded ! States will not be initialized !' + #13 + #10 + 'Use button "LOAD DB" ! Load ?',
      mtWarning, [mbYes, mbNo], 0) = mrYes) then
      ButtonLoadDBClick(Self);
  SaveCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  ScrollBoxCAD.Enabled := False;
  if Assigned(ChainCAD.OnChange) then
  begin
    OnCadChangeSave := ChainCAD.OnChange;
    ChainCAD.OnChange := nil;
  end
  else
    OnCadChangeSave := nil;
  Application.ProcessMessages;
  fAllowPrepareConditions := False;
  BitBtnEditAddStatesList.Enabled := False;
  ButtonAddState.Enabled := False;
  PanelChainRight.Enabled := False;
  PanelChainBottom.Enabled := False;
  TabSheetConditions.Enabled := False;
  TabSheetAnswers.Enabled := False;
  fTabSheetAnswersEnabled := False;
  SaveCaption := Self.Caption;
  Self.Caption := 'Wait.Chain building ...';
  try
    if NuclideList.Count < 1 then
    begin
      aNuclideList := nil;
    end
    else
      aNuclideList := NuclideList;
    aTransitions := [];
    if CheckBoxBuildLinks.Checked then
    begin
      if CheckBoxCapture.Checked then
        aTransitions := aTransitions + [ntCapture];
      if CheckBoxDecay.Checked then
        aTransitions := aTransitions + [ntDecay];
      if CheckBoxFission.Checked then
        aTransitions := aTransitions + [ntFission];
      if CheckBoxThreshold.Checked then
        aTransitions := aTransitions + [ntThreshold];
    end;
    StrToStateNamesList(NamesStr, fTmpLines);
    fTmpLines.Sort;
    if fTmpLines.Count > 5 then
      Image.Visible := False;
    for I := 0 to fTmpLines.Count - 1 do
      if (Trim(fTmpLines[I]) <> '') then
      begin
        ChainCAD.AddStateByName(fTmpLines[I], CheckBoxBuildLinks.Checked, aTransitions, aNuclideList, fTheDataModule);
        repeat
          Application.ProcessMessages;
        until not (ChainCAD.Working);
      end;
  finally
    PanelChainRight.Enabled := True;
    BitBtnEditAddStatesList.Enabled := True;
    if Trim(EditState.Text) <> '' then
      ButtonAddState.Enabled := True;
    PanelChainBottom.Enabled := True;
    TabSheetConditions.Enabled := True;
    TabSheetAnswers.Enabled := True;
    fTabSheetAnswersEnabled := True;
    fNeedPrepareConditions := True;
    fAllowPrepareConditions := True;
    SetImageSize(ChainCAD.Width, ChainCAD.Height);
    Image.Visible := True;
    if Assigned(OnCadChangeSave) then
    begin
      ChainCAD.OnChange := OnCadChangeSave;
      ChainCAD.OnChange(Self);
    end;
    Self.Caption := SaveCaption;
    ScrollBoxCAD.Enabled := True;
    if (HorScrollBarPosition < Image.Width) then
      ScrollBoxCAD.HorzScrollBar.Position := HorScrollBarPosition;
    if (VerScrollBarPosition < Image.Height) then
      ScrollBoxCAD.VertScrollBar.Position := VerScrollBarPosition;
    Screen.Cursor := SaveCursor;
  end;
end;

procedure T_FormChainEditor.ButtonAddStateClick(Sender: TObject);
begin
  try
    AddStatesByNamesStr(EditState.Text, Sender);
  finally

  end;
end;

procedure T_FormChainEditor.ButtonClearChainEditorClick(Sender: TObject);
var
  I: integer;
  OnCadChangeSave: TNotifyEvent;
begin
  if Assigned(ChainCAD.OnChange) then
  begin
    OnCadChangeSave := ChainCAD.OnChange;
    ChainCAD.OnChange := nil;
  end
  else
    OnCadChangeSave := nil;
  for I := ChainCAD.States.Count - 1 downto 0 do
    ChainCAD.DeleteState(ChainCAD.States[I]);
  for I := Chain.Links.Count - 1 downto 0 do
    Chain.DeleteLink(Chain.Links[I]);
  EditState.Text := '';
  ButtonAddState.Enabled := False;
  ComboBoxStates.Text := '';
  ButtonDeleteState.Enabled := False;
  EditLinkStart.Text := '';
  EditLinkFinish.Text := '';
  ComboBoxLinks.Text := '';
  ButtonAddLink.Enabled := False;
  ButtonDeleteLink.Enabled := False;
  SetActiveState(nil);
  SetActiveLink(nil);
  if Assigned(OnCadChangeSave) then
  begin
    ChainCAD.OnChange := OnCadChangeSave;
    ChainCAD.OnChange(Self);
  end;
  SetImageSize(1, 1);
  LabelChainFileName.Caption := '';
end;

procedure T_FormChainEditor.ButtonLoadDBClick(Sender: TObject);
var
  SaveCursor: TCursor;
  SaveCaption: string;
begin
  SaveCaption := Self.Caption;
  Self.Caption := ' Data loading...';
  SaveCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  Self.Enabled := False;
  try
    if FileExists('ORIP_XXId.oob') then
      T_DataModuleOOB(fTheDataModule).DatabaseName := 'ORIP_XXId.oob'
    else if FileExists(fApplicationExePath + 'ORIP_XXId.oob') then
      T_DataModuleOOB(fTheDataModule).DatabaseName := fApplicationExePath + 'ORIP_XXId.oob'
    else
    begin
      T_DataModuleOOB(fTheDataModule).DatabaseName := '  ';
    end;
    if NuclideList.LoadFromDB(T_DataModuleOOB(fTheDataModule), ProgressBarLoad) then
      fNuclideListLoaded := True;
  finally
    repeat
      Application.ProcessMessages;
    until not (T_DataModuleOOB(fTheDataModule).LoadInProgress);
    Screen.Cursor := SaveCursor;
    Self.Caption := SaveCaption;
    Self.Enabled := True;
    Application.ProcessMessages;
  end;
end;

procedure T_FormChainEditor.ImageMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: integer);
var
  N: integer;
  ScreenPoint: TPoint;
begin
  ScreenPoint.X := X;
  ScreenPoint.Y := Y;
  ScreenPoint := Image.ClientToScreen(ScreenPoint);
  begin
    N := ChainCAD.FindStateAtXY(X, Y);
    if N >= 0 then
    begin
      SetActiveState(ChainCAD.States[N]);
      if (mbRight = Button) then
        PopupMenuCAD.Popup(ScreenPoint.X, ScreenPoint.Y);
      Exit;
    end;
    N := ChainCAD.FindLinkAtXY(X, Y);
    if N >= 0 then
      SetActiveLink(ChainCAD.Links[N]);
  end;
  if (mbRight = Button) then
    PopupMenuCAD.Popup(ScreenPoint.X, ScreenPoint.Y);
end;

procedure T_FormChainEditor.ButtonAddLinkClick(Sender: TObject);
var
  aTransitions: TNuclideTransitions;
  HorScrollBarPosition, VerScrollBarPosition: integer;
begin
  HorScrollBarPosition := ScrollBoxCAD.HorzScrollBar.Position;
  VerScrollBarPosition := ScrollBoxCAD.VertScrollBar.Position;
  aTransitions := [];
  if CheckBoxCapture.Checked then
    aTransitions := aTransitions + [ntCapture];
  if CheckBoxDecay.Checked then
    aTransitions := aTransitions + [ntDecay];
  if CheckBoxFission.Checked then
    aTransitions := aTransitions + [ntFission];
  if CheckBoxThreshold.Checked then
    aTransitions := aTransitions + [ntThreshold];
  ChainCAD.AddLinkByName(EditLinkStart.Text, EditLinkFinish.Text, True, aTransitions, NuclideList, T_DataModuleOOB(fTheDataModule));
  EditLinkStartEndChange(Self);
  if (HorScrollBarPosition < Image.Width) then
    ScrollBoxCAD.HorzScrollBar.Position := HorScrollBarPosition;
  if (VerScrollBarPosition < Image.Height) then
    ScrollBoxCAD.VertScrollBar.Position := VerScrollBarPosition;
end;

procedure T_FormChainEditor.RepaintCAD;
var
  VscrollPos, HscrollPos: integer;
begin
  VscrollPos := ScrollBoxCAD.VertScrollBar.ScrollPos;
  HscrollPos := ScrollBoxCAD.HorzScrollBar.ScrollPos;
  Image.Visible := False;
  Image.Canvas.Brush.Color := clWhite;
  Image.Canvas.FillRect(Image.Canvas.ClipRect);
  ChainCAD.PaintStates;
  ChainCAD.PaintLinks;
  Image.Visible := True;
  ScrollBoxCAD.VertScrollBar.Position := VscrollPos;
  ScrollBoxCAD.HorzScrollBar.Position := HscrollPos;
end;

procedure T_FormChainEditor.OnCadChange(Sender: TObject);
var
  ImagePosition: TPoint;
begin
  ImagePosition.X := ScrollBoxCAD.HorzScrollBar.Position;
  ImagePosition.Y := ScrollBoxCAD.VertScrollBar.Position;
  Image.Visible := False;
  Application.ProcessMessages;
  RepaintCAD;
  GroupBoxStates.Caption := '&States (' + IntToStr(ChainCAD.States.Count) + ')';
  GroupBoxLinks.Caption := '&Links (' + IntToStr(ChainCAD.Links.Count) + ')';
  ChainCAD.ListStates(fTmpLines);
  fTmpLines.Sort;
  ComboBoxStates.Items.Assign(fTmpLines);
  EditLinkStart.Items.Assign(fTmpLines);
  EditLinkFinish.Items.Assign(fTmpLines);
  ChainCAD.ListLinks(fTmpLines);
  fTmpLines.Sort;
  ComboBoxLinks.Items.Assign(fTmpLines);
  ComboBoxLinks.DropDownCount := 20;
  SetImageSize(ChainCAD.Width, ChainCAD.Height);
  fNeedNewCalculator := True;
  fNeedToBuildSSK_TableList := True;
  fChainCalculated := False;
  Application.ProcessMessages;
  Image.Visible := True;
  try
    ScrollBoxCAD.HorzScrollBar.Position := ImagePosition.X;
    ScrollBoxCAD.VertScrollBar.Position := ImagePosition.Y;
  except
    ScrollBoxCAD.HorzScrollBar.Position := 0;
    ScrollBoxCAD.VertScrollBar.Position := 0;
  end;
end;

procedure T_FormChainEditor.ComboBoxStatesChange(Sender: TObject);
begin
  if (ComboBoxStates.Text = '') then
    ButtonDeleteState.Enabled := False
  else
    ButtonDeleteState.Enabled := True;
  SetActiveState(ChainCAD.FindStateByName(ComboBoxStates.Text));
end;

procedure T_FormChainEditor.ButtonDeleteStateClick(Sender: TObject);
var
  HorScrollBarPosition, VerScrollBarPosition: integer;
  SaveCursor: TCursor;
begin
  SaveCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    HorScrollBarPosition := ScrollBoxCAD.HorzScrollBar.Position;
    VerScrollBarPosition := ScrollBoxCAD.VertScrollBar.Position;
    ActiveState := ChainCAD.FindStateByName(ComboBoxStates.Text);
    if ActiveState <> nil then
    begin
      if fShiftPressed then
      begin
        if (MessageDlg('The ' + ComboBoxStates.Text + ' state will be deleted(+). Are you sure ?', mtWarning, [mbYes, mbNo], 0) = mrYes) then
        begin
          ChainCAD.DeleteStateEx(ActiveState);
          SetActiveState(nil);
          ButtonDeleteState.Enabled := False;
          fShiftPressed := False;
        end;
      end
      else
      begin
        if (MessageDlg('The ' + ComboBoxStates.Text + ' state will be deleted. Are you sure ?', mtWarning, [mbYes, mbNo], 0) = mrYes) then
        begin
          ChainCAD.DeleteState(ActiveState);
          SetActiveState(nil);
          ButtonDeleteState.Enabled := False;
        end;
      end;
    end;
    if (HorScrollBarPosition < Image.Width) then
      ScrollBoxCAD.HorzScrollBar.Position := HorScrollBarPosition;
    if (VerScrollBarPosition < Image.Height) then
      ScrollBoxCAD.VertScrollBar.Position := VerScrollBarPosition;
  finally
    fNeedNewCalculator := True;
    fNeedPrepareConditions := True;
    Screen.Cursor := SaveCursor;
  end;
end;

procedure T_FormChainEditor.ButtonDeleteLinkClick(Sender: TObject);
var
  HorScrollBarPosition, VerScrollBarPosition: integer;
  SaveCursor: TCursor;
begin
  if (MessageDlg('The ' + ComboBoxLinks.Text + ' link will be deleted. Are you sure ?', mtWarning, [mbYes, mbNo], 0) = mrYes) then
  begin
    SaveCursor := Screen.Cursor;
    Screen.Cursor := crHourGlass;
    try
      HorScrollBarPosition := ScrollBoxCAD.HorzScrollBar.Position;
      VerScrollBarPosition := ScrollBoxCAD.VertScrollBar.Position;
      ActiveLink := ChainCAD.FindLinkByName(ComboBoxLinks.Text);
      if ActiveLink <> nil then
      begin
        ChainCAD.DeleteLink(ActiveLink);
        SetActiveLink(nil);
        ButtonDeleteLink.Enabled := False;
      end;
      if (HorScrollBarPosition < Image.Width) then
        ScrollBoxCAD.HorzScrollBar.Position := HorScrollBarPosition;
      if (VerScrollBarPosition < Image.Height) then
        ScrollBoxCAD.VertScrollBar.Position := VerScrollBarPosition;
    finally
      Screen.Cursor := SaveCursor;
    end;
  end;
end;

procedure T_FormChainEditor.EditLinkStartEndChange(Sender: TObject);
begin
  if ((Trim(EditLinkStart.Text) <> '') and (Trim(EditLinkFinish.Text) <> '') and (Trim(EditLinkStart.Text) <> Trim(EditLinkFinish.Text))) then
  begin
    if (ChainCAD.FindLinkByName(EditLinkStart.Text + '->' + EditLinkFinish.Text) = nil) then
      ButtonAddLink.Enabled := True
    else
      ButtonAddLink.Enabled := False;
  end
  else
    ButtonAddLink.Enabled := False;
(*
 if ((Trim(EditLinkStart.Text) <> '') and (Trim(EditLinkFinish.Text) <> '') and
  (Trim(EditLinkStart.Text) <> Trim(EditLinkFinish.Text))) then
  ButtonAddLink.Enabled:= True
 else
  ButtonAddLink.Enabled:= False;
*)
end;

procedure T_FormChainEditor.ComboBoxLinksChange(Sender: TObject);
begin
  if (Trim(ComboBoxLinks.Text) <> '') then
  begin
    ButtonDeleteLink.Enabled := True;
    SetActiveLink(ChainCAD.FindLinkByName(ComboBoxLinks.Text));
  end
  else
  begin
    ButtonDeleteLink.Enabled := False;
    SetActiveLink(nil);
  end;
end;

procedure T_FormChainEditor.ButtonLookInOOBClick(Sender: TObject);
begin
  LookInOOB_InfoForm;
end;

procedure T_FormChainEditor.LookInOOB_InfoForm;
var
  I, J, ThZpA_s, ThZpA_sStart, ThZpA_sFinish: integer;
  Name: string;
  ChainState: TChainState;
  aTransitions: TNuclideTransitions;
  IsLink, IsCumYield: boolean;
begin
  if NuclideList.Count < 1 then
    ButtonLoadDBClick(Self);
  IsLink := False;
  if (Pos('State', Self.StringGridStateLink.Cells[1, 0]) > 0) then
  begin
    IsLink := False;
    if ActiveState <> nil then
    begin
      ThZpA_s := StrToThZpA_s(ActiveState.State.Name);
      fTmpLines.Clear;
      if NuclideList <> nil then
        if NuclideList.FindThZpA_s(ThZpA_s, I, J) then
        begin
          // ChainState:= TChainState.CreateFromNuclideState(nil, NuclideList[I].StateList[J]);
          ChainState := TChainState.CreateFromNuclideState(nil, NuclideList[I].StateList[J], fTheDataModule);
          fTmpLines.Assign(ChainState.ValuesStr);
        end;
    end;
  end
  else if (Pos('Link', Self.StringGridStateLink.Cells[1, 0]) > 0) then
  begin
    IsLink := True;
    IsCumYield := True;
    for I := 0 to StringGridStateLink.Cols[1].Count - 1 do
      if (Pos('INDYIELD', UpperCase(StringGridStateLink.Cells[1, I])) > 0) then
      begin
        IsCumYield := False;
        break;
      end;
    fTmpLines.Clear;
    Name := ActiveLink.Link.Name;
    I := Pos('->', Name);
    ThZpA_sStart := StrToThZpA_s(Copy(Name, 1, I - 1));
    ThZpA_sFinish := StrToThZpA_s(Copy(Name, I + 2, Length(Name)));
    aTransitions := AllNuclideTransitions; // aTransitions:= [ntCapture, ntDecay, ntFission, ntThreshold];
(*
  aTransitions:= [];
  if CheckBoxBuildLinks.Checked then begin
   if CheckBoxCapture.Checked then
    aTransitions:= aTransitions+ [ntCapture];
   if CheckBoxDecay.Checked then
    aTransitions:= aTransitions+ [ntDecay];
   if CheckBoxFission.Checked then
    aTransitions:= aTransitions+ [ntFission];
   if CheckBoxThreshold.Checked then
    aTransitions:= aTransitions+ [ntThreshold];
  end;
*)
    if NuclideList <> nil then
      if NuclideList.FindThZpA_s(ThZpA_sStart, I, J) then
        if NuclideList.FindThZpA_s(ThZpA_sFinish, I, J) then
        begin
          NuclideList.GetLink(ThZpA_sStart, ThZpA_sFinish, fTmpLines, aTransitions, fTheDataModule, IsCumYield);
        end;
  end;
  with _FormLookInOOB do
  begin
    _FormLookInOOB.StringGridLook.RowCount := fTmpLines.Count;
    _FormLookInOOB.StringGridLook.FixedRows := 0;
    _FormLookInOOB.StringGridLook.ColCount := 2;
    _FormLookInOOB.StringGridLook.ColWidths[0] := 15;
    _FormLookInOOB.StringGridLook.ColWidths[1] := StringGridLook.Width - 25;
    _FormLookInOOB.StringGridLook.FixedCols := 1;
    if IsLink then
    begin
      for I := 0 to _FormLookInOOB.StringGridLook.RowCount - 1 do
        if I < 2 then
          _FormLookInOOB.StringGridLook.Cells[0, I] := ''
        else
          _FormLookInOOB.StringGridLook.Cells[0, I] := IntToStr(I - 1);
    end
    else
    begin // State ?
      for I := 0 to StringGridLook.RowCount - 1 do
        _FormLookInOOB.StringGridLook.Cells[0, I] := IntToStr(I + 1);
    end;
    _FormLookInOOB.StringGridLook.ColCount := 2;
    _FormLookInOOB.StringGridLook.FixedCols := 1;
    _FormLookInOOB.StringGridLook.FixedRows := 0;
    _FormLookInOOB.Caption := Self.StringGridStateLink.Cells[1, 0] + '          To close press Esc';
    _FormLookInOOB.StringGridLook.Cols[1].Assign(fTmpLines);
    Show;
  end;
end;

procedure T_FormChainEditor.ButtonToChainClick(Sender: TObject);
var
  I, RowsWithValuesCount: integer;
begin
  fTmpLines.Clear;
  with StringGridStateLink do
  begin
    if (Pos('DECAY', UpperCase(StringGridStateLink.Cells[1, 1])) <= 0) then
      StringGridStateLink.Cells[1, 1] := StringGridStateLink.Cells[1, 1] + ' // Decay'; // Lamda 0r T1_2
    if (Pos('THERMAL', UpperCase(StringGridStateLink.Cells[1, 2])) <= 0) then
      StringGridStateLink.Cells[1, 2] := StringGridStateLink.Cells[1, 2] + ' // THERMAL';
    if (Pos('RESONANCE', UpperCase(StringGridStateLink.Cells[1, 3])) <= 0) then
      StringGridStateLink.Cells[1, 3] := StringGridStateLink.Cells[1, 3] + ' // RESONANCE';
    if (Pos('FAST', UpperCase(StringGridStateLink.Cells[1, 4])) <= 0) then
      StringGridStateLink.Cells[1, 4] := StringGridStateLink.Cells[1, 4] + ' // FAST';
    if (Pos('G_FACTOR', UpperCase(StringGridStateLink.Cells[1, 5])) <= 0) then
      StringGridStateLink.Cells[1, 5] := StringGridStateLink.Cells[1, 5] + ' // G_FACTOR';
    RowsWithValuesCount := StringGridStateLink.RowCount - 1;
    for I := StringGridStateLink.RowCount - 1 downto 1 do
      if Trim(StringGridStateLink.Cells[1, I]) = '' then
        Dec(RowsWithValuesCount)
      else
        break;
    if (Pos('State', Self.StringGridStateLink.Cells[1, 0]) > 0) then
    begin
      if ActiveState <> nil then
      begin
        for I := 1 to RowsWithValuesCount do
          fTmpLines.Add(StringGridStateLink.Cells[1, I]);
        ActiveState.State.ValuesStr.Assign(fTmpLines);
        ButtonToChain.Enabled := False;
      end;
    end
    else if (Pos('Link', Self.StringGridStateLink.Cells[1, 0]) > 0) then
      if ActiveLink <> nil then
      begin
        for I := 1 to RowsWithValuesCount do
          fTmpLines.Add(StringGridStateLink.Cells[1, I]);
        ActiveLink.Link.ValuesStr.Assign(fTmpLines);
        ButtonToChain.Enabled := False;
      end;
  end;
  if Assigned(ChainCAD.OnChange) then
    ChainCAD.OnChange(Self);
end;

procedure T_FormChainEditor.ButtonSaveChainClick(Sender: TObject);
var
  OldFilterIndex: integer;
  OldExt: string;
begin
  with SaveDialog do
  begin
    OldFilterIndex := FilterIndex;
    OldExt := DefaultExt;
    DefaultExt := 'chn';
    FilterIndex := 1;
    FileName := '';
    if Execute then
    begin
      if not (ChainCAD.SaveChainToFile(FileName)) then
        MessageDlg('Some problems with save !!!', mtWarning, [mbOK], 0)
      else
        LabelChainFileName.Caption := 'Chain file:' + FileName;
    end;
    DefaultExt := OldExt;
    FilterIndex := OldFilterIndex;
    LabelChainFileName.Caption := 'Chain file:' + FileName;
  end;
end;

procedure T_FormChainEditor.ButtonLoadChainClick(Sender: TObject);
var
  I, OldFilterIndex: integer;
  OldExt, SaveCaption: string;
  OnCadChangeSave: TNotifyEvent;
  SaveCursor: TCursor;
begin
  with OpenDialog do
  begin
    OldFilterIndex := FilterIndex;
    OldExt := DefaultExt;
    DefaultExt := 'chn';
    FilterIndex := 1;
    FileName := '';
    try
      if Execute then
      begin
        SaveCaption := Self.Caption;
        Self.Caption := 'Wait.Chain loading ' + FileName + '  ...';
        SaveCursor := Screen.Cursor;
        Screen.Cursor := crHourGlass;
        ScrollBoxCAD.Enabled := False;
        Image.Visible := False;
        if Assigned(ChainCAD.OnChange) then
        begin
          OnCadChangeSave := ChainCAD.OnChange;
          ChainCAD.OnChange := nil;
        end
        else
          OnCadChangeSave := nil;
        Application.ProcessMessages;
        try
          ButtonToChain.Enabled := False; // To prevent 'Save edited?' question
          for I := ChainCAD.States.Count - 1 downto 0 do
            ChainCAD.DeleteState(ChainCAD.States[I]);
          for I := Chain.Links.Count - 1 downto 0 do
            Chain.DeleteLink(Chain.Links[I]);
          if not (ChainCAD.LoadChainFromFile(FileName)) then
            MessageDlg('Some problems for load !!!' + #10#13 + ' FileName = ' + FileName, mtWarning, [mbOK], 0)
          else
            LabelChainFileName.Caption := 'Chain file:' + FileName;
          SetActiveState(nil);
          SetActiveLink(nil);
        finally
          fNeedPrepareConditions := True;
          SetImageSize(ChainCAD.Width, ChainCAD.Height);
          Image.Visible := True;
          if Assigned(OnCadChangeSave) then
          begin
            ChainCAD.OnChange := OnCadChangeSave;
            ChainCAD.OnChange(Self);
          end;
          ScrollBoxCAD.Enabled := True;
          Screen.Cursor := SaveCursor;
          Self.Caption := SaveCaption;
        end;
      end;
    finally
      DefaultExt := OldExt;
      FilterIndex := OldFilterIndex;
      Self.FocusControl(ButtonLoadChain);
    end;
  end;
end;

procedure T_FormChainEditor.EditStateKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if Trim(EditState.Text) = '' then
    ButtonAddState.Enabled := False
  else
    ButtonAddState.Enabled := True;
  if Key = VK_RETURN then
    ButtonAddStateClick(Self);
end;

procedure T_FormChainEditor.StringGridStateLinkKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    with StringGridStateLink do
      StringGridStateLink.Cells[StringGridStateLink.Col, StringGridStateLink.Row] := fSaveStr;
  end
  // Ctrl+Ins or Ctrl+C
  else if (not (ssAlt in Shift) and (ssCtrl in Shift) and (Key = VK_INSERT) or (Key = Ord('C'))) then
  begin
    CopyToClipboardFromStringGrid(StringGridStateLink);
  end;
end;

procedure T_FormChainEditor.StringGridStateLinkSelectCell(Sender: TObject; ACol, ARow: integer; var CanSelect: boolean);
begin
  fSaveStr := StringGridStateLink.Cells[ACol, ARow];
end;

procedure T_FormChainEditor.StringGridStateLinkUserChangedCell(Sender: TObject; ACol, ARow: integer; const Value: string);
var
  aStr, aUpperValue: shortstring;
  aFloat: double;
  PrepareToParseResult: boolean;
begin
  aUpperValue := UpperCase(Value);
  if ((ARow > 1) and (ARow < 5)) or ((Pos('SIGMA', aUpperValue) > 0) or (Pos('RI', aUpperValue) > 0) or
    (Pos('THERM', aUpperValue) > 0) or (Pos('RESON', aUpperValue) > 0) or (Pos('FISS', aUpperValue) > 0) or (Pos('FAST', aUpperValue) > 0)) then
  begin // must be barns
    PrepareToParseResult := PrepareToParse(aUpperValue, aStr);
    if not (PrepareToParseResult) then
    begin
      StringGridStateLink.SetFocus;
      raise Exception.Create('Cannot parse string "' + Trim(Value) + '" ' + #10#13 + '  Row = ' + IntToStr(ARow) +
        ' (Name = ' + Trim(StringGridStateLink.Cells[0, ARow]) + ')');
      Exit;
    end;
    try
      aFloat := GetFormulaValue(aStr);
      if (aFloat > 1E-10) then // 1e14 barn
        MessageDlg('Line ' + IntToStr(ARow) + ' (Name = ' + Trim(StringGridStateLink.Cells[0, ARow]) + ')' + ' is "' +
          Value + '"' + #10#13 + ' equal to ' + Format('%-7.5g', [aFloat]) + #10#13 + 'May be barn symbol (b) was missing!', mtWarning, [mbOK], 0);
    except
      MessageDlg('Line ' + IntToStr(ARow) + ' (Name = ' + Trim(StringGridStateLink.Cells[0, ARow]) + ')' + ' is "' +
        Value + '"' + #10#13 + #10#13 + 'Cannot parse it !!!', mtError, [mbOK], 0);
    end;
  end
  else if (ARow = 5) then
  begin // must be g_factor
    PrepareToParseResult := PrepareToParse(aUpperValue, aStr);
    if not (PrepareToParseResult) then
    begin
      StringGridStateLink.SetFocus;
      raise Exception.Create('Cannot parse string "' + Trim(Value) + '" ' + #10#13 + '  Row = ' + IntToStr(ARow) +
        ' (Name = ' + Trim(StringGridStateLink.Cells[0, ARow]) + ')');
      Exit;
    end;
    try
      aFloat := GetFormulaValue(aStr);
      if ((aFloat < 0.5) or (aFloat > 1.5)) then // 1e14 barn
        MessageDlg('Line ' + IntToStr(ARow) + ' (Name = ' + Trim(StringGridStateLink.Cells[0, ARow]) + ')' + ' is "' +
          Value + '"' + #10#13 + ' equal to ' + Format('%-7.5g', [aFloat]) + #10#13 + 'Too doubtful!', mtWarning, [mbOK], 0);
    except
      MessageDlg('Line ' + IntToStr(ARow) + ' (Name = ' + Trim(StringGridStateLink.Cells[0, ARow]) + ')' + ' is "' +
        Value + '"' + #10#13 + #10#13 + 'Cannot parse it !!!', mtError, [mbOK], 0);
    end;
  end;
  ButtonToChain.Enabled := True;
end;

procedure T_FormChainEditor.ChaingAllCumYieldsForDecayChildsWithParentsOnIndYields;
var
  I, J, K: integer;
  IsProduct: boolean;
  ParentList: TLongIntList;
  SaveCursor: TCursor;
  OnCadChangeSave: TNotifyEvent;
begin
  ParentList := TLongIntList.Create;
  SaveCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  OnCadChangeSave := ChainCAD.OnChange;
  try
    for I := 0 to ChainCAD.States.Count - 1 do
    begin
      IsProduct := False;
      for K := 0 to ChainCAD.Links.Count - 1 do
      begin
        if (ChainCAD.Links[K].Finish = ChainCAD.States[I]) then
          // qq
          for J := 0 to ChainCAD.Links[K].Link.ValuesStr.Count - 1 do
            if (Pos('YIELD', UpperCase(ChainCAD.Links[K].Link.ValuesStr[J])) > 0) then
            begin
              IsProduct := True;
              break;
              if IsProduct then
                break;
            end;
      end;
      if IsProduct then
      begin
        Chain.FindDecayParentsWithNonZeroFissionYields(ChainCAD.States[I].State.ThZpA_s, ParentList, NuclideList);
        if ParentList.Count > 0 then
        begin
          ActiveState := ChainCAD.States[I];
          ItemUseIndYieldsForStateClick(Self);
        end;
      end;
    end;
  finally
    ParentList.Free;
    if ActiveLink <> nil then
      SetActiveLink(ActiveLink);
    ChainCAD.OnChange := OnCadChangeSave;
    Screen.Cursor := SaveCursor;
  end;
end;

procedure T_FormChainEditor.ChaingAllIndYieldsForDecayChildsWithOutParentsOnCumYields;
var
  I, J, K: integer;
  IsProduct: boolean;
  ParentList: TLongIntList;
  SaveCursor: TCursor;
  OnCadChangeSave: TNotifyEvent;
begin
  ParentList := TLongIntList.Create;
  SaveCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  OnCadChangeSave := ChainCAD.OnChange;
  try
    for I := 0 to ChainCAD.States.Count - 1 do
    begin
      IsProduct := False;
      for K := 0 to ChainCAD.Links.Count - 1 do
      begin
        if (ChainCAD.Links[K].Finish = ChainCAD.States[I]) then
          // qq
          for J := 0 to ChainCAD.Links[K].Link.ValuesStr.Count - 1 do
            if (Pos('YIELD', UpperCase(ChainCAD.Links[K].Link.ValuesStr[J])) > 0) then
            begin
              IsProduct := True;
              break;
              if IsProduct then
                break;
            end;
      end;
      if IsProduct then
      begin
        Chain.FindDecayParentsWithNonZeroFissionYields(ChainCAD.States[I].State.ThZpA_s, ParentList, NuclideList);
        if ParentList.Count = 0 then
        begin
          ActiveState := ChainCAD.States[I];
          ItemUseCumYieldsForStateClick(Self);
        end;
      end;
    end;
  finally
    ParentList.Free;
    ChainCAD.OnChange := OnCadChangeSave;
    Screen.Cursor := SaveCursor;
  end;
end;

// Popup Menu

procedure T_FormChainEditor.PopupMenuCADPopup(Sender: TObject);
begin
  if (ActiveState <> nil) then
  begin
    ItemUseIndYieldsForState.Caption := 'Use &IndYields for ' + ActiveState.State.Name;
    ItemUseCumYieldsForState.Caption := 'Use &CumYields for ' + ActiveState.State.Name;
    if ActiveState.State.ThZpA_s < 870000 then
    begin // fission product
      ItemUseIndYieldsForState.Enabled := True;
      ItemUseCumYieldsForState.Enabled := True;
    end
    else
    begin
      ItemUseIndYieldsForState.Enabled := False;
      ItemUseCumYieldsForState.Enabled := False;
    end;
    ItemAddStateChilds.Caption := 'Add ' + ActiveState.State.Name + ' &descendants';
    ItemAddStateChilds.Enabled := True;
  end
  else
  begin
    ItemUseIndYieldsForState.Caption := 'Use &IndYields';
    ItemUseIndYieldsForState.Enabled := False;
    ItemUseCumYieldsForState.Caption := 'Use &CumYields';
    ItemUseCumYieldsForState.Enabled := False;
    ItemAddStateChilds.Caption := 'Add descendants';
    ItemAddStateChilds.Enabled := False;
  end;
  ItemSaveCADimage.Enabled := False;
  if (ChainCAD <> nil) then
    if ChainCAD.States.Count > 0 then
      ItemSaveCADimage.Enabled := True;
end;

procedure T_FormChainEditor.ItemShowHalfLifesClick(Sender: TObject);
begin
  ItemShowHalfLifes.Checked := not (ItemShowHalfLifes.Checked);
  ChainCAD.ShowHalfLife := ItemShowHalfLifes.Checked;
  RepaintCAD;
end;

procedure T_FormChainEditor.ItemHidefissionlinksClick(Sender: TObject);
begin
  ItemHidefissionlinks.Checked := not (ItemHidefissionlinks.Checked);
  ChainCAD.DrawFissionLinks := not (ItemHidefissionlinks.Checked);
  RepaintCAD;
end;

procedure T_FormChainEditor.ItemUseIndYieldsForStateClick(Sender: TObject);
var
  NoInChain, ValueStrNo, TmpLinesStrNo, I: integer;
  GetLinkResult: DWORD;
  aTransitions: TNuclideTransitions;
begin
  if NuclideList.Count < 1 then
  begin
    MessageDlg('Nuclides were NOT loaded ! Yields will not be initialized !' + #13 + #10 + 'Use button "LOAD DB"!', mtWarning,
      [mbOK], 0);
    Exit;
  end;
  if (ActiveState <> nil) then
  begin
    NoInChain := Chain.FindState(ActiveState.State.ThZpA_s);
    if (NoInChain >= 0) then
    begin
      aTransitions := [ntFission];
      if (NoInChain >= 0) then
        for I := 0 to Chain.Links.Count - 1 do
          if (Chain.Links[I].FinishThZpA_s = ActiveState.State.ThZpA_s) then
          begin
            fTmpLines.Clear;
            GetLinkResult := NuclideList.GetLink(Chain.Links[I].StartThZpA_s, Chain.Links[I].FinishThZpA_s, fTmpLines,
              aTransitions, fTheDataModule, False);
            if (((sltThermal and GetLinkResult) > 0) or ((sltResonance and GetLinkResult) > 0) or ((sltFast and GetLinkResult) > 0)) then
            begin
              // THERMAL
              for TmpLinesStrNo := 0 to fTmpLines.Count - 1 do
                if (Pos('THERMAL', UpperCase(fTmpLines[TmpLinesStrNo])) > 0) then
                  for ValueStrNo := 0 to Chain.Links[I].ValuesStr.Count - 1 do
                    if (Pos('THERMAL', UpperCase(Chain.Links[I].ValuesStr[ValueStrNo])) > 0) then
                      Chain.Links[I].ValuesStr[ValueStrNo] := fTmpLines[TmpLinesStrNo];
              // RESONANCE
              for TmpLinesStrNo := 0 to fTmpLines.Count - 1 do
                if (Pos('RESONANCE', UpperCase(fTmpLines[TmpLinesStrNo])) > 0) then
                  for ValueStrNo := 0 to Chain.Links[I].ValuesStr.Count - 1 do
                    if (Pos('RESONANCE', UpperCase(Chain.Links[I].ValuesStr[ValueStrNo])) > 0) then
                      Chain.Links[I].ValuesStr[ValueStrNo] := fTmpLines[TmpLinesStrNo];
              // FAST
              for TmpLinesStrNo := 0 to fTmpLines.Count - 1 do
                if (Pos('FAST', UpperCase(fTmpLines[TmpLinesStrNo])) > 0) then
                  for ValueStrNo := 0 to Chain.Links[I].ValuesStr.Count - 1 do
                    if (Pos('FAST', UpperCase(Chain.Links[I].ValuesStr[ValueStrNo])) > 0) then
                      Chain.Links[I].ValuesStr[ValueStrNo] := fTmpLines[TmpLinesStrNo];
            end;
          end;
    end;
    ActiveState := nil;
    ActiveState := ChainCAD.States[NoInChain];
  end;
end;

// Chain Page END

// Conditions Page start
// Conditions - Uslovija obluchenija i rascheta

procedure T_FormChainEditor.RadioGroupCellTypeClick(Sender: TObject);
begin
  // if (Pos('Simple', RadioGroupCellType.Items[RadioGroupCellType.ItemIndex]) > 0) then
  if (Pos('No', RadioGroupCellType.Items[RadioGroupCellType.ItemIndex]) > 0) then
  begin
    LabelSkin_V.Visible := False;
    EditSkin_V.Visible := False;
    //  LabelOM_V.Visible:= False;
    //  EditOM_V.Visible:= False;
  end
  else
  begin
    LabelSkin_V.Visible := True;
    EditSkin_V.Visible := True;
    //  LabelOM_V.Visible:= True;
    //  EditOM_V.Visible:= True;
  end;
end;

function T_FormChainEditor.StringGridRA_RsGetCellChecked(const ACol, ARow: integer): boolean;
begin
  Result := False;
  if ((ACol < StringGridRA_Rs.ColCount) and (ARow < StringGridRA_Rs.RowCount)) then
  begin
    if Pos('Y', UpperCase(Trim(StringGridRA_Rs.Cells[ACol, ARow]))) > 0 then
      Result := True
    else
      Result := False;
  end;
end;

procedure T_FormChainEditor.StringGridRA_RsDblClick(Sender: TObject);
begin
  FillRA_RsInfoForm;
end;

procedure T_FormChainEditor.FillRA_RsInfoForm;
var
  I, aThZpA_s: integer;
  aResonanceInfoList: TResonanceInfoList;
  aResonanceInfo: TResonanceInfo;
  SaveCursor: TCursor;
begin
  SaveCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    if (fStringGridRA_RsStateName <> '') then
    begin
      aThZpA_s := StrToThZpA_s(fStringGridRA_RsStateName);
      if (Resonances4ThZpA_sLoaded(aThZpA_s) > 0) then
      begin
        aResonanceInfoList := TResonanceInfoList.Create;
        with _FormLookInOOB do
          try
            FillResonancesInfoList(aThZpA_s, aResonanceInfoList);
            _FormLookInOOB.Caption := fStringGridRA_RsStateName + ' resonances info.' + '          To close press Esc';
            _FormLookInOOB.StringGridLook.RowCount := aResonanceInfoList.Count + 1;
            _FormLookInOOB.StringGridLook.ColCount := 14;
            _FormLookInOOB.StringGridLook.FixedRows := 1;
            _FormLookInOOB.StringGridLook.FixedCols := 0;
            for I := 0 to _FormLookInOOB.StringGridLook.ColCount - 1 do
              _FormLookInOOB.StringGridLook.ColWidths[I] := _FormLookInOOB.StringGridLook.Width div (_FormLookInOOB.StringGridLook.ColCount + 1);
            fTmpLines.Clear;
            fTmpLines.Add('Res.type');
            fTmpLines.Add('E0, eV');
            fTmpLines.Add('A avg.');
            fTmpLines.Add('2*I');
            fTmpLines.Add('2*J');
            fTmpLines.Add('Xs,b');
            fTmpLines.Add('l');
            fTmpLines.Add('Edown');
            fTmpLines.Add('Eup');
            fTmpLines.Add('GT');
            fTmpLines.Add('GN');
            fTmpLines.Add('GG');
            fTmpLines.Add('GF');
            fTmpLines.Add('GFB');
            _FormLookInOOB.StringGridLook.Rows[0].Assign(fTmpLines);
            for I := 0 to aResonanceInfoList.Count - 1 do
            begin
              fTmpLines.Clear;
              aResonanceInfo := aResonanceInfoList[I];
              fTmpLines.Add(ResonanceTypeToStr(aResonanceInfo.ResonanceType));
              fTmpLines.Add(Format('%-7.5g', [aResonanceInfo.E0]));
              fTmpLines.Add(Format('%-7.5g', [aResonanceInfo.A]));
              fTmpLines.Add(IntToStr(aResonanceInfo.TwoI));
              fTmpLines.Add(IntToStr(aResonanceInfo.TwoJ));
              fTmpLines.Add(Format('%-7.5g', [aResonanceInfo.SigmaS]));
              fTmpLines.Add(IntToStr(aResonanceInfo.L));
              fTmpLines.Add(Format('%-7.5g', [aResonanceInfo.Edown]));
              fTmpLines.Add(Format('%-7.5g', [aResonanceInfo.Eup]));
              fTmpLines.Add(Format('%-7.5g', [aResonanceInfo.GammaT]));
              fTmpLines.Add(Format('%-7.5g', [aResonanceInfo.GammaN]));
              fTmpLines.Add(Format('%-7.5g', [aResonanceInfo.GammaG]));
              fTmpLines.Add(Format('%-7.5g', [aResonanceInfo.GammaF]));
              if aResonanceInfo.GammaFB > 0 then
                fTmpLines.Add(Format('%-7.5g', [aResonanceInfo.GammaFB]));
              _FormLookInOOB.StringGridLook.Rows[I + 1].Assign(fTmpLines);
            end;
            _FormLookInOOB.Show;
            Sleep(GetDoubleClickTime);
            // TODO deleted for linux
            //      EmptyMouseQueue;
            _FormLookInOOB.BringToFront;
            SendMessage(_FormLookInOOB.Handle, WM_LBUTTONDOWN, 0, 0);
            SendMessage(_FormLookInOOB.Handle, WM_LBUTTONUP, 0, 0);
            Application.ProcessMessages;
          finally
            aResonanceInfoList.Free;
            Screen.Cursor := SaveCursor;
            Application.ProcessMessages;
          end;
      end;
    end;
  finally
    Screen.Cursor := SaveCursor;
    Application.ProcessMessages;
  end;
end;

procedure T_FormChainEditor.StringGridRA_RsSelectCell(Sender: TObject; ACol, ARow: integer; var CanSelect: boolean);
begin
  if ARow > 0 then
    fStringGridRA_RsStateName := StringGridRA_Rs.Cells[0, ARow]
  else
    fStringGridRA_RsStateName := '';
end;

procedure T_FormChainEditor.StringGridRA_RsSetCellChecked(const ACol, ARow: integer; const Checked: boolean);
begin
  if ((ACol < StringGridRA_Rs.ColCount) and (ARow < StringGridRA_Rs.RowCount)) then
  begin
    if Checked = True then
      StringGridRA_Rs.Cells[ACol, ARow] := 'Y'
    else
      StringGridRA_Rs.Cells[ACol, ARow] := 'N';
  end;
end;

procedure T_FormChainEditor.StringGridRA_RsSetEditText(Sender: TObject; ACol, ARow: integer; const Value: string);
begin
  fNeedToBuildSSK_TableList := True;
end;

(*
procedure T_FormChainEditor.StringGridRA_RsCellValidate(Sender: TObject;
 ACol, ARow: Integer; const OldValue: string; var NewValue: string;
 var Valid: Boolean);
begin
 fNeedToBuildSSK_TableList:= True;
end;
*)
procedure T_FormChainEditor.ButtonLoadInitialsClick(Sender: TObject);
var
  OldFilterIndex: integer;
  OldExt: string;
begin
  with OpenDialog do
  begin
    OldFilterIndex := FilterIndex;
    OldExt := DefaultExt;
    DefaultExt := 'ivl';
    FilterIndex := 6;
    FileName := '';
    if Execute then
    begin
      try
        LoadInitials(FileName);
      except
        ShowMessage('Initial values load error');
      end;
    end;
    DefaultExt := OldExt;
    FilterIndex := OldFilterIndex;
  end;
end;

procedure T_FormChainEditor.LoadInitials(const FileName: string);
var
  FileStream: TFileStream;
  GridStream: TMemoryStream;
  Buffer: PChar;
  SavePosition, Count4Grid, Int: longint;
  Txt: ansistring; // string;
begin
  New(Buffer);
  GridStream := TMemoryStream.Create;
  FileStream := TFileStream.Create(FileName, fmOpenRead);
  try
    try
      FileStream.ReadBuffer(longint(Int), SizeOf(longint));
      if Int = 1 then
      begin
        RadioButtonNuclei.Checked := True;
        RadioButtonMasses.Checked := False;
      end
      else
      begin
        RadioButtonMasses.Checked := True;
        RadioButtonNuclei.Checked := False;
      end;
      RadioButtonMassesNucleiClick(Self);
      Txt := '';
      repeat
        FileStream.ReadBuffer(Buffer^, 1);
        // QQ    Txt:= Txt + Buffer^;
        Txt := Txt + ansichar(Buffer^);
      until ((Buffer^ in [#0]) or (FileStream.Position + 1 >= FileStream.Size));
      EditTotalMass.Text := Trim(Txt);
      repeat
        FileStream.ReadBuffer(Buffer^, 1);
      until ((Buffer^ in [BegiEndSectionChar]) or (FileStream.Position + 1 >= FileStream.Size));
      if (Buffer^ in [BegiEndSectionChar]) then
      begin
        SavePosition := FileStream.Position;
        Count4Grid := 0;
        repeat
          Inc(Count4Grid);
          FileStream.ReadBuffer(Buffer^, 1);
        until ((Buffer^ in [BegiEndSectionChar]) or (FileStream.Position + 1 >= FileStream.Size));
        FileStream.Position := SavePosition;
        GridStream.Clear;
        GridStream.CopyFrom(FileStream, Count4Grid - 1);
        GridStream.Position := 0;
        if not (LoadStringGridFromStream(StringGridMasses, GridStream, False)) then
        begin
          MessageDlg('Load initials stream error 1 !', mtWarning, [mbOK], 0);
          Exit;
        end;
      end
      else
        Exit;
      repeat
        FileStream.ReadBuffer(Buffer^, 1);
      until ((Buffer^ in [BegiEndSectionChar]) or (FileStream.Position + 1 >= FileStream.Size));
      if (Buffer^ in [BegiEndSectionChar]) then
      begin
        SavePosition := FileStream.Position;
        Count4Grid := 0;
        repeat
          Inc(Count4Grid);
          FileStream.ReadBuffer(Buffer^, 1);
        until ((Buffer^ in [BegiEndSectionChar]) or (FileStream.Position + 1 >= FileStream.Size));
        FileStream.Position := SavePosition;
        GridStream.Clear;
        GridStream.CopyFrom(FileStream, Count4Grid - 1);
        GridStream.Position := 0;
        if not (LoadStringGridFromStream(TStringGrid(StringGridInitialValues), GridStream, False)) then
        begin
          MessageDlg('Load initials stream error 2 !', mtWarning, [mbOK], 0);
          Exit;
        end;
        // DebugI:= 0;
        // CheckBoxPercent added
        CheckBoxPercent.Checked := False;
        if (FileStream.Position + SizeOf(longint) <= FileStream.Size) then
        begin
          if (Buffer^ in [BegiEndSectionChar]) then
            FileStream.Position := FileStream.Position + 1;
          FileStream.ReadBuffer(longint(Int), SizeOf(longint));
          if Int > 0 then
            CheckBoxPercent.Checked := True
          else
            CheckBoxPercent.Checked := False;
        end;
      end
      else
        Exit;
    finally
      FileStream.Free;
      GridStream.Free;
      Dispose(Buffer);
    end;
    GroupBoxInitialValues.Caption := 'Initial &Values                     |   Tolerances   :  ' + ExtractFileName(FileName) + '   ';
    fInitialValuesFileName := FileName;
  except
    MessageDlg('Load initials exception !', mtWarning, [mbOK], 0);
    fInitialValuesFileName := '';
    Exit;
  end;
end;

procedure T_FormChainEditor.ButtonSaveInitialsClick(Sender: TObject);
var
  FileStream: TFileStream;
  OldFilterIndex: integer;
  OldExt, Txt: ansistring;
  Int: longint;
begin
  with SaveDialog do
  begin
    OldFilterIndex := FilterIndex;
    OldExt := DefaultExt;
    DefaultExt := 'ivl';
    FilterIndex := 6;
    if (fInitialValuesFileName <> '') then
      FileName := ExtractFileName(fInitialValuesFileName)
    else
      FileName := '';
    if Execute then
    begin
      FileStream := TFileStream.Create(FileName, fmCreate);
      try
        if RadioButtonNuclei.Checked then
          Int := 1
        else
          Int := 0;
        FileStream.WriteBuffer(longint(Int), SizeOf(longint));
        Txt := EditTotalMass.Text;
        FileStream.Write(pointer(Txt)^, Length(Txt));
        Txt := #0;
        FileStream.Write(pointer(Txt)^, 1);
        Txt := BegiEndSectionChar;
        FileStream.Write(pointer(Txt)^, 1);
        SaveStringGridToStream(StringGridMasses, FileStream);
        Txt := BegiEndSectionChar;
        FileStream.Write(pointer(Txt)^, 1);
        SaveStringGridToStream(TStringGrid(StringGridInitialValues), FileStream);
        Txt := BegiEndSectionChar;
        FileStream.Write(pointer(Txt)^, 1);
        // CheckBoxPercent added
        if CheckBoxPercent.Checked then
          Int := 1
        else
          Int := 0;
        FileStream.WriteBuffer(longint(Int), SizeOf(longint));
      finally
        FileStream.Free;
      end;
      fInitialValuesFileName := FileName;
      GroupBoxInitialValues.Caption := 'Initial &Values                     |   Tolerances   :  ' + ExtractFileName(FileName) + '   ';
    end;
    DefaultExt := OldExt;
    FilterIndex := OldFilterIndex;
  end;
end;

procedure T_FormChainEditor.ButtonSaveMMClick(Sender: TObject);
var
  OldIndex: integer;
  OldExt: string;
begin
  with SaveDialog do
  begin
    OldIndex := FilterIndex;
    OldExt := DefaultExt;
    FilterIndex := 3;
    DefaultExt := 'mm';
    FileName := '';
    if Execute then
    begin
      StringGridMM.FileName := FileName;
      try
        StringGridMM.FileStrings;
      except
        MessageDlg('Error in save (FileName= ' + FileName + ')', mtWarning, [mbOK], 0);
      end;
    end;
    fMmFileName := FileName;
    GroupBoxMM.Caption := 'Mi&xed moderators ' + ExtractFileName(fMmFileName);
    FilterIndex := OldIndex;
    DefaultExt := OldExt;
  end;
end;

procedure T_FormChainEditor.ButtonSaveOMClick(Sender: TObject);
var
  OldIndex: integer;
  OldExt: string;
begin
  with SaveDialog do
  begin
    OldIndex := FilterIndex;
    OldExt := DefaultExt;
    FilterIndex := 4;
    DefaultExt := 'om';
    FileName := '';
    if Execute then
    begin
      StringGridOM.FileName := FileName;
      try
        StringGridOM.FileStrings;
      except
        MessageDlg('Error in save (Filename = ' + FileName + ')', mtWarning, [mbOK], 0);
      end;
    end;
    FilterIndex := OldIndex;
    DefaultExt := OldExt;
    fOmFileName := FileName;
    GroupBoxOM.Caption := 'Ou&ter Moderator ' + ExtractFileName(fOmFileName);
  end;
end;

procedure T_FormChainEditor.LoadMM(const FileName: string);
begin
  if FileExists(FileName) then
  begin
    StringGridMM.RowCount := 2;
    StringGridMM.FileName := FileName;
    try
      StringGridMM.RetrieveStrings;
    except
      on EConvertError do
        MessageDlg('EConvertError' + #13 + #10 + 'Conversion failed.' + #13 + #10 + 'Mixed moderators not loaded.', mtWarning, [mbOK], 0);
      on ETooSmallGrid do
      begin
        StringGridMM.RowCount := StringGridMM.RowCount + 1;
        StringGridMM.FileName := FileName;
        try
          StringGridMM.RetrieveStrings;
        except
          on EConvertError do
            MessageDlg('EConvertError' + #13 + #10 + 'Conversion failed.' + #13 + #10 + 'Mixed moderators not loaded.', mtWarning, [mbOK], 0);
          on ETooSmallGrid do
          begin
            StringGridMM.RowCount := StringGridMM.RowCount + 1;
            StringGridMM.FileName := FileName;
            try
              StringGridMM.RetrieveStrings;
            except
              on EConvertError do
                MessageDlg('EConvertError' + #13 + #10 + 'Conversion failed.' + #13 + #10 + 'Mixed moderators not loaded.', mtWarning, [mbOK], 0);
              on ETooSmallGrid do
              begin
                StringGridMM.RowCount := StringGridMM.RowCount + 1;
                StringGridMM.FileName := FileName;
                StringGridMM.RetrieveStrings;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure T_FormChainEditor.ButtonLoadMMClick(Sender: TObject);
var
  OldIndex: integer;
  OldExt: string;
begin
  try
    with OpenDialog do
    begin
      OldIndex := FilterIndex;
      OldExt := DefaultExt;
      FilterIndex := 3;
      DefaultExt := 'mm';
      FileName := '';
      if Execute then
      begin
        if FileExists(FileName) then
        begin
          LoadMM(FileName);
        end
        else
          MessageDlg('File ' + #39 + FileName + #39 + ' not found.', mtWarning, [mbOK], 0);
      end;
      fMmFileName := FileName;
      GroupBoxMM.Caption := 'Mi&xed moderators ' + ExtractFileName(fMmFileName);
      FilterIndex := OldIndex;
      DefaultExt := OldExt;
    end;
  except
    fMmFileName := '';
  end;
end;

procedure T_FormChainEditor.LoadOM(const FileName: string);
begin
  if FileExists(FileName) then
  begin
    StringGridOM.FileName := FileName;
    try
      StringGridOM.RetrieveStrings;
      GroupBoxOM.Caption := 'Ou&ter Moderator ' + ExtractFileName(fOmFileName);
    except
      on EConvertError do
      begin
        MessageDlg('EConvertError' + #13 + #10 + 'Conversion failed.' + #13 + #10 + 'Outer moderator not loaded.', mtWarning, [mbOK], 0);
        fOmFileName := '';
      end;
    end;
  end;
end;

procedure T_FormChainEditor.ButtonLoadOMClick(Sender: TObject);
var
  OldIndex: integer;
  OldExt: string;
begin
  try
    with OpenDialog do
    begin
      OldIndex := FilterIndex;
      OldExt := DefaultExt;
      FilterIndex := 4;
      DefaultExt := 'om';
      FileName := '';
      if Execute then
      begin
        if FileExists(FileName) then
        begin
          LoadOM(FileName);
        end
        else
          MessageDlg('File ' + #39 + FileName + #39 + ' not found.', mtWarning, [mbOK], 0);
      end;
      fOmFileName := FileName;
      GroupBoxOM.Caption := 'Ou&ter Moderator ' + ExtractFileName(fOmFileName);
      FilterIndex := OldIndex;
      DefaultExt := OldExt;
    end;

  except
    fOmFileName := '';
  end;
end;

procedure T_FormChainEditor.ButtonRA_FillDefaultsClick(Sender: TObject);
var
  I: integer;
begin
  if (StringGridRA_Rs.Cells[0, 1] <> '') then
  begin
    fTmpLines.Clear;
    fTmpLines.Add('Consider');
    for I := 1 to StringGridRA_Rs.RowCount - 1 do
      // StringGridRA_Rs.CellChecked[1, I]:= True;
      StringGridRA_Rs.Cells[1, I] := 'Y';
    fTmpLines.Clear;
    fTmpLines.Add('N min');
    for I := 1 to StringGridRA_Rs.RowCount - 1 do
      fTmpLines.Add('1.0e7'); // ('1.0e13')
    StringGridRA_Rs.Cols[2].Assign(fTmpLines);
    fTmpLines.Clear;
    fTmpLines.Add('N max');
    for I := 1 to StringGridRA_Rs.RowCount - 1 do
      fTmpLines.Add('1.0e24');
    StringGridRA_Rs.Cols[3].Assign(fTmpLines);
    fTmpLines.Clear;
    fTmpLines.Add('Points');
    for I := 1 to StringGridRA_Rs.RowCount - 1 do
      fTmpLines.Add('30'); // ('13')
    StringGridRA_Rs.Cols[4].Assign(fTmpLines);
    fNeedToBuildSSK_TableList := True;
  end;
end;

procedure T_FormChainEditor.ButtonLoadResTableClick(Sender: TObject);
var
  OldIndex: integer;
  OldExt: string;
begin
  with OpenDialog do
  begin
    OldIndex := FilterIndex;
    OldExt := DefaultExt;
    FilterIndex := 5;
    DefaultExt := 'rtb';
    FileName := '';
    if Execute then
      try
        begin
          LoadResTableFromFile(FileName);
          fRtbFileName := FileName;
        end;
      except
        fRtbFileName := '';
      end;
    FilterIndex := OldIndex;
    DefaultExt := OldExt;
  end;
end;

procedure T_FormChainEditor.LoadResTableFromFile(const FileName: string);
begin
  try
    if SSK_TableList <> nil then
      SSK_TableList.Free;
    SSK_TableList := TSSK_TableList.Create;
    if FileExists(FileName) then
    begin
      SSK_TableList.Clear;
      if SSK_TableList.LoadFromFile(FileName) then
      begin
        fNeedToBuildSSK_TableList := False;
        GroupBoxSSKinitial.Caption := '&Self-Shielding (data loaded from file ' + ExtractFileName(FileName) + ')';
        CheckBoxSSKconsider.Checked := True;
      end
      else
      begin
        MessageDlg('Some problems while SSK_TableList.LoadFromFile' + #13 + #10 + 'SSK_TableList.LoadFromFile failed' +
          #13 + #10 + 'File ' + #39 + FileName + #39, mtWarning, [mbOK], 0);
      end;
      fChainCalculated := False;
    end
    else
      MessageDlg('File ' + #39 + FileName + #39 + ' not found.', mtWarning, [mbOK], 0);
  except
    MessageDlg('Some problems (exception) while LoadResTableFromFile' + #13 + #10 + 'File ' + #39 + FileName + #39, mtWarning, [mbOK], 0);
  end;
end;

procedure T_FormChainEditor.ButtonSaveResTableClick(Sender: TObject);
var
  OldIndex: integer;
  OldExt: string;
begin
  if (fNeedToBuildSSK_TableList) then
    if (MessageDlg('Do you want to build new  SSK tables ?', mtWarning, [mbOK, mbNo], 0) = mrYes) then
      ButtonBuildResTableClick(Self);
  if (SSK_TableList <> nil) then
    if (SSK_TableList.Count > 0) then
      with SaveDialog do
      begin
        OldIndex := FilterIndex;
        OldExt := DefaultExt;
        FilterIndex := 5;
        DefaultExt := 'rtb';
        FileName := '';
        if Execute then
        begin
          SSK_TableList.SaveToFile(FileName);
        end;
        FilterIndex := OldIndex;
        DefaultExt := OldExt;
      end
    else
      MessageDlg('SSK_Table=nil orSSK_Table.Count=0 !', mtWarning, [mbOK], 0);
end;

procedure T_FormChainEditor.StringGridMMKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if ((Key = VK_INSERT) and (ssCtrl in Shift) and (ssShift in Shift)) then
    StringGridMM.RowCount := StringGridMM.RowCount + 1
  else if ((Key = VK_DELETE) and (ssCtrl in Shift) and (ssShift in Shift)) then
    if (StringGridMM.RowCount > 2) then
      StringGridMM.RowCount := StringGridMM.RowCount - 1;
end;

procedure T_FormChainEditor.ButtonBuildResTableClick(Sender: TObject);
begin
  ToBuildResTable(Sender);
end;

procedure T_FormChainEditor.ToBuildResTable(Sender: TObject);
var
  aThZpA_s, I, J, Nstep, NuOfMM: integer;
  // Nstep: Int64;
  aFloat, Nmin, Nmax, Nra: double;
  Vf, Vskin, Vblock, VomLocal: double; // Vmm was but Vmm==Vra
  aMixedModerator: TMixedModeratorInfo;
  aOuterModerator: TOuterModeratorInfo;
  aResonanceInfoList: TResonanceInfoList;
  SSK_Table: TSSK_Table;
  SaveCursor: TCursor;
  SimpleCalc: boolean;
  SaveCaption: string;
begin
  fSSK_CalcAborted := False;
  if (Pos('Simple', RadioGroupCellType.Items[RadioGroupCellType.ItemIndex]) > 0) then
    SimpleCalc := True
  else
    SimpleCalc := False;
  SaveCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  SaveCaption := Self.Caption;
  Self.Caption := 'Self-Shielding factors calculating ... Use Ctrl+C to abort';
  fSSKCalculating := True;
  Application.ProcessMessages;
  try
    if SSK_Calc <> nil then
      SSK_Calc.Free;
    SSK_Calc := TSelfShieldingCalculator.Create;
    with SSK_Calc, StringGridRA_Rs do
    begin // test with !!! ( comment it )
      if ValEuSilent(EditTemperature.Text, aFloat) then
        SSK_Calc.T := aFloat // Temperature
      else
      begin
        MessageDlg('Temperature convertion failed!', mtWarning, [mbOK], 0);
        Exit;
      end;
      if ValEuSilent(Editl_mean.Text, aFloat) then
        SSK_Calc.l_mean := aFloat // <l>
      else
      begin
        MessageDlg('l_mean (<l>) convertion failed!', mtWarning, [mbOK], 0);
        Exit;
      end;
      // Cell Type
      if (Pos('Sq', RadioGroupCellType.Items[RadioGroupCellType.ItemIndex]) > 0) then
        SSK_Calc.CellType := ctSquare
      else if (Pos('Hex', RadioGroupCellType.Items[RadioGroupCellType.ItemIndex]) > 0) then
        SSK_Calc.CellType := ctHex
      else
        SSK_Calc.CellType := ctNoCell;
      // Volumes
      if not (SimpleCalc) then
      begin
        if (Trim(EditSkin_V.Text) = '') then
          EditSkin_V.Text := '0';
        if ValEuSilent(EditSkin_V.Text, aFloat) then
          Vskin := aFloat
        else
        begin
          MessageDlg('Vskin convertion failed !', mtWarning, [mbOK], 0);
          Exit;
        end;
        if ((ValEuSilent(EditSkin_V.Text, Vskin)) and (ValEuSilent(EditRA_V.Text, aFloat)) and (ValEuSilent(EditOM_V.Text, VomLocal))) then
          Vblock := Vskin + aFloat + VomLocal
        else
        begin
          MessageDlg('Vblock convertion failed ! Check volumes !', mtWarning, [mbOK], 0);
          Exit;
        end;
        SSK_Calc.Vc := Vskin / Vblock; // Vc
        SSK_Calc.Vom := VomLocal / Vblock; // Vm
      end;
      // Init Mixed Moderators pars
      NuOfMM := 0;
      for I := 1 to StringGridMM.RowCount - 1 do
        if Trim(StringGridMM.Cells[0, I]) <> '' then
          Inc(NuOfMM)
        else
          break;
      SSK_Calc.MixedModerators.Clear;
      for I := 1 to NuOfMM do
      begin
        if ValEuSilent(StringGridMM.Cells[0, I], aFloat) then
          aMixedModerator.A := aFloat
        else
        begin
          MessageDlg('Conversion failed in Mixed Moderators table ' + #10#13 + ' Col=0 ! Row= ' + IntToStr(I), mtWarning, [mbOK], 0);
          Exit; // break; // qqqq
        end;
        if ValEuSilent(StringGridMM.Cells[1, I], aFloat) then
          aMixedModerator.SigmaS := aFloat
        else
        begin
          MessageDlg('Conversion failed in Mixed Moderators table ' + #10#13 + ' Col=1 ! Row= ' + IntToStr(I), mtWarning, [mbOK], 0);
          Exit; // break; // qqqq
        end;
        if ValEuSilent(StringGridMM.Cells[2, I], aFloat) then
          aMixedModerator.Ro := aFloat / 1.0E24
        else
        begin
          MessageDlg('Conversion failed in Mixed Moderators table ' + #10#13 + ' Col=2! Row= ' + IntToStr(I), mtWarning, [mbOK], 0);
          Exit; // break; // qqqq
        end;
        SSK_Calc.MixedModerators.Add(aMixedModerator);
      end;
      // Init Outer Moderators pars
      ValEuSilent(EditRA_V.Text, Vf);
      if not (SimpleCalc) then
      begin
        if ValEuSilent(EditOM_V.Text, aFloat) then
          if Vf > 0 then
          begin
            SSK_Calc.Vom := aFloat / Vf;
          end
          else
            SSK_Calc.Vom := 1.0E4 // qqqq // big volume
        else
        begin
          MessageDlg('Conversion failed in Outer Moderator volume ! ', mtWarning, [mbOK], 0);
          Exit;
        end;
      end;
      for I := 1 to 1 do
      begin // The only Outer Moderator
        if ValEuSilent(StringGridOM.Cells[0, I], aFloat) then
          aOuterModerator.A := aFloat
        else
        begin
          MessageDlg('Conversion failed in Outer Moderator table ' + #10#13 + ' Col=0 ! Row= ' + IntToStr(I), mtWarning, [mbOK], 0);
          Exit;
        end;
        if ValEuSilent(StringGridOM.Cells[1, I], aFloat) then
          aOuterModerator.SigmaS := aFloat
        else
        begin
          MessageDlg('Conversion failed in Outer Moderator table ' + #10#13 + ' Col=1 ! Row= ' + IntToStr(I), mtWarning, [mbOK], 0);
          Exit;
        end;
        if ValEuSilent(StringGridOM.Cells[2, I], aFloat) then
          aOuterModerator.Ro := aFloat / 1.0E24
        else
        begin
          MessageDlg('Conversion failed in Outer Moderator table ' + #10#13 + ' Col=2 ! Row= ' + IntToStr(I), mtWarning, [mbOK], 0);
          Exit;
        end;
        SSK_Calc.OuterModerator := aOuterModerator;
      end;
      // Build Table RAbsorber
      if SSK_TableList <> nil then
        SSK_TableList.Free;
      SSK_TableList := TSSK_TableList.Create;
      for I := 1 to StringGridRA_Rs.RowCount - 1 do
      begin
        // if StringGridRA_Rs.CellChecked[1, I] then
        if Pos('Y', UpperCase(Trim(StringGridRA_Rs.Cells[1, I]))) > 0 then
        begin
          Application.ProcessMessages;
          if not (ValEuSilent(StringGridRA_Rs.Cells[2, I], Nmin)) then
          begin
            MessageDlg('Can not convert Nmin for ' + StringGridRA_Rs.Cells[0, I], mtWarning, [mbOK], 0);
            Exit;
          end;
          if not (ValEuSilent(StringGridRA_Rs.Cells[3, I], Nmax)) then
          begin
            MessageDlg('Can not convert Nmax for ' + StringGridRA_Rs.Cells[0, I], mtWarning, [mbOK], 0);
            Exit;
          end;
          aFloat := 0;
          if not (ValEuSilent(StringGridRA_Rs.Cells[4, I], aFloat)) then
          begin
            MessageDlg('Can not convert Points number for ' + StringGridRA_Rs.Cells[0, I], mtWarning, [mbOK], 0);
            Exit;
          end;
          Nstep := Round(aFloat);
          if (Nstep < 2) then
          begin
            MessageDlg('Points Number < 2', mtWarning, [mbOK], 0);
            Exit;
          end;
          if ((Nmax <= 0) or (Nmin <= 0) or (Nstep <= 0)) then
            continue;
          aThZpA_s := StrToThZpA_s(StringGridRA_Rs.Cells[0, I]);
          SSK_Calc.A := (aThZpA_s div 10) mod 1000;
          SSK_Table := TSSK_Table.Create(aThZpA_s);
          aResonanceInfoList := TResonanceInfoList.Create;
          FillResonancesInfoList(aThZpA_s, aResonanceInfoList);
          SSK_Calc.ResonanceList.Assign(aResonanceInfoList);
          try
            try
              for J := 0 to Nstep do
              begin
                Application.ProcessMessages;
                Nra := Exp(Ln(Nmin) + (Ln(Nmax) - Ln(Nmin)) * J / Nstep);
                SSK_Calc.Ro := Nra * 1.0E-24;
                aFloat := SSK_Calc.CalcSSK(-1, SimpleCalc);
                SSK_Table.Add(Nra, aFloat);
                // TmpLines.Add( FloatToStr( aFloat));
              end;
              SSK_TableList.Add(SSK_Table);
              if ChainCalc <> nil then
                ChainCalc.AssignSSK_Tables(SSK_TableList);
            except
              continue;
            end;
          finally
            aResonanceInfoList.Free;
            aResonanceInfoList := nil;
          end;
        end;
      end;
    end;
    fNeedToBuildSSK_TableList := False;
    Application.ProcessMessages;
    if not (fSSK_CalcAborted) then
      GroupBoxSSKinitial.Caption := '&Self-Shielding (table built)'
    else
      GroupBoxSSKinitial.Caption := '&Self-Shielding (build aborted)';
  finally
    SSK_Calc.Free;
    SSK_Calc := nil;
    Screen.Cursor := SaveCursor;
    Self.Caption := SaveCaption;
    fSSKCalculating := False;
    Application.ProcessMessages;
  end;
end;

procedure T_FormChainEditor.CreateNewCalculator;
var
  I: integer;
begin
  if ChainCalc <> nil then
    if not (ChainCalc.Calculating) then
    begin
      OldCalculators.Add(ChainCalc);
      // Delete all old calculators created but one - may be (hardly) usefull, say, for answers export
      for I := OldCalculators.Count - 2 downto 0 do
      begin
        TChainCalculator(OldCalculators[I]).Free;
        OldCalculators[I] := nil;
        OldCalculators.Delete(I);
      end;
    end;
  ChainCalc := TChainCalculator.Create(Chain);
  fNeedNewCalculator := False;
  fChainCalculated := False;
end;

procedure T_FormChainEditor.TabSheetConditionsShow(Sender: TObject);
begin
  StringGridRA_Rs.Height := GroupBoxRAs.Height - StringGridRA_Rs.Top;
  StringGridRA_Rs.DefaultColWidth := 64;
  StringGridRA_Rs.ColWidths[4] := StringGridRA_Rs.Width - 4 * StringGridRA_Rs.DefaultColWidth - 32; // 48; //50;
  StringGridRA_Rs.LeftCol := 1;
  StringGridRA_Rs.TopRow := 1;
  PrepareConditions;
end;

procedure T_FormChainEditor.CheckBoxConsiderClick(Sender: TObject);
begin
  fChainCalculated := False;
end;

procedure T_FormChainEditor.StringGridInitialValuesSetEditText(Sender: TObject; ACol, ARow: integer; const Value: string);
begin
  fChainCalculated := False;
end;

procedure T_FormChainEditor.StringGridMassesSetEditText(Sender: TObject; ACol, ARow: integer; const Value: string);
begin
  fChainCalculated := False;
end;

procedure T_FormChainEditor.EditTotalMassChange(Sender: TObject);
begin
  // fChainCalculated:= False; // Now used only in Yields( Answer) - AutoRecalc
end;

function T_FormChainEditor.PrepareConditions: boolean; // Captions and Previous values restore
var
  I, S: integer;
begin
  Result := False;
  if not (fAllowPrepareConditions) then
    Exit;
  try
    // Sorted Initial Value States and
    // Save Initial Values
    fTmpLines0.Clear;
    fTmpLines1.Clear;
    fTmpLines2.Clear;
    fTmpLines3.Clear;
    for I := 1 to StringGridInitialValues.RowCount - 1 do
      if ((Trim(StringGridInitialValues.Cells[1, I]) <> '') or (Trim(StringGridInitialValues.Cells[2, I]) <> '') or
        (Trim(StringGridInitialValues.Cells[3, I]) <> '')) then
      begin
        fTmpLines0.Add(Trim(StringGridInitialValues.Cells[0, I])); // StateName
        fTmpLines1.Add(Trim(StringGridInitialValues.Cells[1, I])); // MassPart
        fTmpLines2.Add(Trim(StringGridInitialValues.Cells[2, I])); // atol
        fTmpLines3.Add(Trim(StringGridInitialValues.Cells[3, I])); // rtol
      end;
    // get State Names ->  StringGridInitialValues
    if (Chain <> nil) then
      if (Chain.States.Count > 0) then
      begin
        fTmpLines.Clear;
        fTmpLines.Add('State');
        if RadioButtonNuclei.Checked then
          fTmpLines.Add('Nuclei')
        else
          fTmpLines.Add('MassPart');
        fTmpLines.Add('atol');
        fTmpLines.Add('rtol');
        StringGridInitialValues.Rows[0].Assign(fTmpLines);
        fTmpLines.Clear;
        fTmpLines.Add('State');
        fTmpSortedLines.Clear;
        for I := 0 to Chain.States.Count - 1 do
          fTmpSortedLines.Add(Chain.States[I].Name);
        fTmpSortedLines.Sort;
        for I := 0 to fTmpSortedLines.Count - 1 do
          fTmpLines.Add(fTmpSortedLines[I]);
        StringGridInitialValues.RowCount := fTmpLines.Count;
        StringGridInitialValues.Cols[0].Assign(fTmpLines);
        // Restore Initial Values
        for I := 1 to StringGridInitialValues.RowCount - 1 do
        begin
          S := fTmpLines0.IndexOf(Trim(StringGridInitialValues.Cells[0, I]));
          if (S >= 0) then
          begin
            StringGridInitialValues.Cells[1, I] := fTmpLines1[S];
            StringGridInitialValues.Cells[2, I] := fTmpLines2[S];
            StringGridInitialValues.Cells[3, I] := fTmpLines3[S];
          end
          else
          begin
            StringGridInitialValues.Cells[1, I] := '';
            StringGridInitialValues.Cells[2, I] := '';
            StringGridInitialValues.Cells[3, I] := '';
          end;
        end;
        // get Element Names ->  StringGridMasses
        // Save Element Values
        fTmpLines0.Clear;
        fTmpLines1.Clear;
        for I := 0 to StringGridMasses.RowCount - 1 do
          if (Trim(StringGridMasses.Cells[1, I]) <> '') then
          begin
            fTmpLines0.Add(Trim(StringGridMasses.Cells[0, I])); // ElementName
            fTmpLines1.Add(Trim(StringGridMasses.Cells[1, I])); // Mass
          end;
        Chain.ListElements(fTmpSortedLines);
        fTmpSortedLines.Sort;
        StringGridMasses.RowCount := fTmpSortedLines.Count;
        StringGridMasses.Cols[0].Assign(fTmpSortedLines);
        // Restore Masses Table
        for I := 0 to StringGridMasses.RowCount - 1 do
        begin
          S := fTmpLines0.IndexOf(Trim(StringGridMasses.Cells[0, I]));
          if (S >= 0) then
          begin
            StringGridMasses.Cells[1, I] := fTmpLines1[S];
          end
          else
            StringGridMasses.Cells[1, I] := '';
        end;
        // prepare Resonance Absorbers
        fTmpLines.Clear;
        fTmpLines.Add('State');
        fTmpLines.Add('Consider');
        fTmpLines.Add(' N min ');
        fTmpLines.Add(' N max ');
        fTmpLines.Add(' Points');
        StringGridRA_Rs.Rows[0].Assign(fTmpLines);
        if fNeedPrepareConditions then
          RefreshRAdata;
        fTmpLines.Clear;
        fTmpLines.Add('A');
        fTmpLines.Add('Sigma, barn');
        fTmpLines.Add('N per cub.cm');
        StringGridMM.Rows[0].Assign(fTmpLines);
        StringGridOM.Rows[0].Assign(fTmpLines);
      end;
    Result := True;
  except
    Result := False;
  end;
  fNeedPrepareConditions := False;
end;

procedure T_FormChainEditor.StringGridInitialValuesUserChangedCell(Sender: TObject; ACol, ARow: integer; const Value: string);
var
  I: integer;
  aFloat: double;
  aStateName, aElementName: string;
begin
  if (ACol >= 1) then
    if (Trim(Value) <> '') then
    begin
      if not ValEuSilent(StringGridInitialValues.Cells[ACol, ARow], aFloat) then
      begin
        MessageDlg('Can not convert to double !' + #10#13 + 'Value = ' + Value, mtWarning, [mbOK], 0);
        if not (TabSheetConditions.Visible) then
          TabSheetConditions.Show;
        StringGridInitialValues.SetFocus;
        Exit;
      end;
      if (ACol = 1) then
      begin
        aStateName := StringGridInitialValues.Cells[0, ARow];
        aElementName := ElementNameFromStateName(aStateName);
        if RadioButtonMasses.Checked then
        begin
          for I := 0 to StringGridMasses.RowCount - 1 do
            if (Trim(StringGridMasses.Cells[0, I]) = Trim(aElementName)) then
              if not (ValEuSilent(StringGridMasses.Cells[1, I], aFloat)) then
                MessageDlg('Mass was NOT calculated for ' + aElementName, mtWarning, [mbOK], 0);
        end;
      end;
    end;
  fChainCalculated := False;
end;

function T_FormChainEditor.ApplyConditions: boolean;
var
  TmpFloat: double;
  TmpN0: single;
  I, J, NoInGrid: integer;
begin
  try
    PrepareConditions;
    if fNeedNewCalculator then
      CreateNewCalculator;
    // fNeedNewCalculator:= False;
    if (ChainCalc <> nil) then
    begin
      fChainCalculated := False;
      for I := 0 to ChainCalc.NoOfStates - 1 do
      begin
        NoInGrid := -1;
        for J := 1 to StringGridInitialValues.RowCount - 1 do
          if (Trim(ChainCalc.StateName[I]) = Trim(StringGridInitialValues.Cells[0, J])) then
          begin
            NoInGrid := J;
            break;
          end;
        if NoInGrid < 0 then
        begin
          MessageDlg('Name was not found in initial values ! ' + #10#13 + ChainCalc.StateName[I], mtWarning, [mbOK], 0);
          Result := False;
          Exit;
        end;
        if (Trim(StringGridInitialValues.Cells[1, NoInGrid]) = '') then
          ChainCalc.N0[I] := 0
        else
        begin
          if ValEuSilent(StringGridInitialValues.Cells[1, NoInGrid], TmpFloat) then
          begin
            if RadioButtonNuclei.Checked then
            begin
              ChainCalc.N0[I] := TmpFloat;
            end
            else
            begin // RadioButtonMasses.Checked ALWAYS now
              // ChainCalc.N0[I]:= IsGetN0fromMassDolja(TmpFloat, Trim(StringGridInitialValues.Cells[0, NoInGrid]));
              if IsGetN0fromMassDolja(TmpFloat, Trim(StringGridInitialValues.Cells[0, NoInGrid]), TmpN0) then
                ChainCalc.N0[I] := TmpN0
              else
              begin
                if not (TabSheetConditions.Visible) then
                  TabSheetConditions.Show;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 width=1380 height=945><figcaption></figcaption></figure><p><p>В некоторых случаях, чтобы упростить задачу и не искать аналог описание компонента просто вырезалось из frm-файла в текстовом редакторе и компонент создавался уже динамически при FormCreate, где также была для этого сделана условная компиляция. Также надо обратить внимание, что размеры кнопок\полей ввода\чекбоксов в штатной линуксовой GTK2 которая используется там для Lazarus\Code Typhon как системная библиотека виджетов не совпадают с виндовыми и зачастую надо немножко повозить мышкой по формочке, чтобы привести её в более благородный вид. <p>Там где имена классов компонентов не совпадают – в исходном тексте класса формы делаем условную компиляцию, например так:<pre><code class="delphi hljs">    cProgressBar: <span class=hljs-meta>{$IFDEF FPC}</span>TProgressBar<span class=hljs-meta>{$ELSE}</span>TJvGradientProgressBar<span class=hljs-meta>{$ENDIF}</span>;
    cMsgView:  <span class=hljs-meta>{$IFDEF FPC}</span>TListBox<span class=hljs-meta>{$ELSE}</span>TJvListBox<span class=hljs-meta>{$ENDIF}</span>;
</code></pre><p><p>Сконвертировав подобным образом модуль с формой жмём дальше на компиляцию и смотрим, что интересного нам напишет компилятор ещё. Различия в наименованиях полей компонентов решается тривиально – то есть введением условной компиляции, но как показал процесс портирования таких мест не так много, и всё становится существенно интереснее в тех местах, где начинается использование системного API, в программе таких мест было несколько:<p>- загрузка модулей через LoadLibrary – вызовы из WinAPI&nbsp; были заменены прокладками из модуля DynLibs с теми же именами. Функции выглядят точно также как в Windows, но единственное что пришлось сделать – это сделать при загрузке плагинов автозамену имени файла *.dll на lib*.so так как имена расширений были прописаны в конфигурациях блоков и проектов созданных в программе. <p>Касаемо загрузки SO в линуксе надо помнить, что если библиотеки программы находятся не в /bin и пути к ним не сконфигурированы в PATH, то при загрузке библиотеки к имени файла следует обязательно добавить путь к главному исполняемому файлу если модули лежат рядом в ним:<pre><code class="hljs mel">fLibHandle:=LoadLibrary({$IFNDEF FPC}PChar{$ENDIF}(ExtractFilePath({$IFDEF FPC} ParamStr(<span class=hljs-number>0</span>) {$ELSE} GetModuleName(HInstance) {$ENDIF})+rsalib_name));</code></pre><p><p>Кроме этого если хендл SO\DLL был декларирован как THandle необходимо заменить его на TLibHandle, т.к. они имеют разные типы в разных ОС:<pre><code class="delphi hljs"><span class=hljs-keyword>Var</span> fLibHandle: TLibHandle; \\ Вместо THandle</code></pre><p> <p> <p>- критические секции и объекты синхронизации (InitializeCriticalSection, CreateEvent и т.п.) – тоже были заменены прокладками из модуля syncobjs, который присутствует как в Free Pascal так и в Delphi (классы TCriticalSection и TEvent соотвественно):<div class=table><table><tbody><tr><td><p>WinAPI функция</p><td><p>Класс и метод</p><tr><td><p>RTL_CRITICAL_SECTION</p><td><p>TCriticalSection</p><tr><td><p>InitializeCriticalSection</p><td><p>TCriticalSection.Create</p><tr><td><p>DeleteCriticalSection</p><td><p>TCriticalSection.Free</p><tr><td><p>EnterCriticalSection</p><td><p>TCriticalSection.Enter</p><tr><td><p>LeaveCriticalSection</p><td><p>TCriticalSection.Leave</p><tr><td><p>hEvent</p><td><p>TEvent</p><tr><td><p>CreateEvent</p><td><p>TEvent.Create</p><tr><td><p>CloseHandle(hEvent)</p><td><p>TEvent.Free</p><tr><td><p>SetEvent</p><td><p>TEvent.SetEvent</p><tr><td><p>ResetEvent</p><td><p>TEvent.ResetEvent</p><tr><td><p>WaitForSingleObjects</p><td><p>TEvent.WaitFor</p></table></div><p>Замену функций EnterCriticalSection… на класс TCriticalSection &nbsp;и т.п. категорически <strong>рекомендуется</strong> произвести ! И крайне не желательно при этом пользоваться одноимёнными функциями из LCL, во избежание проблем и путаницы !<p>- запуск процессов – все функции были выделены в отдельный модуль с условной компиляцией. Запуск процессов был сделан на Linux через вызов system, использовать exec тут нежелательно:<pre><code class="delphi hljs"><span class=hljs-keyword>uses</span> <span class=hljs-meta>{$IFDEF Windows}</span> Windows, <span class=hljs-meta>{$ELSE}</span> LCLType, unix, Baseunix,<span class=hljs-meta>{$ENDIF}</span> Classes, SysUtils;
………
  <span class=hljs-comment>//Юниксовые варианты порождения процессов</span>
<span class=hljs-function><span class=hljs-keyword>function</span>  <span class=hljs-title>WinExecAndWait32</span><span class=hljs-params>(<span class=hljs-keyword>const</span> FileName:<span class=hljs-keyword>string</span>; Visibility : integer = 0;
                          TimeOut: cardinal = <span class=hljs-meta>{$IFDEF Windows}</span>INFINITE<span class=hljs-meta>{$ELSE}</span>maxLongInt<span class=hljs-meta>{$ENDIF}</span>)</span>:</span>longword; <span class=hljs-keyword>var</span> ss: AnsiString;
<span class=hljs-keyword>begin</span>
  ss := FileName;
  Result:=fpSystem( ss );
<span class=hljs-keyword>end</span>;

<span class=hljs-function><span class=hljs-keyword>function</span>  <span class=hljs-title>MyWinExec</span><span class=hljs-params>(<span class=hljs-keyword>const</span> S: <span class=hljs-keyword>string</span>;aShowMode: cardinal)</span>:</span>cardinal;
 <span class=hljs-keyword>var</span> ss : ansistring;
<span class=hljs-keyword>begin</span>
  <span class=hljs-meta>{$IFDEF Windows}</span>
     ss:=S;
     Result:=Windows.WinExec(PAnsiChar(ss),aShowMode);
  <span class=hljs-meta>{$ELSE}</span>
     <span class=hljs-comment>// Делаем выполнение системной команды БЕЗ ожидания - для этого в конце добавляем &amp;</span>
     <span class=hljs-comment>// Рекомендация: для порождения внешних вызовов пользовать fpSystem и не форкать процесс ибо</span>
     <span class=hljs-comment>// это ведёт к проблемам с отладчиком и последующим закрытием программы.</span>
     ss := S + <span class=hljs-string>' &amp;'</span>;
     Result:=fpSystem( ss );
  <span class=hljs-meta>{$ENDIF}</span>
<span class=hljs-keyword>end</span>;
</code></pre><p><p>- движок двумерной графики Direct2D.<p>В старых версиях программы под Windows в качестве рендера использовался GDI и для работы с растрами – GDI+ , в более поздних (с появлением Windows 7) всё было заменено на вызовы Direct2D API, который работал на порядок быстрее и позволял сделать сильно более качественную графику. Но старый код был оставлен для обеспечения совместимости. При портировании на Linux возникло 2 варианта – портировать с обычными вызовами через TCanvas – они идентичны или же попробовать сделать более приличный вариант с использованием более продвинутой библиотеки. В качестве библиотеки ренденринга 2d-графики для Linux была взята ORCA2d &nbsp;а конкретно класс&nbsp; TD2Canvas&nbsp;&nbsp; надо которым была сочинена совместимая с классом TDirect2Canvas надстройка. Для отрисовки графики TD2Canvas&nbsp; использует cairo для Linux. Можно было сделать полностью свой класс для рендера с более прямым вызовом линуксовых API-функций, но это делать было неохота и поэтому я воспользовался более готовым вариантом. Корректировка вызывающего кода заключалась в основном в том, что вместо интерфейсов теперь были просто классы кое-где добавились вызовы Free для объектов. Текст объекта-прокладки для рендера графики приведён в Приложении 1.<p>Соответственно поскольку изменился рендер, то вместо штатного TPaintBox, для которой определялся контекст Direct2D при конвертации формы в редакторе изображений блоков и редакторе схем были скорректированы компоненты:<p>&nbsp;&nbsp; В декларации класса формы:<pre><code class="delphi hljs">ShemePanel: <span class=hljs-meta>{$IFDEF FPC}</span>TD2Scene<span class=hljs-meta>{$ELSE}</span>TPanel<span class=hljs-meta>{$ENDIF}</span>;
PaintBox: <span class=hljs-meta>{$IFDEF FPC}</span>TD2Image<span class=hljs-meta>{$ELSE}</span>TPaintBox<span class=hljs-meta>{$ENDIF}</span>;                          <span class=hljs-comment>//Отрисовочная поверхность</span>
</code></pre><p><p>При выделении канвы для отрисовки:<pre><code class="delphi hljs">    <span class=hljs-meta>{$IFDEF FPC}</span>
    PaintBox.Bitmap.SetSize(ShemePanel.Width,ShemePanel.Height);
    PaintBox.OnPaint:=DoPaintPB;
    Canvas:=TDirect2DCanvas.Create(PaintBox.Bitmap.Canvas);
    Canvas.FBaseImageObject:=PaintBox;
    <span class=hljs-meta>{$ELSE}</span>
    Canvas:=TMyD2Canvas.Create(ShemePanel.Handle);
    <span class=hljs-meta>{$ENDIF}</span>
</code></pre><p><p>Были также переопределены перехватчики событий мыши, поскольку ORCA2D координаты возвращало в single.<p>Самым интересным оказалось то, что <strong>рисовать под Linux в многопоточном режиме как позволял Direct2D крайне нежелательно</strong>, поэтому поточный таймер был условной компиляцией заменён на обычный, <strong>а вызов отрисовки на канве TD2Image необходимо было делать строго по вызову OnPaint данного компонента</strong>, т.к. иначе могли возникать перемигивания если отрисовку вызывать вне этого вызова. Это обусловило необходимость <strong>сделать вызов отрисовки через вызов ShemePanel.Repaint</strong> вместо прямого вызова рисования как для Direct2D варианта.<h2>Глава 4: Загадки с обработкой исключений в Linux внутри динамически загружаемых библиотек</h2><p>Всё было хорошо, но однажды мне захотелось добавить в линуксовой виртуалке ядер программы, чтобы она шевелилась пошустрее и тут началось нечто загадочное – стали заваливаться пакеты проектов (т.е. когда внутри программы параллельно на разных потоках считают несколько задач с обменом данными).&nbsp; Т.е. пускаешь, а оно заваливается в абсолютно произвольный момент времени и причём не пишет информации отчего завалилось от слова совсем. Я начал думать. Сделал тест - взял 2 проекта автоматики пустых и пустил их в оболочке паралелльно. Без синхронизации без всего вообще. Результат - если в виртуалке настроено 2 процессора заваливается через секунд 5. Причём при заваливании выводит в произвольные места. Сделал тест&nbsp; - урезал проекты оставил только плагин проекта common в загрузке. Запустил - заваливается через 15 сек. <strong>Начал смотреть что не так и обнаружил что если в DLL присутствует код обработки исключений&nbsp; try except finally&nbsp; то когда в такую функцию входят одновременно 2 потока то происходит капут.</strong> Начал смотреть ассемблерный код обработки исключений в Linux (в Windows он совсем другой) и оказалось, что try except при входе в секцию вызывает функцию записи указателя в связанный список состоящий из стековых переменных но при этом базовая переменная декларирована как threadvar в списке глобальных переменных системного модуля except.inc в RTL компилятора. <strong>И после этого до меня дошло - что threadvar-ы не работают если в SO в головном файле проекта не слинкован модуль cthreads. То есть его надо линковать не только там где ты поток порождаешь в программе а везде в любых SO в которые этот поток может заглянуть и где используется обработка исключений. А если не прописать - то компилятор ничего не скажет, но threadvar-ы будут работать как обычные var&nbsp; -&nbsp; то есть существовать в одном экземпляре внутри процесса. Соотвественно при многопоточном режиме будет оно глючить не пойми где и молча. После того как я во ВСЕХ модулях на паскале подключил первым модулем cthreads&nbsp; всё чудесным образом заработало без сбоев.</strong>&nbsp; Для упрощения задачи я включил cthreads сразу в модуль simm который предоставляет модулям общий менеджер памяти. <p>Вот этот код виноват был в модуле except.inc в RTL Free Pascal:<pre><code class="delphi hljs"><span class=hljs-meta>{$ifdef FPC_HAS_FEATURE_THREADING}</span>
<span class=hljs-keyword>ThreadVar</span>
<span class=hljs-meta>{$else FPC_HAS_FEATURE_THREADING}</span>
<span class=hljs-keyword>Var</span>
<span class=hljs-meta>{$endif FPC_HAS_FEATURE_THREADING}</span>
  ExceptAddrStack   : PExceptAddr;
  ExceptObjectStack : PExceptObject;
  ExceptTryLevel    : ObjpasInt;

......

<span class=hljs-function><span class=hljs-keyword>Function</span> <span class=hljs-title>fpc_PushExceptAddr</span> <span class=hljs-params>(Ft: <span class=hljs-meta>{$ifdef CPU16}</span>SmallInt<span class=hljs-meta>{$else}</span>Longint<span class=hljs-meta>{$endif}</span>;_buf,_newaddr : pointer)</span>:</span> PJmp_buf ;
  [<span class=hljs-keyword>Public</span>, <span class=hljs-keyword>Alias</span> : <span class=hljs-string>'FPC_PUSHEXCEPTADDR'</span>];compilerproc;
<span class=hljs-keyword>var</span>
  _ExceptAddrstack : ^PExceptAddr;
<span class=hljs-keyword>begin</span>
<span class=hljs-meta>{$ifdef excdebug}</span>
  writeln (<span class=hljs-string>'In PushExceptAddr'</span>);
<span class=hljs-meta>{$endif}</span>
  _ExceptAddrstack:=@ExceptAddrstack;
  PExceptAddr(_newaddr)^.Next:=_ExceptAddrstack^;
  _ExceptAddrStack^:=PExceptAddr(_newaddr);
  PExceptAddr(_newaddr)^.Buf:=PJmp_Buf(_buf);
  PExceptAddr(_newaddr)^.FrameType:=ft;
  result:=PJmp_Buf(_buf);
<span class=hljs-keyword>end</span>;
</code></pre><p> <p> <p>Естественно информации о том, что без cthreads&nbsp;&nbsp; под линуксом threadvar-ы не работают, нету нифига нигде вообще, ни в интернете, ни в документации. Поэтому возможно кому-то пригодится этот документ.<h2>Глава 5. Странности при завершении работы программы или загадки со строками</h2><p>После того, как была прояснена особенность с обработкой исключений в многопоточном режиме в компиляторе FreePascal программа в общем и целом заработала стабильно – то есть тестовый пакет проектов, включающий в себя выполнение нескольких параллельных задач устойчиво считал и ни разу не завалил программу. Но почему-то при завершении работы программы при вызове FreeLibrary для всех плагинов происходила выдача исключения. Этот вопрос меня возбудил и не давал мне спать по ночам, намекая на какую-то нехорошую штуку при выделении памяти. При этом сбой вёл на функцию fpc_ansistr_decr_ref, что намекало на проблемы с работой со строками в плагинах. Сразу надо оговориться – в Delphi под Windows такой проблемы не было. Для прояснения данного момента был проведён эксперимент – в загрузке был оставлен один плагин, дававший гарантированный сбой. У плагинов при загрузке программы вызывается функция Init, которая делает некоторые инициализирующие действия после загрузки библиотеки. В результате эксперимента оказалось, что сбой при выходе программы происходит в случае, если из Init плагина вызывается функция главного интерфейса TMain.AddMenuItem (TMain это структура, содержащая адреса подпрограмм и внутренних данных, которые доступны плагинам, см. модуль InterfaceUnit.pas). <p>Данная функция была задекларирована следующим образом:<p>AddMenuItem:function(Parent: Pointer;<strong>const Caption:string</strong>;OnClick: TNotifyEvent;Tag:NativeInt):Pointer;<p>И вызывалась в коде плагина как<p>DllInfo.Main.AddMenuItem(DllInfo.Main.Menu,<strong>txtTppTools</strong>,nil,0);<p>где txtTppTools – это строковая константа<p>Внутри реализации интерфейсной функции AddMenuItem в головном модуле программы Caption присваивался соответственно полю Caption нового экземпляра TMenuItem. Для интереса присвоение строки было закомментировано и случилось чудо – ошибка при выходе исчезла !<p>Дальнейшие раздумья позволили прояснить детали проблемы:<p>FreePascal &nbsp;при присвоении строк может делать это без копирования данных – т.е. если строка-источник является константой то он берёт и присваивает указатель строки приёмника = адресу строки источника без копирования собственно данных строки на новой место при этом для строки-источника увеличивается на 1 счётчик ссылок, когда строка-приёмник деаллоцируется или меняется то счётчик ссылок строки-источника наоборот уменьшается на 1. И всё это хорошо и правильно пока мы не выгружаем shared object из памяти. А после этого случается страшное –менеджер памяти при завершении программы пытается декрементировать счётчик ссылок на строчку в том месте, где её нету уже и в помине (т.к. константа выделяется не в общей куче). Выходом из данной ситуации является замена типа string для функций которые могут быть вызваны с аргументом-строковой константой на PChar. <strong>В идеале для всех интерфейсных функций лучше как раз PChar и использовать, т.е. он гарантирует, что внутри реализации интерфейсной функции будут скопированы данные строки, а не просто указатель. </strong><p>Соответственно, интерфейсные функции со строковыми аргументами были переделаны на использование PChar в качестве входного параметра:<p><code>AddMenuItem:function(Parent: Pointer;Caption:PChar;OnClick: TNotifyEvent;Tag:NativeInt):Pointer;</code><p><code>InsertMenuItem:function(Parent: Pointer;Caption:PChar;OnClick: TNotifyEvent;Tag,AIndex:integer):Pointer;</code><p><code>InsertMenuItem:function(Parent: Pointer;Caption:PChar;OnClick: TNotifyEvent;Tag,AIndex:integer):Pointer;</code><p><code>SetAlias: function(aAlias,aAliasValue: PChar;fReplace: boolean):boolean;</code><p>Также была добавлена интерфейсная функция для безопасного присвоения имени компонента внутри головного модуля:<p><code>SetComponentName:&nbsp; procedure(aComponentPtr: Pointer;aName: PChar);</code><p>На замену конструкции TComponent(aComponentPtr).Name := aName<p><strong>После замены в плагинах типа строкового аргумента с const … : string на PChar проблемы связанные с выгрузкой плагинов были устранены. </strong><h2>Глава 6. Особенности некоторых компонентов под Linux в библиотеке LCL</h2><p>У стандартных компонентов LCL существует разница в реализации по сравнению с компонентами VCL, связанная с применением некоторых особенностей. <p>При использовании компонента TTabControl в LCL следует помнить, что <strong>использовать TTabControl.Tabs.Objects</strong> под свои нужды в LCL категорически нельзя в отличие от VCL ! Поля Objects в поле Tabs в классе TTabControl &nbsp;в LCL используются для хранения ссылок на внутренние данные этого компонента ! Поэтому для хранения ссылок на объекты ассоциированные с табами следует ввести дополнительный список, фрагмент кода как надо делать для FPC и как было для Delphi приведён ниже:<pre><code class="delphi hljs">         <span class=hljs-meta>{$IFDEF FPC}</span>
         TCComps.Tabs.Add( TranslationEngine.TranslateWordFunc(  MainLibrary.Tabs[i], TID_PANELBUTTONS) );
         TShowedTabList.Add(Tab);
         <span class=hljs-meta>{$ELSE}</span>
         TCComps.Tabs.AddObject( TranslationEngine.TranslateWordFunc(MainLibrary.Tabs[i],TID_PANELBUTTONS ),Tab);
         <span class=hljs-meta>{$ENDIF}</span>
</code></pre><p>От TControlBar лучше отказаться и заменить его на TToolBar – это может быть сделано условной компиляцией и заменой имени класса в frm-файле. TControlBar работает в GTK2 плохо. <p>При динамической смене стиля бордюра окна на безрамочный режим (используется при переключении с режима редактора в режим видеокадра) следует пересоздать окно:<pre><code class="delphi hljs">        <span class=hljs-meta>{$IFDEF FPC}</span>
        ActiveEditor.DefRect:=ActiveEditor.BoundsRect;
        ActiveEditor.PaintTimer.Enabled:=False;
        <span class=hljs-meta>{$ENDIF}</span>

        ActiveEditor.BorderStyle:=bsNone;

        <span class=hljs-meta>{$IFDEF FPC}</span>
        RecreateWnd(ActiveEditor);   <span class=hljs-comment>//Вот без этого в линуксе бордюры динамически не скрываются</span>
        <span class=hljs-meta>{$ENDIF}</span>
</code></pre><p><p><strong>Динамическая смена бордюра окон на безрамочные может вызывать сбои LCL (в случае когда было окно bsSizeable а делаем мы его bsNone),</strong> поэтому если штатно дизайн окна в frm-файле выполнен с рамкой, то лучше сделать глобальную переменную для режима запуска для всех окон программы в безрамочном стиле. Переопределить стиль окна можно путём override для функции CreateParams оконного класса:<pre><code class="delphi hljs"><span class=hljs-function><span class=hljs-keyword>procedure</span> <span class=hljs-title>TEditForm</span>.<span class=hljs-title>CreateParams</span><span class=hljs-params>(<span class=hljs-keyword>var</span> Params :TCreateParams)</span>;</span>
<span class=hljs-keyword>begin</span>
  <span class=hljs-comment>// Тут мы проверяем и если надо применяем флаг для того, чтобы инициализировать окно редактора без бордюров !</span>
  <span class=hljs-keyword>if</span> global_projects_window_no_border <span class=hljs-keyword>then</span> <span class=hljs-keyword>begin</span>
     <span class=hljs-meta>{$IFDEF FPC}</span>
     FFormBorderStyle:=bsNone;
     <span class=hljs-meta>{$ELSE}</span>
     <span class=hljs-comment>//Такой фокус позволяем присвоить FBorderStyle напрямую без RecreateWindow на этапе создания окна</span>
     TFormBorderStyle((@BorderStyle)^):=bsNone;
     <span class=hljs-meta>{$ENDIF}</span>
  <span class=hljs-keyword>end</span>;
</code></pre><p><p><strong>Перерисовку после изменения размеров компонента\окна лучше выполнять через отдельное оконное сообщение,</strong> т.к. при инициировании прямой перерисовки из обработчика события она может не пройти. <pre><code class="delphi hljs">  <span class=hljs-meta>{$IFDEF FPC}</span>
  <span class=hljs-comment>//В Linux перерисовку через сообщение, т.к. иначе не инициализируется контекст отрисовки</span>
  PostMessage(Handle,WM_PaintSheme,<span class=hljs-number>0</span>,<span class=hljs-number>0</span>) ;
  <span class=hljs-meta>{$ELSE}</span>
  RepaintFormAll;    <span class=hljs-comment>//Здесь делаем полную перерисовку, т.к. иначе изображение может не обновиться !!!</span>
  <span class=hljs-meta>{$ENDIF}</span>
</code></pre><p><p><strong>Если внутри SO (DLL) есть форма, которая должна самоуничтожаться, то есть особенность – присвоение Action:=caFree внутри таких форм работать не будет ! Поэтому необходимо в обработчике OnClose напрямую вызвать Free для формы – это работает.</strong><pre><code class="hljs delphi"><span class=hljs-function><span class=hljs-keyword>procedure</span> <span class=hljs-title>TDebugBlockForm</span>.<span class=hljs-title>FormClose</span><span class=hljs-params>(Sender: TObject; <span class=hljs-keyword>var</span> Action: TCloseAction)</span>;</span>
 <span class=hljs-keyword>var</span> i: integer;
<span class=hljs-keyword>begin</span>

  <span class=hljs-keyword>if</span> aBlockPtr &lt;&gt; <span class=hljs-keyword>nil</span> <span class=hljs-keyword>then</span> <span class=hljs-keyword>begin</span>
    StopShowData;
    TMBTYBlock(aBlockPtr).fBlockDebugForm:=<span class=hljs-keyword>nil</span>;
    <span class=hljs-keyword>for</span> I := <span class=hljs-number>0</span> <span class=hljs-keyword>to</span> Length(aInputsDataList) - <span class=hljs-number>1</span> <span class=hljs-keyword>do</span>
      aInputsDataList[i].fReplaceArray.Free;
    <span class=hljs-keyword>for</span> I := <span class=hljs-number>0</span> <span class=hljs-keyword>to</span> Length(aOutputsDataList) - <span class=hljs-number>1</span> <span class=hljs-keyword>do</span>
      aOutputsDataList[i].fReplaceArray.Free;
  <span class=hljs-keyword>end</span>;

  <span class=hljs-meta>{$IFDEF FPC}</span>
  Free;
  <span class=hljs-meta>{$ELSE}</span>
  Action:=caFree;
  <span class=hljs-meta>{$ENDIF}</span>
<span class=hljs-keyword>end</span>;
</code></pre><p><h2>Глава 7. А что с графиками под Linux?</h2><p>Одной из основных проблем при портировании программы оказалось наличие компонента для построения графиков (2-х и 3-х мерных). Это обусловлено тем, что программа предназначена для расчёта динамики систем и результаты её работы именно в виде графиков в основном и представляются пользователю. Под Delphi&nbsp; в Windows мы использовали известный и достаточно качественный компонент TeeChart Pro от Steema software надо которым была сделана надстройка, которая этим компонентом управляла. Фирма даже его купила за 100 баксов официально и мы при разработке под Windows используем версию от 2017 года которая нас абсолютно полностью устраивает. &nbsp;Данная подсистема представляет одну из самых важных и сложных алгоритмически частей программного комплекса. <p>При портировании на Linux оказалось что в составе Lazarus штатно компонента этого нет, что меня сильно огорчило. Первоначально была сделана попытка использовать имеющийся в нём аналог -&nbsp; TAChart, который имеет схожий функционал. Соответственно в коде управляющей надстройки были сделаны IFDEF-ы и построение графика было переделано на этот компонент, но оказалось что он по визуальному представлению и некоторым очень необходимым функциям уступает TChart-у в Delphi (в частности не позволяет расположить вертикальные шкалы в одну линейку на разных уровнях).<p>При внимательном рассмотрении исходников компонента TeeChart Pro обнаружились забавные артефакты:<figure class=full-width><img src="data:image/png;base64,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