program StartApp;

uses
  Forms,
  midaslib,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Mainm in 'Mainm.pas' {MainmForm: TUnimForm},
  uRascunho in 'src\component\uRascunho.pas' {frmRascunho: TUnimForm},
  uCardapioItems in 'src\component\uCardapioItems.pas' {frmCardapioItems: TUnimForm};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
