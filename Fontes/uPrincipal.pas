unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, frxClass, frxDBSet;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    C1: TMenuItem;
    R1: TMenuItem;
    D1: TMenuItem;
    E1: TMenuItem;
    N11: TMenuItem;
    frxDBDataset1: TfrxDBDataset;
    l1: TMenuItem;
    qryRelatorio: TFDQuery;
    frxReport1: TfrxReport;
    procedure D1Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure l1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uDataModule, uCadDepartamentos, uCadEmpregados;

procedure TfrmPrincipal.D1Click(Sender: TObject);
begin
    frmDepartamentos.ShowModal;
end;

procedure TfrmPrincipal.E1Click(Sender: TObject);
begin
  frmCadEmpregados.ShowModal;
end;

procedure TfrmPrincipal.l1Click(Sender: TObject);
begin

    qryRelatorio.Close;
    qryRelatorio.SQL.text:='select empregados.nm_empregado,empregados.nm_funcao,departamentos.nm_departamento '#13+
                           'from empregados,departamentos '#13+
                           'where empregados.cod_departamento=departamentos.id_departamento';
    qryRelatorio.Open;


    frxReport1.showreport;
end;

end.
