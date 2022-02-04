unit uCadDepartamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmDepartamentos = class(TForm)
    Panel1: TPanel;
    btnIncluir: TSpeedButton;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    edtCodDepartamento: TEdit;
    gpbCod: TGroupBox;
    gpbDepartamento: TGroupBox;
    edtDepartamento: TEdit;
    gpbLocal: TGroupBox;
    edtLocal: TEdit;
    qryConsulta: TFDQuery;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDepartamentos: TfrmDepartamentos;

implementation

{$R *.dfm}

end.
