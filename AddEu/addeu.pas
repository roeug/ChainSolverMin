{ This file was automatically created by Typhon IDE. Do not edit!
  This source is only used to compile and install the package.
 }

unit addeu;

{$warn 5023 off : no warning about unused units}
interface

uses
 BKStringGrid, TyphonPackageIntf;

implementation

procedure Register;
begin
  RegisterUnit('BKStringGrid', @BKStringGrid.Register);
end;

initialization
  RegisterPackage('addeu', @Register);
end.
