program Cadastro;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDataModule in 'uDataModule.pas' {DM_Cadastro: TDataModule},
  uCadDepartamentos in 'uCadDepartamentos.pas' {frmDepartamentos},
  uCadEmpregados in 'uCadEmpregados.pas' {frmCadEmpregados};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM_Cadastro, DM_Cadastro);
  Application.CreateForm(TfrmDepartamentos, frmDepartamentos);
  Application.CreateForm(TfrmCadEmpregados, frmCadEmpregados);
  Application.Run;
end.
