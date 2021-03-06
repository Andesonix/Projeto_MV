unit uDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client,IniFiles, FireDAC.Phys.PG, FireDAC.Phys.PGDef;

type
  TDM_Cadastro = class(TDataModule)
    ConexaoBanco: TFDConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Cadastro: TDM_Cadastro;


implementation



{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



end.
