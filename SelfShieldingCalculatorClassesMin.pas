unit SelfShieldingCalculatorClassesMin;

interface

uses Classes, ObjectsMin, EuLibMin;

type
 
 TOuterModeratorInfo=record
  A: double; // Amass
  SigmaS: double; // barn
  Ro: double; // Atom Concentration 1/(barn*cm)
 end;
 POuterModeratorInfo=^TOuterModeratorInfo;
 
 TMixedModeratorInfo=record
  A: double; // Amass
  SigmaS: double; // barn
  Ro: double; // Atom Concentration 1/(barn*cm)
 end;
 PMixedModeratorInfo=^TMixedModeratorInfo;
{TMixedModeratorList}
 TMixedModeratorList=class(TList)
 protected
  function GetMixedModeratorA(Index: integer): double;
  procedure SetMixedModeratorA(Index: integer; const aMixedModeratorInfoA: double);

  function GetMixedModeratorSigmaS(Index: integer): double;
  procedure SetMixedModeratorSigmaS(Index: integer; const aMixedModeratorInfoSigmaS: double);
  function GetMixedModeratorRo(Index: integer): double;
  procedure SetMixedModeratorRo(Index: integer; const aMixedModeratorInfoRo: double);

  function GetMixedModeratorInfo(Index: integer): TMixedModeratorInfo;
  procedure SetMixedModeratorInfo(Index: integer; const aMixedModeratorInfo: TMixedModeratorInfo);
 public
  procedure Add(aMixedModeratorInfo: TMixedModeratorInfo);
  destructor Destroy; override;
  constructor Create;
  property
   MixedModeratorInfos[Index: integer]: TMixedModeratorInfo read GetMixedModeratorInfo write SetMixedModeratorInfo; default;
  property
   A[Index: integer]: double read GetMixedModeratorA write SetMixedModeratorA;
  property
   SigmaS[Index: integer]: double read GetMixedModeratorSigmaS write SetMixedModeratorSigmaS;
  property
   Ro[Index: integer]: double read GetMixedModeratorRo write SetMixedModeratorRo;
 end;
 
 TResonanceType=(rtSLBWRP, rtMLBWRP, rtRMRP, rtOther);
 TResonanceInfo=record
  ResonanceType: TResonanceType;
  A: double;
  TwoI: Longword;
  TwoJ: Longword;
  SigmaS: double;
  L: integer; // ==0
  Edown: double; //Energies - in eV, sigmy - barn
  Eup: double;
  E0: double;
  GammaT: double;
  GammaN: double;
  GammaG: double;
  GammaF: double;
//  GammaFA: double;// For Reigh-Moore == GF
  GammaFB: double; // For Reigh-Moore
 end;
 PResonanceInfo=^TResonanceInfo;
{TResonanceInfoList}
 TResonanceInfoList=class(TList)
 protected
  function GetResonanceInfo(Index: integer): TResonanceInfo;
  procedure SetResonanceInfo(Index: integer; aResonanceInfo: TResonanceInfo);
 public
  procedure Add(aResonanceInfo: TResonanceInfo);
  procedure Assign(aResonanceInfoList: TResonanceInfoList);
  function FindInList(const E0: double; const Epsilon: double=1.0E-3): integer;
  destructor Destroy; override;
  constructor Create;
  property
   ResonanceInfos[Index: integer]: TResonanceInfo read GetResonanceInfo write SetResonanceInfo; default;
 end;
 
 TCellType=(ctNoCell, ctHex, ctSquare);
{TSelfShieldingCalculator}
 TSelfShieldingCalculator=class(TObject)
 private
  fAbortCalcSSK: Boolean;
  fAborted: Boolean;
  fA: double; // Amass
  fT: double; // K
  fRo: double; // 1/(barn*cm)
  fStepNo: integer;
  fMaxStepNo: integer;
  fEpsilon: double;
  fE_gr: double; // E_granichnaia
  fl_mean: double; // cm
  fCellType: TCellType;
// Resonance Tables
  fResonanceList: TResonanceInfoList;
  fMixedModerators: TMixedModeratorList;
  fOuterModerator: TOuterModeratorInfo;
  fVc: double; // Vskin/Vblock
  fVom: double; // Vom/Vblock
  fResonanceInCalculationNo: integer;
  fRo_mult_fl_mean_min: double;
// for SSKcalculation
  fZmis: TFloatList;
  fz_smallis: TFloatList;
  fdeltais: TFloatList;
 protected
  function GetE0(Index: Integer): double;
  procedure SetE0(Index: Integer; Value: double);
  function GetGammaT(Index: Integer): double;
  procedure SetGammaT(Index: Integer; Value: double);
  function GetGammaG(Index: Integer): double;
  procedure SetGammaG(Index: Integer; Value: double);
  function GetGammaF(Index: Integer): double;
  procedure SetGammaF(Index: Integer; Value: double);
  function GetGammaN(Index: Integer): double;
  procedure SetGammaN(Index: Integer; Value: double);
  function GetNuOfResonanve: integer;
  procedure SetOuterModeratorA(Value: double);
  function GetOuterModeratorA: double;
  procedure SetOuterModeratorSigmaS(Value: double);
  function GetOuterModeratorSigmaS: double;
  procedure SetOuterModeratorRo(Value: double);
  function GetOuterModeratorRo: double;
//  procedure SetOuterModerator( aOuterModeratorInfo: TOuterModeratorInfo);
  procedure SetVom(aVom: double);
 public
  property AbortCalcSSK: Boolean read fAbortCalcSSK write fAbortCalcSSK;
  property Aborted: Boolean read fAborted;
  property A: double read fA write fA; // Resonance adsorber Amass
  property T: double read fT write fT; // Temperature
  property Ro: double read fRo write fRo; // Resonance adsorber atom/(barn*cm)
  property l_mean: double read fl_mean write fl_mean; // Mean hord in block cm
  property Vc: double read fVc write fVc; // objemnoe otnoshenie obolochka/block
  property Vom: double read fVom write SetVom; // objemnoe otnoshenie OuterModerator/block
  property CellType: TCellType read fCellType write fCellType; // Cell Type
  property Epsilon: double read fEpsilon write fEpsilon; // Accuracy
  property Ro_mult_fl_mean_min: double read fRo_mult_fl_mean_min write fRo_mult_fl_mean_min;
  property StepNo: integer read fStepNo;
  property MaxStepNo: integer read fMaxStepNo write fMaxStepNo;
  property ResonanceList: TResonanceInfoList read fResonanceList write fResonanceList;
  property MixedModerators: TMixedModeratorList read fMixedModerators write fMixedModerators;
  property OuterModerator: TOuterModeratorInfo read fOuterModerator write fOuterModerator; // SetOuterModerator; //
  procedure AddResonance(aResonanceInfo: TResonanceInfo);
  procedure ClearResonances;
  function CalcI_Infinity: double;
  function CalcSSK(const RoSSA: double; const SimpleCalc: Boolean=False; const CalcFissionSSK: Boolean=False;
   const Emin: double=0.0; const Emax: double=1.0E18): double;
{$IFDEF DEBUG_SSK}
  function CalcSSK_Goldstein(const RoSSA: double;
   const UseDNSQ: Boolean=False; const CalcFissionSSK: Boolean=False;
   const Emin: double=0.0; const Emax: double=1.0E18): double;
{$ENDIF}
  property E0[Index: integer]: double read GetE0 write SetE0;
  property GammaT[Index: integer]: double read GetGammaT write SetGammaT;
  property GammaG[Index: integer]: double read GetGammaG write SetGammaG;
  property GammaF[Index: integer]: double read GetGammaF write SetGammaF;
  property GammaN[Index: integer]: double read GetGammaN write SetGammaN;
  property NumberOfResonance: integer read GetNuOfResonanve;
  property E_gr: double read fE_gr write fE_gr;
  property ResonanceInCalculationNo: integer read fResonanceInCalculationNo;
  property OuterModeratorA: double read GetOuterModeratorA write SetOuterModeratorA;
  property OuterModeratorSigmaS: double read GetOuterModeratorSigmaS write SetOuterModeratorSigmaS;
  property OuterModeratorRo: double read GetOuterModeratorRo write SetOuterModeratorRo;
  constructor Create;
  destructor Destroy; override;
 end;
 
// OOB Classes
 TVSLBWRP=class(TVObject)
 private
  fThZpA_s: integer;
  fTwoSpin: Integer;
  fFor_pi_AP__2: Single; // Sigma_p
  fIsotope_AWR: Single; // A_mean
  fl_State: integer; // l of neutron
  fEdown: Single;
  fEup: Single;
  feV: Single;
  fTwoJ: integer;
  fGT: Single;
  fGN: Single;
  fGG: Single;
  fGF: Single;
 public
  constructor Create; override;
  constructor CreateFromResonanceInfo(const aThZpA_s: integer; const aResonanceInfo: TResonanceInfo);
  constructor Load(S: TVStream; Version: Word); override;
  procedure Store(S: TVStream); override;
  function Clone: Pointer; override;
  property ThZpA_s: integer read fThZpA_s write fThZpA_s;
  property TwoSpin: integer read fTwoSpin write fTwoSpin;
  property For_pi_AP__2: Single read fFor_pi_AP__2 write fFor_pi_AP__2; // Sigma_p
  property Isotope_AWR: Single read fIsotope_AWR write fIsotope_AWR; // A_mean
  property l_State: integer read fl_State write fl_State; // l of neutron
  property Edown: Single read fEdown write fEdown;
  property Eup: Single read fEup write fEup;
  property eV: Single read feV write feV;
  property TwoJ: integer read fTwoJ write fTwoJ;
  property GT: Single read fGT write fGT;
  property GN: Single read fGN write fGN;
  property GG: Single read fGG write fGG;
  property GF: Single read fGF write fGF;
 end;
 TVSLBWRPColl=class(TVUniCollection)
 private
 public
  constructor Create; override;
  procedure MakeIndexBy_ThZpA_s;
  function Clone: Pointer; override;
  constructor Load(S: TVStream; Version: Word); override;
  procedure Store(S: TVStream); override;
 end;
 TVMLBWRP=class(TVSLBWRP);
 TVMLBWRPcoll=class(TVSLBWRPcoll);
 
 TVRMRP=class(TVSLBWRP)
 private
  fGFB: Single;
 protected
//
 public
  property GFA: Single read fGF write fGF;
  property GFB: Single read fGFB write fGFB;
  constructor Load(S: TVStream; Version: Word); override;
  procedure Store(S: TVStream); override;
  function Clone: Pointer; override;
 end;
 TVRMRPcoll=class(TVSLBWRPcoll);
//LIB
procedure CopyResonanceInfo(const Src: TResonanceInfo; var Dst: TResonanceInfo);
function LoadAllResonancesFromOOB(const aDataBaseFileName: string): integer;
function FillResonancesInfoList(const aThZpA_s: integer; var aResInfoList: TResonanceInfoList;
 const ResonanceType: string='ALL'; const Emin: double=0.5E-13; const Emax: double=100.0E13;
 const l_min: integer=-MaxInt; const l_max: integer=MaxInt): integer;
function Resonances4ThZpA_sLoaded(const aThZpA_s: integer;
 const ResonanceType: string='ALL'; const Emin: double=0.5E-13; const Emax: double=100.0E13;
 const l_min: integer=-MaxInt; const l_max: integer=MaxInt): integer;
function ResonanceTypeToStr(aType: TResonanceType): string;
function Jfunc(const Theta, Beta: double; Epsilon: double=1.0E-10): double;

const
 IndexBy_ThZpA_s='IndexBy_ThZpA_s';
 rg_TVSLBWRP=1101;
 rg_TVSLBWRPcoll=1102;
 rg_TVMLBWRP=1103;
 rg_TVMLBWRPcoll=1104;
 rg_TVRMRP=1105;
 rg_TVRMRPcoll=1106;
 
implementation

uses
{$IFDEF WINDOWS}
 Windows,
{$ENDIF}
Sysutils, Dialogs, Forms,
{$IFDEF DEBUG_SSK}
 DNSQ_all,
{$ENDIF}
 Math;

const
 Ln2=0.69314718055994530942;
 TwoPiHsqDivMn_InCm2=2.603910231319732E-18; // 2*Pi*6.582122E-16^2/(9.3956563E8/2.99792458E10^2)
 TwoPiHsqDivMn=2.603910231319732E6; // in Barns
 Pi=3.1415926535897932385;
 PiSqrRoot=1.77245385090551602729;
 PiTwoPiHsqDivMnDiv2=1.0*Pi*TwoPiHsqDivMn/2.0; //3.8-qqqq
 k_boltzmann=8.617385E-5;
 ThreePlusSqrtThreeDiv2=2.366025403784439;
 AforCequalOne=1.197168783648703;
 Nequation=3;
 
var
 SLBWRPs: TVSLBWRPColl;
 MLBWRPs: TVMLBWRPColl;
 RMRPs: TVRMRPColl;
 ResonanceLoaded: Boolean;
{$IFDEF DEBUG_SSK}
 aIOPT: Longint;
 aN: Longint;
 aX: array[1..Nequation] of Double;
 aFVEC: array[1..Nequation] of Double;
 aFJAC: array[1..Nequation*Nequation] of Double; // not used 3x3 Jackobian
 aLDFJAC: Longint;
 aXTOL: Double;
 aMAXFEV: Longint;
 aML, aMU: Longint;
 aEPSFCN: Double;
 aDIAG: array[1..Nequation] of Double;
 aMODE: Longint;
 aFACTOR: Double;
 aNPRINT: Longint;
 aINFO: Longint;
 aNFEV: Longint;
 aNJEV: Longint;
 aR: array[1..Nequation*Nequation] of Double;
 aLR: Longint;
 aQTF: array[1..Nequation] of Double;
 aWA1, aWA2, aWA3, aWA4: array[1..Nequation*Nequation] of Double;
// for intercommunicztion
 a_betaSq: double;
 a_beta_111: double;
 a_CellType: TCellType;
 a_tau, a_s_m, a_l_mean, a_Vom: double;
 a_ka, a_lambda, a_mu: double;
 a_c, a_aa, a_s, a_N_f, a_N_m: double;
 a_sigma_0, a_sigma_am, a_sigma_f, a_G_gamma, a_G_n, a_G, a_beta, a_TmpFloat: double;
 a_Er, a_x_ka, a_x_lambda, a_x_mu: double;
 a_OneMinusAlpha_ka, a_OneMinusAlpha_lambda, a_OneMinusAlpha_mu: double;
{$ENDIF}// {$IFDEF DEBUG_SSK}
 
 
 
function Jfunc(const Theta, Beta: double; Epsilon: double=1.0E-10): double;
type
 TJ_Table=array[0..31, 1..10] of double; // J(j,Theta) Beta=2^j+1e-5 j=0..31 Theta=0.1:0.1:1.0
const
 J_table: TJ_Table=(
  (4.979E+02, 4.970E+02, 4.969E+02, 4.968E+02, 4.968E+02, 4.968E+02, 4.967E+02, 4.967E+02, 4.967E+02, 4.967E+02),
  (3.532E+02, 3.517E+02, 3.514E+02, 3.513E+02, 3.513E+02, 3.513E+02, 3.513E+02, 3.513E+02, 3.513E+02, 3.513E+02),
  (2.514E+02, 2.492E+02, 2.487E+02, 2.485E+02, 2.485E+02, 2.484E+02, 2.484E+02, 2.484E+02, 2.484E+02, 2.484E+02),
  (1.801E+02, 1.767E+02, 1.761E+02, 1.759E+02, 1.758E+02, 1.757E+02, 1.757E+02, 1.757E+02, 1.757E+02, 1.757E+02),
  (1.307E+02, 1.257E+02, 1.248E+02, 1.245E+02, 1.244E+02, 1.243E+02, 1.243E+02, 1.243E+02, 1.242E+02, 1.242E+02),
  (9.667E+01, 8.993E+01, 8.872E+01, 8.831E+01, 8.812E+01, 8.802E+01, 8.796E+01, 8.792E+01, 8.790E+01, 8.788E+01),
  (7.355E+01, 6.501E+01, 6.335E+01, 6.278E+01, 6.252E+01, 6.238E+01, 6.230E+01, 6.225E+01, 6.221E+01, 6.218E+01),
  (5.773E+01, 4.777E+01, 4.562E+01, 4.485E+01, 4.450E+01, 4.430E+01, 4.419E+01, 4.412E+01, 4.407E+01, 4.403E+01),
  (4.647E+01, 3.589E+01, 3.328E+01, 3.230E+01, 3.183E+01, 3.158E+01, 3.143E+01, 3.133E+01, 3.126E+01, 3.121E+01),
  (3.781E+01, 2.759E+01, 2.471E+01, 2.354E+01, 2.297E+01, 2.265E+01, 2.245E+01, 2.232E+01, 2.223E+01, 2.217E+01),
  (3.045E+01, 2.153E+01, 1.867E+01, 1.741E+01, 1.675E+01, 1.638E+01, 1.614E+01, 1.598E+01, 1.587E+01, 1.579E+01),
  (2.367E+01, 1.676E+01, 1.423E+01, 1.301E+01, 1.235E+01, 1.194E+01, 1.168E+01, 1.151E+01, 1.138E+01, 1.129E+01),
  (1.730E+01, 1.268E+01, 1.074E+01, 9.718E+00, 9.119E+00, 8.739E+00, 8.484E+00, 8.304E+00, 8.174E+00, 8.077E+00),
  (1.164E+01, 9.081E+00, 7.815E+00, 7.087E+00, 6.629E+00, 6.322E+00, 6.107E+00, 5.950E+00, 5.833E+00, 5.744E+00),
  (7.172E+00, 6.014E+00, 5.342E+00, 4.914E+00, 4.624E+00, 4.419E+00, 4.268E+00, 4.154E+00, 4.066E+00, 3.997E+00),
  (4.088E+00, 3.658E+00, 3.371E+00, 3.169E+00, 3.022E+00, 2.911E+00, 2.826E+00, 2.759E+00, 2.706E+00, 2.663E+00),
  (2.204E+00, 2.067E+00, 1.966E+00, 1.889E+00, 1.829E+00, 1.781E+00, 1.743E+00, 1.712E+00, 1.687E+00, 1.666E+00),
  (1.148E+00, 1.109E+00, 1.078E+00, 1.053E+00, 1.033E+00, 1.016E+00, 1.002E+00, 9.904E-01, 9.805E-01, 9.722E-01),
  (5.862E-01, 5.757E-01, 5.671E-01, 5.599E-01, 5.539E-01, 5.488E-01, 5.445E-01, 5.408E-01, 5.376E-01, 5.348E-01),
  (2.963E-01, 2.936E-01, 2.913E-01, 2.894E-01, 2.877E-01, 2.863E-01, 2.851E-01, 2.840E-01, 2.831E-01, 2.823E-01),
  (1.490E-01, 1.483E-01, 1.477E-01, 1.472E-01, 1.468E-01, 1.464E-01, 1.461E-01, 1.458E-01, 1.455E-01, 1.453E-01),
  (7.468E-02, 7.452E-02, 7.437E-02, 7.424E-02, 7.413E-02, 7.403E-02, 7.395E-02, 7.388E-02, 7.381E-02, 7.375E-02),
  (3.739E-02, 3.735E-02, 3.732E-02, 3.728E-02, 3.726E-02, 3.723E-02, 3.721E-02, 3.719E-02, 3.718E-02, 3.716E-02),
  (1.871E-02, 1.870E-02, 1.869E-02, 1.868E-02, 1.868E-02, 1.867E-02, 1.867E-02, 1.866E-02, 1.866E-02, 1.865E-02),
  (9.358E-03, 9.356E-03, 9.355E-03, 9.352E-03, 9.350E-03, 9.349E-03, 9.348E-03, 9.346E-03, 9.345E-03, 9.344E-03),
  (4.680E-03, 4.680E-03, 4.679E-03, 4.679E-03, 4.678E-03, 4.678E-03, 4.678E-03, 4.677E-03, 4.677E-03, 4.677E-03),
  (2.340E-03, 2.340E-03, 2.340E-03, 2.340E-03, 2.340E-03, 2.340E-03, 2.340E-03, 2.340E-03, 2.340E-03, 2.340E-03),
  (1.170E-03, 1.170E-03, 1.170E-03, 1.170E-03, 1.170E-03, 1.170E-03, 1.170E-03, 1.170E-03, 1.170E-03, 1.170E-03),
  (5.851E-04, 5.851E-04, 5.851E-04, 5.851E-04, 5.851E-04, 5.851E-04, 5.851E-04, 5.851E-04, 5.851E-04, 5.851E-04),
  (2.925E-04, 2.926E-04, 2.926E-04, 2.926E-04, 2.926E-04, 2.926E-04, 2.926E-04, 2.926E-04, 2.926E-04, 2.926E-04),
  (1.463E-04, 1.463E-04, 1.463E-04, 1.463E-04, 1.463E-04, 1.463E-04, 1.463E-04, 1.463E-04, 1.463E-04, 1.463E-04),
  (7.314E-05, 7.314E-05, 7.315E-05, 7.315E-05, 7.315E-05, 7.315E-05, 7.314E-05, 7.314E-05, 7.314E-05, 7.314E-05));
 
var
// I: integer;
 Theta1, j1, Theta2, j2: integer;
 j, Theta10, J_func1, J_func2, J_func3, J_func4, t, u: double;
begin
 if Beta<=0 then begin
  Result:= -1;
  Exit;
 end;
// Time Optimization
// if ((Theta>=0.1)and(Theta<=1)and(Beta>=1.0E-5)and(Beta<=2147483648*1.0E-5)) then begin// In J_table
 j:= Ln(Beta*1.0E5)/Ln2;
 Theta10:= 10*Theta;
 if ((Theta10>=1)and(Theta10<=10)and(j>=0)and(j<=31)) then begin// In J_table
//  j1:= Floor(j);
  j1:= Trunc(j);
  if (j1=j) then
   j2:= j1
  else begin
   if (j1<31) then
    j2:= j1+1
   else
    j2:= 31;
  end;
//  Theta1:= Floor(Theta10);
  Theta1:= Trunc(Theta10);
  if (Theta1=Theta10) then
   Theta2:= Theta1
  else begin
   if (Theta1<10) then begin
    Theta2:= Theta1+1;
   end
   else
    Theta2:= 10;
  end;
  // Below will be never
(*
  if Theta1>Theta2 then begin
   I:= Theta1;
   Theta1:= Theta2;
   Theta2:= I;
  end;
  if j1>j2 then begin
   I:= j1;
   j1:= j2;
   j2:= I;
  end;
*)
  if ((j1=j2)and(Theta1=Theta2)) then
   Result:= J_table[j1, Theta1]
  else if (j1=j2) then // !! Theta1<=10*Theta<=Theta2
   Result:= Exp(Ln(J_table[j1, Theta1])+(Ln(J_table[j1, Theta2])-Ln(J_table[j1, Theta1]))/(Theta2-Theta1)*(Theta10-Theta1))
  else if (Theta1=Theta2) then
   Result:= Exp(Ln(J_table[j1, Theta1])+(Ln(J_table[j1, Theta1])-Ln(J_table[j2, Theta1]))/(j2-j1)*(j1-j))
  else begin// Numerical Recipes 3-6 (2D interpolation), Here-for Ln
   J_func1:= Ln(J_table[j1, Theta1]);
   J_func2:= Ln(J_table[j2, Theta1]);
   J_func3:= Ln(J_table[j2, Theta2]);
   J_func4:= Ln(J_table[j1, Theta2]);
   t:= (j-j1)/(j2-j1);
   u:= (Theta10-Theta1)/(Theta2-Theta1);
   Result:= Exp((1-t)*(1-u)*J_func1+t*(1-u)*J_func2+t*u*J_func3+(1-t)*u*J_func4);
  end;
//  Result
 end
 else begin// analitic
  if ((Theta<0.15)and(Beta>Theta*Theta)and(Theta>6*Beta)) then
  try
   Result:= 2/Theta*sqrt(Ln(Theta*PiSqrRoot/(2.0*Beta)))
  except
   Result:= Pi/(2*sqrt(Beta*(Beta+1)))
  end
  else
   Result:= Pi/(2*sqrt(Beta*(Beta+1)))
 end;
//(*  /// qqqqq uncomment
 if 2/Pi*Beta*Result>1.0 then //I_infinity<I_self-shielded
  Result:= Result/(2/Pi*Beta*Result);
//*)
end;

{TMixedModeratorList}

procedure TMixedModeratorList.Add(aMixedModeratorInfo: TMixedModeratorInfo);
var
 NewMixedModeratorInfo: PMixedModeratorInfo;
begin
 New(NewMixedModeratorInfo);
 with NewMixedModeratorInfo^ do begin
  A:= aMixedModeratorInfo.A;
  SigmaS:= aMixedModeratorInfo.SigmaS;
  Ro:= aMixedModeratorInfo.Ro;
 end;
 inherited Add(NewMixedModeratorInfo);
end;

constructor TMixedModeratorList.Create;
begin
 inherited Create;
end;

destructor TMixedModeratorList.Destroy;
var
 I: integer;
begin
 for I:= Count-1 downto 0 do
  if (Items[I]<>nil) then
   Dispose(PMixedModeratorInfo(Items[I]));
 inherited Destroy;
end;

function TMixedModeratorList.GetMixedModeratorA(Index: integer): double;
begin
 Result:= TMixedModeratorInfo(Items[Index]^).A;
end;

function TMixedModeratorList.GetMixedModeratorInfo(Index: integer): TMixedModeratorInfo;
begin
 Result:= TMixedModeratorInfo(Items[Index]^);
end;

function TMixedModeratorList.GetMixedModeratorRo(Index: integer): double;
begin
 Result:= TMixedModeratorInfo(Items[Index]^).Ro;
end;

function TMixedModeratorList.GetMixedModeratorSigmaS(
 Index: integer): double;
begin
 Result:= TMixedModeratorInfo(Items[Index]^).SigmaS;
end;

procedure TMixedModeratorList.SetMixedModeratorA(Index: integer;
 const aMixedModeratorInfoA: double);
begin
 TMixedModeratorInfo(Items[Index]^).A:= aMixedModeratorInfoA;
end;

procedure TMixedModeratorList.SetMixedModeratorInfo(Index: integer;
 const aMixedModeratorInfo: TMixedModeratorInfo);
begin
 TMixedModeratorInfo(Items[Index]^).A:= aMixedModeratorInfo.A;
 TMixedModeratorInfo(Items[Index]^).SigmaS:= aMixedModeratorInfo.SigmaS;
 TMixedModeratorInfo(Items[Index]^).Ro:= aMixedModeratorInfo.Ro;
end;

procedure TMixedModeratorList.SetMixedModeratorRo(Index: integer;
 const aMixedModeratorInfoRo: double);
begin
 TMixedModeratorInfo(Items[Index]^).Ro:= aMixedModeratorInfoRo;
end;

procedure TMixedModeratorList.SetMixedModeratorSigmaS(Index: integer;
 const aMixedModeratorInfoSigmaS: double);
begin
 TMixedModeratorInfo(Items[Index]^).SigmaS:= aMixedModeratorInfoSigmaS;
end;

{TResonanceInfoList}

procedure AssignResonanceToResonanceInfo(const aResonance: TResonanceInfo; NewResonanceInfo: PResonanceInfo);
begin
 with NewResonanceInfo^, aResonance do begin
  NewResonanceInfo^.TwoI:= aResonance.TwoI;
  NewResonanceInfo^.TwoJ:= aResonance.TwoJ;
  NewResonanceInfo^.SigmaS:= aResonance.SigmaS;
  NewResonanceInfo^.L:= aResonance.L;
  NewResonanceInfo^.Edown:= aResonance.Edown;
  NewResonanceInfo^.Eup:= aResonance.Eup;
  NewResonanceInfo^.E0:= aResonance.E0;
  NewResonanceInfo^.GammaT:= aResonance.GammaT;
  NewResonanceInfo^.GammaN:= aResonance.GammaN;
  NewResonanceInfo^.GammaG:= aResonance.GammaG;
  NewResonanceInfo^.GammaF:= aResonance.GammaF;
//  NewResonanceInfo^.GammaFA:= aResonance.GammaFA;
  NewResonanceInfo^.GammaFB:= aResonance.GammaFB;
 end;
end;

procedure TResonanceInfoList.Add(aResonanceInfo: TResonanceInfo);
var
 NewResonanceInfo: PResonanceInfo;
begin
 New(NewResonanceInfo);
 with NewResonanceInfo^ do begin
  ResonanceType:= aResonanceInfo.ResonanceType;
  A:= aResonanceInfo.A;
  TwoI:= aResonanceInfo.TwoI;
  TwoJ:= aResonanceInfo.TwoJ;
  SigmaS:= aResonanceInfo.SigmaS;
  L:= aResonanceInfo.L;
  Edown:= aResonanceInfo.Edown;
  Eup:= aResonanceInfo.Eup;
  E0:= aResonanceInfo.E0;
  GammaT:= aResonanceInfo.GammaT;
  GammaN:= aResonanceInfo.GammaN;
  GammaG:= aResonanceInfo.GammaG;
  GammaF:= aResonanceInfo.GammaF;
//  GammaFA:= aResonanceInfo.GammaFA;
  GammaFB:= aResonanceInfo.GammaFB;
 end;
 inherited Add(NewResonanceInfo);
end;

procedure TResonanceInfoList.Assign(aResonanceInfoList: TResonanceInfoList);
var
 I: integer;
 aResonanceInfo: TResonanceInfo;
begin
 if Self<>aResonanceInfoList then begin
  Self.Clear;
  for I:= 0 to aResonanceInfoList.Count-1 do begin
   aResonanceInfo:= aResonanceInfoList[I];
   Self.Add(aResonanceInfo);
  end;
//   Self.Add(aResonanceInfoList[I]);
 end;
end;

constructor TResonanceInfoList.Create;
begin
 inherited Create;
end;

destructor TResonanceInfoList.Destroy;
var
 I: integer;
begin
 for I:= 0 to Count-1 do
  if (Items[I]<>nil) then
   Dispose(PResonanceInfo(Items[I]));
 inherited Destroy;
end;

function TResonanceInfoList.FindInList(const E0: double; const Epsilon: double=1.0E-3): integer;
var
 I: integer;
begin
 Result:= -1;
 for I:= 0 to Self.Count-1 do
  if (((1+Epsilon)*E0>=Self[I].E0)and((1-Epsilon)*E0<=Self[I].E0)) then begin
   Result:= I;
   break;
  end;
end;

function TResonanceInfoList.GetResonanceInfo(Index: integer): TResonanceInfo;
begin
 Result:= TResonanceInfo(Items[Index]^);
end;

procedure TResonanceInfoList.SetResonanceInfo(Index: integer; aResonanceInfo: TResonanceInfo);
begin
 AssignResonanceToResonanceInfo(aResonanceInfo, Items[Index]);
end;

{ShelfShieldingCalculator}

function TSelfShieldingCalculator.GetOuterModeratorA: double;
begin
 Result:= fOuterModerator.A;
end;

function TSelfShieldingCalculator.GetOuterModeratorRo: double;
begin
 Result:= fOuterModerator.Ro;
end;

function TSelfShieldingCalculator.GetOuterModeratorSigmaS: double;
begin
 Result:= fOuterModerator.SigmaS;
end;

procedure TSelfShieldingCalculator.SetOuterModeratorA(Value: double);
begin
 fOuterModerator.A:= Value;
end;

procedure TSelfShieldingCalculator.SetOuterModeratorRo(Value: double);
begin
 fOuterModerator.Ro:= Value;
end;

procedure TSelfShieldingCalculator.SetOuterModeratorSigmaS(Value: double);
begin
 fOuterModerator.SigmaS:= Value;
end;

constructor TSelfShieldingCalculator.Create;
begin
 inherited;
 fResonanceList:= TResonanceInfoList.Create;
 fMixedModerators:= TMixedModeratorList.Create;
 fZmis:= TFloatList.Create;
 fz_smallis:= TFloatList.Create;
 fdeltais:= TFloatList.Create;
 fEpsilon:= 1.0E-3;
 fMaxStepNo:= 1000;
 fE_gr:= 0.215;
 fCellType:= ctNoCell;
 fl_mean:= 0.5;
 fT:= 300.0;
 fVc:= 0.0;
 fVom:= 0.0;
 fRo_mult_fl_mean_min:= 1E-10;
end;

function TSelfShieldingCalculator.GetE0(Index: Integer): double;
begin
 Result:= ResonanceList[Index].E0;
end;

function TSelfShieldingCalculator.GetGammaT(Index: Integer): double;
begin
 Result:= ResonanceList[Index].GammaT;
end;

function TSelfShieldingCalculator.GetGammaG(Index: Integer): double;
begin
 Result:= ResonanceList[Index].GammaG;
end;

function TSelfShieldingCalculator.GetGammaF(Index: Integer): double;
begin
 Result:= ResonanceList[Index].GammaF;
end;

function TSelfShieldingCalculator.GetGammaN(Index: Integer): double;
begin
 Result:= ResonanceList[Index].GammaN;
end;

function TSelfShieldingCalculator.GetNuOfResonanve: integer;
begin
 Result:= ResonanceList.Count;
end;

procedure TSelfShieldingCalculator.SetE0(Index: Integer; Value: double);
var
 NewResonanceInfo: PResonanceInfo;
begin
 New(NewResonanceInfo);
 with NewResonanceInfo^ do begin
  AssignResonanceToResonanceInfo(ResonanceList[Index], NewResonanceInfo);
  NewResonanceInfo^.E0:= Value;
 end;
 ResonanceList.SetResonanceInfo(Index, NewResonanceInfo^);
end;

procedure TSelfShieldingCalculator.SetGammaT(Index: Integer; Value: double);
var
 NewResonanceInfo: PResonanceInfo;
begin
 New(NewResonanceInfo);
 with NewResonanceInfo^ do begin
  AssignResonanceToResonanceInfo(ResonanceList[Index], NewResonanceInfo);
  NewResonanceInfo^.GammaT:= Value;
 end;
 ResonanceList.SetResonanceInfo(Index, NewResonanceInfo^);
end;

procedure TSelfShieldingCalculator.SetGammaG(Index: Integer; Value: double);
var
 NewResonanceInfo: PResonanceInfo;
begin
 New(NewResonanceInfo);
 with NewResonanceInfo^ do begin
  AssignResonanceToResonanceInfo(ResonanceList[Index], NewResonanceInfo);
  NewResonanceInfo^.GammaG:= Value;
 end;
 ResonanceList.SetResonanceInfo(Index, NewResonanceInfo^);
end;

procedure TSelfShieldingCalculator.SetGammaF(Index: Integer; Value: double);
var
 NewResonanceInfo: PResonanceInfo;
begin
 New(NewResonanceInfo);
 with NewResonanceInfo^ do begin
  AssignResonanceToResonanceInfo(ResonanceList[Index], NewResonanceInfo);
  NewResonanceInfo^.GammaF:= Value;
 end;
 ResonanceList.SetResonanceInfo(Index, NewResonanceInfo^);
end;

procedure TSelfShieldingCalculator.SetGammaN(Index: Integer; Value: double);
var
 NewResonanceInfo: PResonanceInfo;
begin
 New(NewResonanceInfo);
 with NewResonanceInfo^ do begin
  AssignResonanceToResonanceInfo(ResonanceList[Index], NewResonanceInfo);
  NewResonanceInfo^.GammaN:= Value;
 end;
 ResonanceList.SetResonanceInfo(Index, NewResonanceInfo^);
end;

function TSelfShieldingCalculator.CalcI_Infinity: double;
var
 I: integer;
 g: double;
// GT: double;
begin
 Result:= 0.0;
 try
  for I:= 0 to ResonanceList.Count-1 do begin
   g:= (ResonanceList[I].TwoJ+1)/(2*(ResonanceList[I].TwoI+1));
(*
   if ResonanceList[I].ResonanceType=rtRMRP then
    GT:= sqrt(ResonanceList[I].GammaN*ResonanceList[I].GammaN+ResonanceList[I].GammaG*ResonanceList[I].GammaG+
     ResonanceList[I].GammaF*ResonanceList[I].GammaF+ResonanceList[I].GammaFB*ResonanceList[I].GammaFB)
   else
    GT:= ResonanceList[I].GammaT;
*)
   Result:= Result+g*PiTwoPiHsqDivMnDiv2*ResonanceList[I].GammaN*ResonanceList[I].GammaG/
    (ResonanceList[I].GammaT*ResonanceList[I].E0*ResonanceList[I].E0)*
    (1/2-ArcTan(2.0*(fE_gr-ResonanceList[I].E0)/ResonanceList[I].GammaT)/Pi);
(*
   Result:= Result+g*PiTwoPiHsqDivMnDiv2*ResonanceList[I].GammaN*ResonanceList[I].GammaG/
    (GT*ResonanceList[I].E0*ResonanceList[I].E0)*
    (1/2-ArcTan(2.0*(fE_gr-ResonanceList[I].E0)/GT)/Pi);
*)
  end;
 except
  Result:= -1;
 end;
end;

destructor TSelfShieldingCalculator.Destroy;
begin
 fResonanceList.Free;
 fMixedModerators.Free;
 fZmis.Free;
 fz_smallis.Free;
 fdeltais.Free;
 inherited;
end;

procedure TSelfShieldingCalculator.AddResonance(aResonanceInfo: TResonanceInfo);
begin
 fResonanceList.Add(aResonanceInfo);
end;

procedure TSelfShieldingCalculator.ClearResonances;
begin
 fResonanceList.Clear;
end;

function TSelfShieldingCalculator.CalcSSK(const RoSSA: double; const SimpleCalc: Boolean=False;
 const CalcFissionSSK: Boolean=False; const Emin: double=0.0; const Emax: double=1.0E18): double;
var
 Z, delta, z_small, Z_m, z_small_m, delta_m, RI, OneResonance: double;
 Zmis, z_smallis, deltais: TFloatList;
 s, s_prev, Sp, sigma_0, Er, GT, GN, GG, g, m, n, s_m, gamma_0: double;
 Theta: double;
 SumSigma_mi: double;
 aa, c, mu, mu_prev, tau, tau_0, alpha, SigmaOM: double;
 procedure InitVars;
 var
  I: integer;
  TheResonance: TResonanceInfo;
 begin
// Init vars for a resonance # ResonanceInfoNo
  Z_m:= 0;
  Z:= 0.5;
  Zmis.Clear;
  z_smallis.Clear;
  deltais.Clear;
  TheResonance:= fResonanceList[fResonanceInCalculationNo];
  with TheResonance do begin
   if TheResonance.A>0 then
    fA:= TheResonance.A;
   if TheResonance.E0>0 then
    Er:= TheResonance.E0
   else
    Er:= -TheResonance.E0;
   GT:= TheResonance.GammaT;
   if not(CalcFissionSSK) then
    GN:= TheResonance.GammaN
   else
    GN:= TheResonance.GammaF;
   GG:= TheResonance.GammaG;
   Sp:= TheResonance.SigmaS;
   g:= (TheResonance.TwoJ+1)/(2*(TheResonance.TwoI+1));
   sigma_0:= TwoPiHsqDivMn*g*GN/(GT*Er);
   m:= sigma_0*GG/GT;
   n:= sigma_0*GN/GT;
   Theta:= 0.5*GT*sqrt(fA/(Er*k_boltzmann))*1.0E9; // T==0; now - Temperature in the end
(*
   if fT>0 then
//    Theta:= sqrt(fA*GT*GT/(4*Er*k_boltzmann*fT))
    Theta:= 0.5*GT*sqrt(fA/(Er*k_boltzmann*fT))
   else
    Theta:= 0.5*GT*sqrt(fA/(Er*k_boltzmann))*1.0E9;
//    Theta:= sqrt(fA*GT*GT/(4*Er*k_boltzmann*1.0e-18));//1-bad;
*)
  end;
// Dancoff
  if (fCellType=ctHex) then begin
   tau_0:= -0.12;
   alpha:= sqrt(3)/2;
  end
  else if (fCellType=ctSquare) then begin
   tau_0:= -0.08;
   alpha:= 1.0;
  end;
  s_m:= fOuterModerator.SigmaS*fOuterModerator.Ro*fVom/fRo;
  SigmaOM:= fOuterModerator.SigmaS*fOuterModerator.Ro;
//  Dancoff
//  First Step Z_m==0 --> mu:= (1-Z_m)/(1+(s/s_m-1)*Z_m)==1
  mu:= 1;
  if fCellType<>ctNoCell then begin
   tau:= (sqrt(Pi/(4*alpha))*sqrt(1+fVom/(1+fVc))-1)/(fVom*sqrt(1+fVc))+tau_0*(1+0.5*sqrt(fVc/(1-fVc)));
   c:= 1-exp(-tau*SigmaOM*fl_mean*fVom*mu)/(1+(1-tau)*SigmaOM*fl_mean*fVom*mu);
   if c<0 then
    c:= 1.0;
//By Toporov
//(*
   aa:= (ThreePlusSqrtThreeDiv2+sqrt(c))*(ThreePlusSqrtThreeDiv2+sqrt(c))/
    ((ThreePlusSqrtThreeDiv2+sqrt(c))*(ThreePlusSqrtThreeDiv2+sqrt(c))-ThreePlusSqrtThreeDiv2*ThreePlusSqrtThreeDiv2*c/3);
   s:= aa*c/(fRo*fl_mean); // By Toporov qqqq
//*)
(*
//  By Goldstein
    aa:= 1.27/(1+0.1*c);
    s:= aa*(1-c)/(fRo*fl_mean);// By GoldStein
    if s<0 then
     s:= fOuterModerator.SigmaS*fOuterModerator.Ro/fRo;
*)
  end
  else
   s:= AforCequalOne/(fRo*fl_mean); // No Cell qqqq  was    s:= 1/(fRo*fl_mean);
// End Dancoff
  SumSigma_mi:= 0;
  for I:= 0 to fMixedModerators.Count-1 do
   SumSigma_mi:= SumSigma_mi+fMixedModerators[I].SigmaS*fMixedModerators[I].Ro/fRo;
  gamma_0:= (s+Sp+SumSigma_mi)/sigma_0;
  for I:= 0 to fMixedModerators.Count-1 do begin
   Zmis.Add(0.5);
   z_smallis.Add(0.0);
   deltais.Add(0.0);
  end;
 end;
 function CalcOneResonance: Boolean;
 var
  I: integer;
  gamma_new, gamma_prev, JfromGamma, JfromGamma0, z_small_factor: double;
  SumSigma_miMultOneMinusZmi: double;
 begin
// OneResonance calculation
  Application.ProcessMessages;
  try
   OneResonance:= 0.0;
//   JfromGamma0:= Jfunc(Theta, gamma_0);  // now Pi/2.0/sqrt(gamma_0*(1+gamma_0))
   JfromGamma0:= Pi/2.0/sqrt(gamma_0*(1+gamma_0));
   gamma_prev:= 0; //100;
   gamma_new:= 1;
   s_prev:= 0; //100;
   s:= 1;
   mu_prev:= 0.1;
   mu:= 0.9;
   while ((not AreFloatsEqualRel(gamma_new, gamma_prev, fEpsilon))or(not AreFloatsEqualRel(mu, mu_prev, fEpsilon))
    or(not AreFloatsEqualRel(s, s_prev, fEpsilon)))and(fStepNo<fMaxStepNo) do begin
    s_prev:= s;
    if s_m>0 then begin
     mu_prev:= 0.1;
     mu:= 0.9;
//  Dancoff
     while (not AreFloatsEqualRel(mu, mu_prev, fEpsilon)) do begin
      Application.ProcessMessages;
      mu_prev:= mu;
      if (1+(s/s_m-1)*Z_m)>0 then
       mu:= (1-Z_m)/(1+(s/s_m-1)*Z_m)
      else
       mu:= (1-Z_m)/(1+fEpsilon+(s/s_m-1)*Z_m);
      if fCellType<>ctNoCell then begin
       tau:= (sqrt(Pi/(4*alpha))*sqrt(1+fVom/(1+fVc))-1)/(fVom*sqrt(1+fVc))+
        tau_0*(1+0.5*sqrt(fVc/(1-fVc)));
       c:= 1-exp(-tau*SigmaOM*fl_mean*fVom*mu)/(1+(1-tau)*SigmaOM*fl_mean*fVom*mu);
       if s<0 then
        s:= fOuterModerator.SigmaS*fOuterModerator.Ro/fRo;
(*
//  By Goldstein
      aa:= 1.27/(1+0.1*c);
      s:= aa*(1-c)/(fRo*fl_mean);// By GoldStein
      if s<0 then
       s:= fOuterModerator.SigmaS*fOuterModerator.Ro/fRo;
*)
//(*
// By Toporov
       aa:= (ThreePlusSqrtThreeDiv2+sqrt(c))*(ThreePlusSqrtThreeDiv2+sqrt(c))/
        ((ThreePlusSqrtThreeDiv2+sqrt(c))*(ThreePlusSqrtThreeDiv2+sqrt(c))-ThreePlusSqrtThreeDiv2*ThreePlusSqrtThreeDiv2*c/3);
       s:= aa*c/(fRo*fl_mean); // By Toporov qqqq
//*)
      end
      else begin
       s:= AforCequalOne/(fRo*fl_mean); // No Cell qqqq was  s:= 1/(fRo*fl_mean); // No Cell
      end;
     end;
// End Dancoff
    end;
    if (fStepNo=1) then begin
     gamma_new:= (2*s+Sp+SumSigma_mi)/(m+sigma_0);
    end;
//    JfromGamma:= Jfunc(Theta, gamma_new); // now Pi/2.0/sqrt(gamma_new*(1+gamma_new))
    try
     JfromGamma:= Pi/2.0/sqrt(gamma_new*(1+gamma_new));
    except
     ; // in codetyphon SIGFPE exception in DuildSSKTable calc tst.chn with SSK
    end;
    z_small_factor:= (gamma_new*JfromGamma-gamma_0*JfromGamma0)/((gamma_new-gamma_0)*JfromGamma*JfromGamma0);
    for i:= 0 to fMixedModerators.Count-1 do begin
//(*
// By TOPOROV
     deltais[i]:= 4*Pi*Er*fMixedModerators[i].A/(GT*(fMixedModerators[i].A+1)*(fMixedModerators[i].A+1));
//     z_smallis[i]:= deltais[i]*(gamma_new*JfromGamma-gamma_0*JfromGamma0)/((gamma_new-gamma_0)*JfromGamma*JfromGamma0);
     z_smallis[i]:= deltais[i]*z_small_factor; //(gamma_new*JfromGamma-gamma_0*JfromGamma0)/((gamma_new-gamma_0)*JfromGamma*JfromGamma0);
     if (z_smallis[i]<>0) then
      Zmis[i]:= ArcTan(z_smallis[i])/z_smallis[i]
     else
      Zmis[i]:= 1;
//*)
(*
// By GOLDSTEIN
     deltais[i]:= 8.0*Er*fMixedModerators[i].A/(GT*(fMixedModerators[i].A+1)*(fMixedModerators[i].A+1));
//     z_smallis[i]:= (Pi*deltais[i]/2)*(gamma_new*JfromGamma-gamma_0*JfromGamma0)/((gamma_new-gamma_0)*JfromGamma*JfromGamma0);
//                     z_small_factor:= (gamma_new*JfromGamma-gamma_0*JfromGamma0)/((gamma_new-gamma_0)*JfromGamma*JfromGamma0);
     z_smallis[i]:= (Pi*deltais[i]/2)*z_small_factor;
     if (z_smallis[i]<>0) then
      Zmis[i]:= ArcTan(z_smallis[i])/z_smallis[i]
     else
      Zmis[i]:= 1;
*)
    end;
//(*
// By TOPOROV
    delta_m:= 4*Pi*Er*fOuterModerator.A/(GT*(fOuterModerator.A+1)*(fOuterModerator.A+1));
    z_small_m:= delta_m*(gamma_new*JfromGamma-gamma_0*JfromGamma0)/((gamma_new-gamma_0)*JfromGamma*JfromGamma0);
    if (z_small_m<>0) then
     Z_m:= ArcTan(z_small_m)/z_small_m
    else
     Z_m:= 1;
    delta:= 4*Pi*Er*fA/(GT*(fA+1)*(fA+1));
    z_small:= delta*(gamma_new*JfromGamma-gamma_0*JfromGamma0)/((gamma_new-gamma_0)*JfromGamma*JfromGamma0);
    if (z_small<>0) then
     Z:= ArcTan(z_small)/z_small
    else
     Z:= 1;
//*)
(*
// By GOLDSTEIN
    delta_m:= 8.0*Er*fOuterModerator.A/(GT*(fOuterModerator.A+1)*(fOuterModerator.A+1));
    z_small_m:= (Pi*delta_m/2)*(gamma_new*JfromGamma-gamma_0*JfromGamma0)/((gamma_new-gamma_0)*JfromGamma*JfromGamma0);
    if (z_small_m<>0) then
     Z_m:= ArcTan(z_small_m)/z_small_m
    else
     Z_m:= 1;
    delta:= 8.0*Er*fA/(GT*(fA+1)*(fA+1));
    z_small:= (Pi*delta/2)*(gamma_new*JfromGamma-gamma_0*JfromGamma0)/((gamma_new-gamma_0)*JfromGamma*JfromGamma0);
    if (z_small<>0) then
     Z:= ArcTan(z_small)/z_small
    else
     Z:= 1;
*)
    Inc(fStepNo);
    gamma_prev:= gamma_new;
    SumSigma_miMultOneMinusZmi:= 0;
    for I:= 0 to fMixedModerators.Count-1 do
     SumSigma_miMultOneMinusZmi:= SumSigma_miMultOneMinusZmi+fMixedModerators[I].SigmaS*(1-Zmis[I])*fMixedModerators[I].Ro/fRo;
    if s_m>0 then
     gamma_new:= (Sp*(1-Z)+SumSigma_miMultOneMinusZmi+s*(1-Z_m)/(1+(s/s_m-1)*Z_m))/(m+n*(1-Z))
    else
     gamma_new:= (Sp*(1-Z)+SumSigma_miMultOneMinusZmi+s*(1-Z_m)/(1+0))/(m+n*(1-Z));
   end;
//    gamma_new:= 1e20; // DEBUG SSk==>1
   if gamma_new>0 then begin
    if fT>0 then
 //    Theta:= sqrt(fA*GT*GT/(4*Er*k_boltzmann*fT))
     Theta:= 0.5*GT*sqrt(fA/(Er*k_boltzmann*fT))
    else
     Theta:= 0.5*GT*sqrt(fA/(Er*k_boltzmann))*1.0E9;
//    Theta:= sqrt(fA*GT*GT/(4*Er*k_boltzmann*1.0e-18));//1-bad;
    OneResonance:= (sigma_0*GG/Er)*gamma_new*Jfunc(Theta, gamma_new);
   end
   else
    OneResonance:= (Pi/2*sigma_0*GG/Er); //gamma_new==0 - No self shielding ????
   Result:= True;
  except
   Result:= False;
  end;
 end;
(*
   if fT>0 then
 //    Theta:= sqrt(fA*GT*GT/(4*Er*k_boltzmann*fT))
    Theta:= 0.5*GT*sqrt(fA/(Er*k_boltzmann*fT))
   else
    Theta:= 0.5*GT*sqrt(fA/(Er*k_boltzmann))*1.0E9;
//    Theta:= sqrt(fA*GT*GT/(4*Er*k_boltzmann*1.0e-18));//1-bad;
*)
 procedure InitVarsSimle;
 var
  I: integer;
  TheResonance: TResonanceInfo;
 begin
// Init vars for a resonance # ResonanceInfoNo
  Z_m:= 0;
  Z:= 0.5;
  Zmis.Clear;
  z_smallis.Clear;
  deltais.Clear;
  TheResonance:= fResonanceList[fResonanceInCalculationNo];
  with TheResonance do begin
   if TheResonance.A>0 then
    fA:= TheResonance.A;
   if TheResonance.E0>0 then
    Er:= TheResonance.E0
   else
    Er:= -TheResonance.E0;
   GT:= TheResonance.GammaT;
   if not(CalcFissionSSK) then
    GN:= TheResonance.GammaN
   else
    GN:= TheResonance.GammaF;
   GG:= TheResonance.GammaG;
   Sp:= TheResonance.SigmaS;
   g:= (TheResonance.TwoJ+1)/(2*(TheResonance.TwoI+1));
   sigma_0:= TwoPiHsqDivMn*g*GN/(GT*Er);
   m:= sigma_0*GG/GT;
   n:= sigma_0*GN/GT;
   if fT>0 then
    Theta:= 0.5*GT*sqrt(fA/(Er*k_boltzmann*fT))
   else
    Theta:= 0.5*GT*sqrt(fA/(Er*k_boltzmann))*1.0E9;
  end;
// Dancoff  == 1
(*  s_m:= fOuterModerator.SigmaS*fOuterModerator.Ro*fVm/fRo; *)
  SigmaOM:= fOuterModerator.SigmaS*fOuterModerator.Ro;
  aa:= AforCequalOne;
  s:= aa*1/(fRo*fl_mean); // By Toporov
  SumSigma_mi:= 0;
  for I:= 0 to fMixedModerators.Count-1 do
   SumSigma_mi:= SumSigma_mi+fMixedModerators[I].SigmaS*fMixedModerators[I].Ro/fRo;
  gamma_0:= (s+Sp+SumSigma_mi)/sigma_0;
  for I:= 0 to fMixedModerators.Count-1 do begin
   Zmis.Add(0.5);
   z_smallis.Add(0.0);
   deltais.Add(0.0);
  end;
 end;
 function CalcOneResonanceSimple: Boolean;
 var
  I: integer;
  gamma_new, gamma_prev, JfromGamma, JfromGamma0, z_small_factor: double;
  SumSigma_miMultOneMinusZmi: double;
 begin
// OneResonance calculation
  Application.ProcessMessages;
  try
   OneResonance:= 0.0;
//   JfromGamma0:= Jfunc(Theta, gamma_0);  // now Pi/2.0/sqrt(gamma_0*(1+gamma_0))
   JfromGamma0:= Pi/2.0/sqrt(gamma_0*(1+gamma_0));
// No Dancoff
//   mu:= (1-Z_m)/(1+(s/s_m-1)*Z_m);
   mu:= 1-Z_m;
   aa:= AforCequalOne;
   s:= aa*1/(fRo*fl_mean); // By Toporov
(*
   gamma_prev:= 0; //100;
   gamma_new:= 1;
   mu_prev:= 0.1;
   mu:= 0.9;
*)
   gamma_prev:= 1; //100;
   gamma_new:= 0;
   if mu>0.5 then
    mu_prev:= mu-0.5
   else
    mu_prev:= mu+0.5;
   while (not(AreFloatsEqualRel(gamma_new, gamma_prev, fEpsilon))and(fStepNo<fMaxStepNo))
    do begin
    Application.ProcessMessages;
    mu_prev:= mu;
    if (fStepNo=1) then begin
     gamma_new:= (2*s+Sp+SumSigma_mi)/(m+sigma_0);
    end;
//    JfromGamma:= Jfunc(Theta, gamma_new); // now Pi/2.0/sqrt(gamma_new*(1+gamma_new))
    JfromGamma:= Pi/2.0/sqrt(gamma_new*(1+gamma_new));
    z_small_factor:= (gamma_new*JfromGamma-gamma_0*JfromGamma0)/((gamma_new-gamma_0)*JfromGamma*JfromGamma0);
    for i:= 0 to fMixedModerators.Count-1 do begin
     deltais[i]:= 4*Pi*Er*fMixedModerators[i].A/(GT*(fMixedModerators[i].A+1)*(fMixedModerators[i].A+1));
     z_smallis[i]:= deltais[i]*z_small_factor;
     if (z_smallis[i]<>0) then
      Zmis[i]:= ArcTan(z_smallis[i])/z_smallis[i]
     else
      Zmis[i]:= 1;
    end;
    delta_m:= 4*Pi*Er*fOuterModerator.A/(GT*(fOuterModerator.A+1)*(fOuterModerator.A+1));
    z_small_m:= delta_m*(gamma_new*JfromGamma-gamma_0*JfromGamma0)/((gamma_new-gamma_0)*JfromGamma*JfromGamma0);
    if (z_small_m<>0) then
     Z_m:= ArcTan(z_small_m)/z_small_m
    else
     Z_m:= 1;
    delta:= 4*Pi*Er*fA/(GT*(fA+1)*(fA+1));
    z_small:= delta*(gamma_new*JfromGamma-gamma_0*JfromGamma0)/((gamma_new-gamma_0)*JfromGamma*JfromGamma0);
    if (z_small<>0) then
     Z:= ArcTan(z_small)/z_small
    else
     Z:= 1;
    Inc(fStepNo);
    gamma_prev:= gamma_new;
    SumSigma_miMultOneMinusZmi:= 0;
    for I:= 0 to fMixedModerators.Count-1 do
     SumSigma_miMultOneMinusZmi:= SumSigma_miMultOneMinusZmi+fMixedModerators[I].SigmaS*(1-Zmis[I])*fMixedModerators[I].Ro/fRo;
    gamma_new:= (Sp*(1-Z)+SumSigma_miMultOneMinusZmi+s*S)/(m+n*(1-Z));
   end;
   if gamma_new>0 then
    OneResonance:= (sigma_0*GG/Er)*gamma_new*Jfunc(Theta, gamma_new)
   else
    OneResonance:= (Pi/2*sigma_0*GG/Er); //gamma_new==0 - No self shielding ????
   Result:= True;
  except
   Result:= False;
  end;
 end;
 
var
 I_Infinity, OneResonance_Infinity: double;
 ResNo: integer;
begin
 fAbortCalcSSK:= False;
 fAborted:= False;
 if not(SimpleCalc) then begin
  if fResonanceList.Count=0 then begin
   Result:= -1;
   Exit;
  end;
  if RoSSA>0 then
   fRo:= RoSSA;
  if ((fRo*fl_mean)<fRo_mult_fl_mean_min) then begin
   Result:= 1;
   Exit;
  end;
  Zmis:= fZmis;
  z_smallis:= fz_smallis;
  deltais:= fdeltais;
  RI:= 0.0;
  I_Infinity:= 0.0;
  try
   try
    for ResNo:= 0 to fResonanceList.Count-1 do begin
     if ((fResonanceList[ResNo].E0<Emin)or(fResonanceList[ResNo].E0>Emax)) then
      continue;
     fResonanceInCalculationNo:= ResNo;
     InitVars;
     fStepNo:= 1;
     if CalcOneResonance then
      if ((AreFloatsEqualRel(mu, mu_prev, fEpsilon))and(AreFloatsEqualRel(s, s_prev, fEpsilon))) then begin
       OneResonance_Infinity:= Pi/2*sigma_0*GG/Er; //      sigma_0:= TwoPiHsqDivMn*g*GN/(GT*Er);
       if OneResonance<=OneResonance_Infinity then begin
        RI:= RI+OneResonance; //OneResonance <-- calculated in NextStep
        I_Infinity:= I_Infinity+OneResonance_Infinity;
       end;
      end;
    end;
    if I_Infinity<=0 then
     Result:= 1
    else if (I_Infinity+fEpsilon>RI) then
     Result:= RI/I_Infinity
    else
     Result:= -1.0;
   except
    Result:= -1.0;
   end;
  finally
//
  end;
 end
 else begin// SimpleCalc Dancoff=1
  if fResonanceList.Count=0 then begin
   Result:= -1;
   Exit;
  end;
  if RoSSA>0 then
   fRo:= RoSSA;
  if ((fRo*fl_mean)<fRo_mult_fl_mean_min) then begin
   Result:= 1;
   Exit;
  end;
  Zmis:= fZmis;
  z_smallis:= fz_smallis;
  deltais:= fdeltais;
  RI:= 0.0;
  I_Infinity:= 0.0;
  try
   try
    for ResNo:= 0 to fResonanceList.Count-1 do begin
     Application.ProcessMessages;
     if fAbortCalcSSK then begin
      fAborted:= True;
      Result:= -1;
      Exit;
     end;
     fResonanceInCalculationNo:= ResNo;
     InitVarsSimle;
     fStepNo:= 1;
     if CalcOneResonanceSimple then begin
      OneResonance_Infinity:= Pi/2*sigma_0*GG/Er; //      sigma_0:= TwoPiHsqDivMn*g*GN/(GT*Er);
      if OneResonance<=OneResonance_Infinity then begin
       RI:= RI+OneResonance; //OneResonance <-- calculated in NextStep
       I_Infinity:= I_Infinity+OneResonance_Infinity;
      end;
     end;
    end;
    if I_Infinity<=0 then
     Result:= 1
    else if (I_Infinity>=RI) then
     Result:= RI/I_Infinity
    else
     Result:= -1.0;
   except
    Result:= -1.0;
   end;
  finally
//
  end;
 end;
end;

{ TVSLBWRP }

function TVSLBWRP.Clone: Pointer;
begin
 Result:= inherited Clone;
 with TVSLBWRP(Result) do begin
  fThZpA_s:= Self.fThZpA_s;
  fTwoSpin:= Self.fTwoSpin;
  fFor_pi_AP__2:= Self.fFor_pi_AP__2;
  fIsotope_AWR:= Self.fIsotope_AWR;
  fl_State:= Self.fl_State;
  fEdown:= Self.fEdown;
  fEup:= Self.fEup;
  feV:= Self.feV;
  fTwoJ:= Self.fTwoJ;
  fGT:= Self.fGT;
  fGN:= Self.fGN;
  fGG:= Self.fGG;
  fGF:= Self.fGF;
 end;
end;

constructor TVSLBWRP.Create;
begin
 inherited;
end;

constructor TVSLBWRP.CreateFromResonanceInfo(const aThZpA_s: integer;
 const aResonanceInfo: TResonanceInfo);
begin
 with Self, aResonanceInfo do begin
  Self.fThZpA_s:= aThZpA_s;
  Self.fTwoSpin:= aResonanceInfo.TwoI;
  Self.fFor_pi_AP__2:= aResonanceInfo.SigmaS;
  ;
  Self.fIsotope_AWR:= aResonanceInfo.A;
  Self.fl_State:= aResonanceInfo.L;
  Self.fEdown:= aResonanceInfo.Edown;
  Self.fEup:= aResonanceInfo.Eup;
  Self.feV:= aResonanceInfo.E0;
  Self.fTwoJ:= aResonanceInfo.TwoJ;
  Self.fGT:= aResonanceInfo.GammaT;
  Self.fGN:= aResonanceInfo.GammaN;
  Self.fGG:= aResonanceInfo.GammaG;
  Self.fGF:= aResonanceInfo.GammaF;
 end;
end;

constructor TVSLBWRP.Load(S: TVStream; Version: Word);
begin
 inherited;
 with Self, S do begin
  S.read(fThZpA_s, SizeOf(fThZpA_s));
  S.read(fTwoSpin, SizeOf(fTwoSpin));
  S.read(fFor_pi_AP__2, SizeOf(fFor_pi_AP__2));
  S.read(fIsotope_AWR, SizeOf(fIsotope_AWR));
  S.read(fl_State, SizeOf(fl_State));
  S.read(fEdown, SizeOf(fEdown));
  S.read(fEup, SizeOf(fEup));
  S.read(feV, SizeOf(feV));
  S.read(fTwoJ, SizeOf(fTwoJ));
  S.read(fGT, SizeOf(fGT));
  S.read(fGN, SizeOf(fGN));
  S.read(fGG, SizeOf(fGG));
  S.read(fGF, SizeOf(fGF));
 end;
end;

procedure TVSLBWRP.Store(S: TVStream);
begin
 inherited;
 with Self, S do begin
  S.write(fThZpA_s, SizeOf(fThZpA_s));
  S.write(fTwoSpin, SizeOf(fTwoSpin));
  S.write(fFor_pi_AP__2, SizeOf(fFor_pi_AP__2));
  S.write(fIsotope_AWR, SizeOf(fIsotope_AWR));
  S.write(fl_State, SizeOf(fl_State));
  S.write(fEdown, SizeOf(fEdown));
  S.write(fEup, SizeOf(fEup));
  S.write(feV, SizeOf(feV));
  S.write(fTwoJ, SizeOf(fTwoJ));
  S.write(fGT, SizeOf(fGT));
  S.write(fGN, SizeOf(fGN));
  S.write(fGG, SizeOf(fGG));
  S.write(fGF, SizeOf(fGF));
 end;
end;

{ TVSLBWRPColl }

function TVSLBWRPColl.Clone: Pointer;
begin
 Result:= inherited Clone;
end;

constructor TVSLBWRPColl.Create;
begin
 inherited;
 MakeIndexBy_ThZpA_s;
end;

constructor TVSLBWRPColl.Load(S: TVStream; Version: Word);
begin
 inherited;
end;

function CompTVSLBWRpThZpA_s(Item1, Item2: Pointer): Integer;
var
 P1, P2: TVSLBWRP;
begin
 P1:= TVSLBWRP(Item1);
 P2:= TVSLBWRP(Item2);
 if P1.fThZpA_s<P2.fThZpA_s then
  Result:= -1
 else if P1.fThZpA_s>P2.fThZpA_s then
  Result:= 1
 else
  Result:= 0;
end;

function TVThZpA_s_OfSLBWRP(Item: Pointer): integer;
begin
 Result:= TVSLBWRP(Item).fThZpA_s;
end;

procedure TVSLBWRPColl.MakeIndexBy_ThZpA_s;
var
 PIR: PTVIndexRec;
begin
 CreateIndexRec(PIR);
 with PIR^ do
 begin
  IndName:= IndexBy_ThZpA_s;
  IndCompare:= CompTVSLBWRpThZpA_s;
  Regular:= True;
  Unique:= False;
  IndType:= itInteger;
  KeyOf_Integer:= TVThZpA_s_OfSLBWRP;
  Descending:= False;
 end;
 AddIndex(PIR, True);
end;

procedure TVSLBWRPColl.Store(S: TVStream);
begin
 inherited;
end;

{ TVRMRP }

function TVRMRP.Clone: Pointer;
begin
 Result:= inherited Clone;
 with TVSLBWRP(Result) do
  fGFb:= Self.fGFb;
end;

constructor TVRMRP.Load(S: TVStream; Version: Word);
begin
 inherited;
 with Self, S do begin
  S.read(fGFb, SizeOf(fGFb));
// Both lines moved to FillResonancesInfoList
//  Self.fGT:= sqrt(Self.fGN*Self.fGN+Self.fGG*Self.fGG+Self.fGF*Self.fGF+Self.fGFB*Self.fGFB);
//  Self.fGF:= sqrt(Self.fGF*Self.fGF+Self.fGFB*Self.fGFB);
 end;
end;

procedure TVRMRP.Store(S: TVStream);
begin
 inherited;
 with Self, S do
  S.write(fGFb, SizeOf(fGFb));
end;

function LoadAllResonancesFromOOB(const aDataBaseFileName: string): integer;
begin
 Result:= -1;
 if FileExists(aDatabaseFileName) then begin
  try
   if SLBWRPs<>nil then with SLBWRPs do begin
     DeactivateAllIndexes;
     ClearAndFreeItems;
     LoadStorageObject(aDataBaseFileName, rg_TVSLBWRPcoll, SLBWRPs);
     Result:= Count;
     UpdateIndexes;
     ActivateAllIndexes;
     CurrIndex:= GetIndexRec('IndexBy_ThZpA_s');
    end;
  except
   Result:= -1;
  end;
  try
   if MLBWRPs<>nil then with MLBWRPs do begin
     DeactivateAllIndexes;
     ClearAndFreeItems;
     LoadStorageObject(aDataBaseFileName, rg_TVMLBWRPcoll, MLBWRPs);
     Result:= Count;
     UpdateIndexes;
     ActivateAllIndexes;
     CurrIndex:= GetIndexRec('IndexBy_ThZpA_s');
    end;
  except
   Result:= -1;
  end;
  try
   if RMRPs<>nil then with RMRPs do begin
     DeactivateAllIndexes;
     ClearAndFreeItems;
     LoadStorageObject(aDataBaseFileName, rg_TVRMRPcoll, RMRPs);
     Result:= Count;
     UpdateIndexes;
     ActivateAllIndexes;
     CurrIndex:= GetIndexRec('IndexBy_ThZpA_s');
    end;
  except
   Result:= -1;
  end;
 end;
 ResonanceLoaded:= True;
end;

//function FillResonancesInfoList(const aThZpA_s: integer;var aResInfoList: TResonanceInfoList;
// const l_min: integer=-MaxInt;const l_max: integer=MaxInt;const ResonanceType: string='ALL'): integer;

function FillResonancesInfoList(const aThZpA_s: integer; var aResInfoList: TResonanceInfoList;
// const ResonanceType: string='ALL';const Emin: double=0.5;const Emax: double=100.0E3;
 const ResonanceType: string='ALL'; const Emin: double=0.5E-13; const Emax: double=100.0E13;
 const l_min: integer=-MaxInt; const l_max: integer=MaxInt): integer;
var
 I, CountFounded, FirstFounded: integer;
 aResonance: TResonanceInfo;
begin
 aResInfoList.Clear;
 if ((UpperCase(Trim(ResonanceType))='ALL')or(UpperCase(Trim(ResonanceType))='SLBWRP')) then
  with SLBWRPs do
   if Count>0 then begin
    CurrIndex:= GetIndexRec('IndexBy_ThZpA_s');
    CountFounded:= SelectRange_Integer(CurrIndex, aThZpA_s, aThZpA_s, FirstFounded);
    for I:= FirstFounded to FirstFounded+CountFounded-1 do begin
     if ((TVSLBWRP(SLBWRPs[I]).eV>0)and(TVSLBWRP(SLBWRPs[I]).l_State>=l_min)and(TVSLBWRP(SLBWRPs[I]).l_State<=l_max)
      and(TVSLBWRP(SLBWRPs[I]).eV>=Emin)and(TVSLBWRP(SLBWRPs[I]).eV<=Emax)) then begin
      with aResonance, TVSLBWRP(SLBWRPs[I]) do begin
       aResonance.ResonanceType:= rtSLBWRP;
       aResonance.A:= TVSLBWRP(SLBWRPs[I]).Isotope_AWR;
       aResonance.TwoI:= TVSLBWRP(SLBWRPs[I]).TwoSpin;
       aResonance.TwoJ:= TVSLBWRP(SLBWRPs[I]).TwoJ;
       aResonance.SigmaS:= TVSLBWRP(SLBWRPs[I]).For_pi_AP__2;
       aResonance.L:= TVSLBWRP(SLBWRPs[I]).l_State;
       aResonance.Edown:= TVSLBWRP(SLBWRPs[I]).Edown;
       aResonance.Eup:= TVSLBWRP(SLBWRPs[I]).Eup;
       aResonance.E0:= TVSLBWRP(SLBWRPs[I]).eV;
       aResonance.GammaT:= TVSLBWRP(SLBWRPs[I]).GT;
       aResonance.GammaN:= TVSLBWRP(SLBWRPs[I]).GN;
       aResonance.GammaG:= TVSLBWRP(SLBWRPs[I]).GG;
       aResonance.GammaF:= TVSLBWRP(SLBWRPs[I]).GF;
       aResonance.GammaFB:= -1;
      end;
      aResInfoList.Add(aResonance);
     end;
    end;
   end;
 if ((UpperCase(Trim(ResonanceType))='ALL')or(UpperCase(Trim(ResonanceType))='MLBWRP')) then
  with MLBWRPs do
   if Count>0 then begin
    CurrIndex:= GetIndexRec('IndexBy_ThZpA_s');
    CountFounded:= SelectRange_Integer(CurrIndex, aThZpA_s, aThZpA_s, FirstFounded);
    for I:= FirstFounded to FirstFounded+CountFounded-1 do begin
     if ((TVMLBWRP(MLBWRPs[I]).eV>0)and(TVMLBWRP(MLBWRPs[I]).l_State>=l_min)and(TVMLBWRP(MLBWRPs[I]).l_State<=l_max)
      and(TVMLBWRP(MLBWRPs[I]).eV>=Emin)and(TVMLBWRP(MLBWRPs[I]).eV<=Emax)) then begin
      with aResonance, TVMLBWRP(MLBWRPs[I]) do begin
       aResonance.ResonanceType:= rtMLBWRP;
       aResonance.A:= TVMLBWRP(MLBWRPs[I]).Isotope_AWR;
       aResonance.TwoI:= TVMLBWRP(MLBWRPs[I]).TwoSpin;
       aResonance.TwoJ:= TVMLBWRP(MLBWRPs[I]).TwoJ;
       aResonance.SigmaS:= TVMLBWRP(MLBWRPs[I]).For_pi_AP__2;
       aResonance.L:= TVMLBWRP(MLBWRPs[I]).l_State;
       aResonance.Edown:= TVSLBWRP(MLBWRPs[I]).Edown;
       aResonance.Eup:= TVMLBWRP(MLBWRPs[I]).Eup;
       aResonance.E0:= TVMLBWRP(MLBWRPs[I]).eV;
       aResonance.GammaT:= TVMLBWRP(MLBWRPs[I]).GT;
       aResonance.GammaN:= TVMLBWRP(MLBWRPs[I]).GN;
       aResonance.GammaG:= TVMLBWRP(MLBWRPs[I]).GG;
       aResonance.GammaF:= TVMLBWRP(MLBWRPs[I]).GF;
       aResonance.GammaFB:= -1;
      end;
      aResInfoList.Add(aResonance);
     end;
    end;
   end;
 if ((UpperCase(Trim(ResonanceType))='ALL')or(UpperCase(Trim(ResonanceType))='RMRP')) then
  with RMRPs do
   if Count>0 then begin
    CurrIndex:= GetIndexRec('IndexBy_ThZpA_s');
    CountFounded:= SelectRange_Integer(CurrIndex, aThZpA_s, aThZpA_s, FirstFounded);
    for I:= FirstFounded to FirstFounded+CountFounded-1 do begin
     if ((TVRMRP(RMRPs[I]).eV>0)and(TVRMRP(RMRPs[I]).l_State>=l_min)and(TVRMRP(RMRPs[I]).l_State<=l_max)
      and(TVRMRP(RMRPs[I]).eV>=Emin)and(TVRMRP(RMRPs[I]).eV<=Emax)) then begin
      with aResonance, TVRMRP(RMRPs[I]) do begin
       aResonance.ResonanceType:= rtRMRP;
       aResonance.A:= TVRMRP(RMRPs[I]).Isotope_AWR;
       aResonance.TwoI:= TVRMRP(RMRPs[I]).TwoSpin;
       aResonance.TwoJ:= TVRMRP(RMRPs[I]).TwoJ;
       aResonance.SigmaS:= TVRMRP(RMRPs[I]).For_pi_AP__2;
       aResonance.L:= TVRMRP(RMRPs[I]).l_State;
       aResonance.Edown:= TVRMRP(RMRPs[I]).Edown;
       aResonance.Eup:= TVRMRP(RMRPs[I]).Eup;
       aResonance.E0:= TVRMRP(RMRPs[I]).eV;
       aResonance.GammaT:= TVRMRP(RMRPs[I]).GT; //-1
       aResonance.GammaN:= TVRMRP(RMRPs[I]).GN;
       aResonance.GammaG:= TVRMRP(RMRPs[I]).GG;
       aResonance.GammaF:= TVRMRP(RMRPs[I]).GF;
       aResonance.GammaFB:= TVRMRP(RMRPs[I]).GFB;
//qqqqqqq
       aResonance.GammaF:= sqrt(TVRMRP(RMRPs[I]).GF*TVRMRP(RMRPs[I]).GF+TVRMRP(RMRPs[I]).GFB*TVRMRP(RMRPs[I]).GFB);
       aResonance.GammaT:= sqrt(TVRMRP(RMRPs[I]).fGN*TVRMRP(RMRPs[I]).fGN+TVRMRP(RMRPs[I]).fGG*TVRMRP(RMRPs[I]).fGG+
        TVRMRP(RMRPs[I]).fGF*TVRMRP(RMRPs[I]).fGF+TVRMRP(RMRPs[I]).fGFB*TVRMRP(RMRPs[I]).fGFB);
      end;
      aResInfoList.Add(aResonance);
     end;
    end;
   end;
 Result:= aResInfoList.Count;
end;

function Resonances4ThZpA_sLoaded(const aThZpA_s: integer;
 const ResonanceType: string='ALL'; const Emin: double=0.5E-13; const Emax: double=100.0E13;
 const l_min: integer=-MaxInt; const l_max: integer=MaxInt): integer;
var
 CountFounded, FirstFounded: integer;
begin
 Result:= -1;
 if ((UpperCase(Trim(ResonanceType))='ALL')or(UpperCase(Trim(ResonanceType))='SLBWRP')) then
  with SLBWRPs do
   if Count>0 then begin
    CurrIndex:= GetIndexRec('IndexBy_ThZpA_s');
    CountFounded:= SelectRange_Integer(CurrIndex, aThZpA_s, aThZpA_s, FirstFounded);
    if CountFounded>0 then begin
     Result:= CountFounded;
     Exit;
    end;
   end;
 if ((UpperCase(Trim(ResonanceType))='ALL')or(UpperCase(Trim(ResonanceType))='MLBWRP')) then
  with MLBWRPs do
   if Count>0 then begin
    CurrIndex:= GetIndexRec('IndexBy_ThZpA_s');
    CountFounded:= SelectRange_Integer(CurrIndex, aThZpA_s, aThZpA_s, FirstFounded);
    if CountFounded>0 then begin
     Result:= CountFounded;
     Exit;
    end;
   end;
 if ((UpperCase(Trim(ResonanceType))='ALL')or(UpperCase(Trim(ResonanceType))='RMRP')) then
  with RMRPs do
   if Count>0 then begin
    CurrIndex:= GetIndexRec('IndexBy_ThZpA_s');
    CountFounded:= SelectRange_Integer(CurrIndex, aThZpA_s, aThZpA_s, FirstFounded);
    if CountFounded>0 then begin
     Result:= CountFounded;
     Exit;
    end;
   end;
end;

procedure CopyResonanceInfo(const Src: TResonanceInfo; var Dst: TResonanceInfo);
begin
 with Src, Dst do begin
  Dst.ResonanceType:= Src.ResonanceType;
  Dst.A:= Src.A;
  Dst.TwoI:= Src.TwoI;
  Dst.TwoJ:= Src.TwoJ;
  Dst.SigmaS:= Src.SigmaS;
  Dst.L:= Src.L;
  Dst.Edown:= Src.Edown;
  Dst.Eup:= Src.Eup;
  Dst.E0:= Src.E0;
  Dst.GammaT:= Src.GammaT;
  Dst.GammaN:= Src.GammaN;
  Dst.GammaG:= Src.GammaG;
  Dst.GammaF:= Src.GammaF;
  Dst.GammaFB:= Src.GammaFB;
 end;
end;

function ResonanceTypeToStr(aType: TResonanceType): string;
begin
 case aType of
  rtSLBWRP: Result:= 'SLBWRP';
  rtMLBWRP: Result:= 'MLBWRP';
  rtRMRP: Result:= 'RMRP';
 else Result:= 'Other';
 end;
end;
(*
procedure TSelfShieldingCalculator.SetOuterModerator(
  aOuterModeratorInfo: TOuterModeratorInfo);
begin
 if aOuterModeratorInfo.Ro<0.1 then begin
  MessageDlg('Outer Moderator is too small !'+#13+#10+'Such problem may cause too slow calculations ! ', mtWarning, [mbOK], 0);
 end;
 fOuterModerator:= aOuterModeratorInfo;
end;
*)

procedure TSelfShieldingCalculator.SetVom(aVom: double);
begin
 if aVom<>fVom then begin
  if aVom<0.1 then begin
   MessageDlg(Format('Outer moderator volume part is too small = %g!'+#13+#10+
    'Such problem may cause too slow calculations ! ', [aVom]), mtWarning, [mbOK], 0);
  end;
  fVom:= aVom;
 end;
end;
//C         SUBROUTINE JAC(N,X,FVEC,FJAC,LDFJAC,IFLAG)
//C         INTEGER N,LDFJAC,IFLAG
//C         DOUBLE PRECISION X(N),FVEC(N),FJAC(LDFJAC,N)


{$IFDEF DEBUG_SSK}

procedure JAC(var N_: Longint; var X_, FVEC_, FJAC_: Double;
 var LDFJAC_, IFLAG_: Longint); stdcall;
begin
// Dummy
 a_TmpFloat:= FVEC_;
end;

procedure FCN(var N_: Longint; var X_, FVEC_; var IFLAG_: Longint);
const
 BigFloat=1.0E13;
 CallNo: integer=0;
var
 X: array[1..3] of Double absolute X_;
 FVEC: array[1..3] of Double absolute FVEC_;
 IFLAG: Longint absolute IFLAG_;
begin
 CallNo:= CallNo+1;
 if not(X[1]>0) then begin
  FVEC[1]:= -(1+X[1])*BigFloat;
 end
 else if not(X[1]<1) then begin
  FVEC[1]:= X[1]*BigFloat;
 end;
 if not(X[2]>0) then begin
  FVEC[2]:= -(1+X[2])*BigFloat;
 end
 else if not(X[2]<1) then begin
  FVEC[2]:= X[2]*BigFloat;
 end;
 if not(X[3]>0) then begin
  FVEC[3]:= -(1+X[3])*BigFloat;
 end
 else if not(X[3]<1) then begin
  FVEC[3]:= X[3]*BigFloat;
 end;
 if not((X[1]>0)and(X[2]>0)and(X[3]>0)and(X[1]<1)and(X[2]<1)and(X[3]<1)) then
  Exit;
 a_ka:= X[1];
 a_lambda:= X[2];
 a_mu:= X[3];
// Dancoff CUT
 if a_CellType<>ctNoCell then begin
  a_c:= 1-exp(-a_tau*a_s_m*a_l_mean*a_Vom*a_mu)/(1+(1-a_tau)*a_s_m*a_l_mean*a_Vom*a_mu);
  if a_c<0 then
   a_c:= 0.0;
  a_aa:= 1.27/(1+0.1*a_c);
//a_s:= a_aa*(1-a_c)/(a_N_f*a_l_mean);
  a_s:= a_aa*(1-a_c)/(a_N_f*a_l_mean);
  if a_s<0 then
   a_s:= a_s_m*a_N_m/a_N_f;
 end;
// Dancoff end
 a_betaSq:= 1+a_sigma_0/(a_ka*a_sigma_am+a_lambda*a_sigma_f+a_mu*a_s)*
  (a_G_gamma+a_lambda*a_G_n)/a_G;
 a_beta:= sqrt(a_betaSq);
 a_TmpFloat:= 2*a_Er/(a_G*(a_beta_111+a_beta));
 a_x_ka:= a_TmpFloat*a_OneMinusAlpha_ka;
 a_x_lambda:= a_TmpFloat*a_OneMinusAlpha_lambda;
 a_x_mu:= a_TmpFloat*a_OneMinusAlpha_mu;
 if ((a_x_ka>0)or(a_x_ka<0)) then
  a_x_ka:= ArcTan(a_x_ka)/a_x_ka
 else
  a_x_ka:= 1;
 if ((a_x_lambda>0)or(a_x_lambda<0)) then
  a_x_lambda:= ArcTan(a_x_lambda)/a_x_lambda
 else
  a_x_lambda:= 1;
 if ((a_x_mu>0)or(a_x_mu<0)) then
  a_x_mu:= ArcTan(a_x_mu)/a_x_mu
 else
  a_x_mu:= 1;
 FVEC[1]:= 1-a_x_ka-a_ka;
 FVEC[2]:= 1-a_x_lambda-a_lambda;
 FVEC[3]:= 1-(1-a_mu+a_mu*a_s/a_s_m)*a_x_mu-a_mu;
(*
 FVEC[1]:= (1-a_x_ka-a_ka)*(1-a_x_ka-a_ka)+
  (1-a_x_lambda-a_lambda)*(1-a_x_lambda-a_lambda)+
  (1-(1-a_mu+a_mu*a_s/a_s_m)*a_x_mu-a_mu)*(1-(1-a_mu+a_mu*a_s/a_s_m)*a_x_mu-a_mu);
 FVEC[2]:= 0;
 FVEC[3]:= 0;
*)
 if (IFLAG>0) then begin
  DNSQ_StdOut.Add(' ka = '+FloatToStr(a_ka));
  DNSQ_StdOut.Add(' la = '+FloatToStr(a_lambda));
  DNSQ_StdOut.Add(' mu = '+FloatToStr(a_mu));
  DNSQ_StdOut.Add(' F(ka) = '+FloatToStr(FVEC[1]));
  DNSQ_StdOut.Add(' F(la) = '+FloatToStr(FVEC[2]));
  DNSQ_StdOut.Add(' F(mu) = '+FloatToStr(FVEC[3]));
  DNSQ_StdOut.Add(' *********** CallNo='+IntToStr(CallNo)+' **********************');
 end;
end;

function TSelfShieldingCalculator.CalcSSK_Goldstein(const RoSSA: double;
 const UseDNSQ: Boolean=False; const CalcFissionSSK: Boolean=False;
 const Emin: double=0.0; const Emax: double=1.0E18): double;
var
 N_am, N_f, N_m: double; // concentrations MM, RA, OM respectively
 A_am, A_m: double; // masses MM, OM respectively
 OneMinusAlpha_ka, OneMinusAlpha_lambda, OneMinusAlpha_mu: double;
 sigma_am, s_m, s, sigma_0, sigma_f, G_gamma, G_n, G, Er: double;
 Theta: double;
 OneResonance_Infinity, OneResonance_SSK: double;
 TotalResonanceInfinity, TotalResonanceSS: double;
 tau_0, tau, c, alpha, aa: double; // for Dancoff c depends on mu
// I, ResNo: integer;
 
 
 function CalcOneResonance_SSK: double;
// const
//  Relax=1.0;
 var
  ka, lambda, mu: double;
  kaPrev, lambdaPrev, muPrev: double;
  x_ka, x_lambda, x_mu: double;
  betaSq, beta: double;
  beta_111, TmpFloat: double;
  f1, f2, f3: double; // To find zero
  StepNo: integer;
 begin
  ka:= 1;
  lambda:= 1;
  mu:= 1;
// Dancoff Full
  if (fCellType=ctHex) then begin
   tau_0:= -0.12;
   alpha:= sqrt(3)/2;
  end
  else if (fCellType=ctSquare) then begin
   tau_0:= -0.08;
   alpha:= 1.0;
  end;
  if fCellType<>ctNoCell then begin
   tau:= (sqrt(Pi/(4*alpha))*sqrt(1+fVom/(1+fVc))-1)/(fVom*sqrt(1+fVc))+tau_0*(1+0.5*sqrt(fVc/(1-fVc)));
   c:= 1-exp(-tau*s_m*fl_mean*fVom*mu)/(1+(1-tau)*s_m*fl_mean*fVom*mu);
   if c<0 then
    c:= 0.0;
   aa:= 1.27/(1+0.1*c);
   s:= aa*(1-c)/(N_f*fl_mean);
   if s<0 then
    s:= s_m*N_m/N_f;
  end
  else
   s:= 1/(N_f*fl_mean);
// End Dancoff
  try
//   Initial
   betaSq:= 1+sigma_0/(ka*sigma_am+lambda*sigma_f+mu*s)*(G_gamma+lambda*G_n)/G;
   beta:= sqrt(betaSq);
   beta_111:= beta;
// initial point
   ka:= 0.5;
   lambda:= 0.0;
   mu:= 0.5;
   if UseDNSQ then begin
    a_beta_111:= beta_111;
    a_CellType:= fCellType;
    a_tau:= tau;
    a_s_m:= s_m;
    a_l_mean:= fl_mean;
    a_Vom:= fVom;
    a_c:= c;
    a_aa:= aa;
    a_s:= s;
    a_N_f:= N_f;
    a_N_m:= N_m;
    a_sigma_0:= sigma_0;
    a_sigma_am:= sigma_am;
    a_sigma_f:= sigma_f;
    a_G_gamma:= G_gamma;
    a_G_n:= G_n;
    a_G:= G;
    a_beta:= beta;
    a_Er:= Er;
    a_OneMinusAlpha_ka:= OneMinusAlpha_ka;
    a_OneMinusAlpha_lambda:= OneMinusAlpha_lambda;
    a_OneMinusAlpha_mu:= OneMinusAlpha_mu;
// DNSQD_ call
//      aFCN:= @FCN;
//      aJAC:= @JAC;
    aIOPT:= 2;
    aN:= 3;
    aX[1]:= 0.5; aX[2]:= 0.1; aX[3]:= 0.9; // initial point
    aLDFJAC:= 3; // qqqq not used >= 3
    aXTOL:= 1.0E-6; // tolerance
    aMAXFEV:= MaxStepNo*MaxStepNo;
    aML:= 1; aMU:= 1; // qqqq not used <= 3
    aEPSFCN:= 1.0E-7;
    aDIAG[1]:= 1.0; aDIAG[2]:= 1.0; aDIAG[3]:= 1.0;
    aMODE:= 2;
    aFACTOR:= 100.0;
    aNPRINT:= 1; //1; // qqqq >0 - print
    aINFO:= 1;
    aLR:= 6;
    DNSQ(@FCN, @JAC, aIOPT, aN, aX[1], aFVEC, aFJAC, aLDFJAC, aXTOL, aMAXFEV, aML, aMU,
     aEPSFCN, aDIAG, aMODE, aFACTOR, aNPRINT, aINFO, aNFEV, aNJEV,
     aR, aLR, aQTF, aWA1, aWA2, aWA3, aWA4);
    if (aINFO<>1) then begin
     betaSq:= -3.0;
     beta:= -3.0;
    end
    else begin
     betaSq:= a_betaSq;
     beta:= a_beta;
    end;
   end
   else
// Iterations
    for StepNo:= 1 to fMaxStepNo do begin
     fStepNo:= StepNo;
     kaPrev:= ka;
     lambdaPrev:= lambda;
     muPrev:= mu;
// Dancoff CUT
     if fCellType<>ctNoCell then begin
      c:= 1-exp(-tau*s_m*fl_mean*fVom*mu)/(1+(1-tau)*s_m*fl_mean*fVom*mu);
      if c<0 then
       c:= 0.0;
      aa:= 1.27/(1+0.1*c);
      s:= aa*(1-c)/(N_f*fl_mean);
      if s<0 then
       s:= s_m*N_m/N_f;
     end;
// End Dancoff
     betaSq:= 1+sigma_0/(ka*sigma_am+lambda*sigma_f+mu*s)*(G_gamma+lambda*G_n)/G;
     beta:= sqrt(betaSq);
     TmpFloat:= 2*Er/(G*(beta_111+beta));
     x_ka:= TmpFloat*OneMinusAlpha_ka;
     x_lambda:= TmpFloat*OneMinusAlpha_lambda;
     x_mu:= TmpFloat*OneMinusAlpha_mu;
     if ((x_ka>0)or(x_ka<0)) then
      x_ka:= ArcTan(x_ka)/x_ka
     else
      x_ka:= 1;
     if ((x_lambda>0)or(x_lambda<0)) then
      x_lambda:= ArcTan(x_lambda)/x_lambda
     else
      x_lambda:= 1;
     if ((x_mu>0)or(x_mu<0)) then
      x_mu:= ArcTan(x_mu)/x_mu
     else
      x_mu:= 1;
//(*
     ka:= 1-x_ka;
     lambda:= 1-x_lambda;
     mu:= 1-(1-mu+mu*s/s_m)*x_mu;
//*)
(*
    ka:= (1-Relax)*ka+Relax*(1-x_ka*x_ka);
    lambda:= (1-Relax)*lambda+Relax*(1-x_lambda*x_lambda);
    mu:= (1-Relax)*mu+Relax*(1-(1-mu+mu*s/s_m)*x_mu);
*)
     if ((ka<0)or(ka>1)) then
      ka:= 0.5+0.1*Random;
     if ((lambda<0)or(lambda>1)) then
      lambda:= fEpsilon*Random;
     if ((mu<0)or(mu>1)) then
      mu:= 0.5*muPrev+0.5*Random;
     f1:= 1-x_ka-ka;
     f2:= 1-x_lambda-lambda;
     f3:= 1-(1-mu+mu*s/s_m)-mu;
     if ((AreFloatsEqualAbs(f1, 0, fEpsilon))and(AreFloatsEqualAbs(f2, 0, fEpsilon))
      and(AreFloatsEqualAbs(f3, 0, fEpsilon))
      and(AreFloatsEqualAbs(ka, kaPrev, fEpsilon))and(AreFloatsEqualAbs(lambda, lambdaPrev, fEpsilon))
      and(AreFloatsEqualAbs(mu, muPrev, fEpsilon))) then
      break;
//    f1:= 1-x_ka*x_ka-ka;
//    f2:= 1-x_lambda*x_lambda-lambda;
//    f3:= 1-(1-mu+mu*s/s_m)*x_mu-mu;
// Iterations end;
    end;
//   Result:= f1+f2+f3; // qqqq for Debug Compilr
   if (fT>0) then
    Result:= 2/Pi*1/(betaSq-1)*Jfunc(Theta, 1/(betaSq-1))// qqqq Must return  gamma=(betaSq-1);
   else
    Result:= 1/beta; // qqqq Must return while no Theta Temperature
  except
   Result:= -1;
  end;
 end;
 
var
 I, TheResNo: integer;
begin
// init vars
 if RoSSA>0 then
  N_f:= RoSSA
 else
  N_f:= fRo;
 if not(fl_mean>0) then begin
  Result:= -2;
  Exit;
 end;
 N_am:= 0;
 sigma_am:= 0;
 A_am:= 0;
 for I:= 0 to fMixedModerators.Count-1 do begin
  N_am:= N_am+fMixedModerators[I].Ro;
  sigma_am:= sigma_am+fMixedModerators[I].Ro*fMixedModerators[I].SigmaS;
  A_am:= A_am+fMixedModerators[I].Ro*fMixedModerators[I].A;
 end;
 A_am:= A_am/N_am; // mean
(*
 sigma_am:= sigma_am/N_am; // mean
 sigma_am:= sigma_am*N_am/N_f; // for one RA atom
*)
 sigma_am:= sigma_am/N_f; // mean for one RA atom
 A_m:= fOuterModerator.A;
 N_m:= fOuterModerator.Ro;
 s_m:= fOuterModerator.SigmaS*fOuterModerator.Ro/N_f*fVom;
 TotalResonanceInfinity:= 0;
 TotalResonanceSS:= 0;
 OneMinusAlpha_ka:= 4*A_am/((A_am*A_am+1)*(A_am*A_am+1));
 OneMinusAlpha_lambda:= 4*fA/((fA*fA+1)*(fA*fA+1));
 OneMinusAlpha_mu:= 4*A_m/((A_m*A_m+1)*(A_m*A_m+1));
 try
  for TheResNo:= 0 to fResonanceList.Count-1 do begin
   if ((fResonanceList[TheResNo].E0<Emin)or(fResonanceList[TheResNo].E0>Emax)) then
    continue;
   fResonanceInCalculationNo:= TheResNo;
//   InitVars; // Set  Active resonance
   if UseDNSQ then
    DNSQ_StdOut.Clear;
   with fResonanceList[TheResNo] do begin
    if fResonanceList[TheResNo].E0>0 then
     Er:= fResonanceList[TheResNo].E0
    else
     Er:= -fResonanceList[TheResNo].E0;
    G:= fResonanceList[TheResNo].GammaT;
    if not(CalcFissionSSK) then
     G_n:= fResonanceList[TheResNo].GammaN
    else
     G_n:= fResonanceList[TheResNo].GammaF;
    G_gamma:= fResonanceList[TheResNo].GammaG;
    sigma_f:= fResonanceList[TheResNo].SigmaS;
//   g:= (fResonanceList[ResNo].TwoJ+1)/(2*(fResonanceList[ResNo].TwoI+1));
    sigma_0:= TwoPiHsqDivMn*(fResonanceList[TheResNo].TwoJ+1)/(2*(fResonanceList[TheResNo].TwoI+1))*G_n/(G*Er);
    if fT>0 then
     Theta:= 0.5*G*sqrt(fA/(Er*k_boltzmann*fT))
    else
     Theta:= 0.5*G*sqrt(fA/(Er*k_boltzmann))*1.0E9;
   end;
// End of  InitVars; // Set  Active resonance
   OneResonance_Infinity:= Pi/2*sigma_0*G_gamma/Er; //      sigma_0:= TwoPiHsqDivMn*g*GN/(GT*Er);
   OneResonance_SSK:= CalcOneResonance_SSK; // ka,lamda,mu itterations
   if not(OneResonance_SSK<0) then begin
    TotalResonanceInfinity:= TotalResonanceInfinity+OneResonance_Infinity;
    TotalResonanceSS:= TotalResonanceSS+OneResonance_Infinity*OneResonance_SSK;
   end;
  end;
  if UseDNSQ then
  try
   DNSQ_StdOut.SaveToFile('_DNSQ.log'); // qqqq debud
  except
//
  end;
  Result:= TotalResonanceSS/TotalResonanceInfinity;
 except
  Result:= -1;
 end;
end;

(*
 procedure InitVars; // was in CalcSSK_Goldstrein(const RoSSA: double; const SimpleCalc, CalcFissionSSK: Boolean; const Emin, Emax: double): double;
 var
  TheResonance: TResonanceInfo;
 begin
  TheResonance:= fResonanceList[fResonanceInCalculationNo];
  with TheResonance do begin
   if TheResonance.E0>0 then
    Er:= TheResonance.E0
   else
    Er:= -TheResonance.E0;
   G:= TheResonance.GammaT;
   if not(CalcFissionSSK) then
    G_n:= TheResonance.GammaN
   else
    G_n:= TheResonance.GammaF;
   G_gamma:= TheResonance.GammaG;
   sigma_f:= TheResonance.SigmaS;
//   g:= (TheResonance.TwoJ+1)/(2*(TheResonance.TwoI+1));
   sigma_0:= TwoPiHsqDivMn*(TheResonance.TwoJ+1)/(2*(TheResonance.TwoI+1))*G_n/(G*Er);
   if fT>0 then
    Theta:= 0.5*G*sqrt(fA/(Er*k_boltzmann*fT))
   else
    Theta:= 0.5*G*sqrt(fA/(Er*k_boltzmann))*1.0E9;
  end;
 end;
*)
{$ENDIF}//{$IFDEF DEBUG_SSK}

initialization
 RegisterTVObject(rg_TVSLBWRP, TVSLBWRP, 1, True);
 RegisterTVObject(rg_TVSLBWRPcoll, TVSLBWRPcoll, 1, True);
 RegisterTVObject(rg_TVMLBWRP, TVMLBWRP, 1, True);
 RegisterTVObject(rg_TVMLBWRPcoll, TVMLBWRPcoll, 1, True);
 RegisterTVObject(rg_TVRMRP, TVRMRP, 1, True);
 RegisterTVObject(rg_TVRMRPcoll, TVRMRPcoll, 1, True);
 SLBWRPs:= TVSLBWRPColl.Create;
 MLBWRPs:= TVMLBWRPColl.Create;
 RMRPs:= TVRMRPColl.Create;
 ResonanceLoaded:= False;
end.

