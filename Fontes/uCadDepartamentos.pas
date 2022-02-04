unit uCadDepartamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,clipbrd;

type
  TfrmDepartamentos = class(TForm)
    Panel1: TPanel;
    btnIncluir: TSpeedButton;
    SpeedButton1: TSpeedButton;
    dbgDepartamentos: TDBGrid;
    Panel2: TPanel;
    edtCodDepartamento: TEdit;
    gpbCod: TGroupBox;
    gpbDepartamento: TGroupBox;
    edtDepartamento: TEdit;
    gpbLocal: TGroupBox;
    edtLocal: TEdit;
    qryConsulta: TFDQuery;
    dsDepartamentos: TDataSource;
    qryDepartamento: TFDQuery;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDepartamentos: TfrmDepartamentos;

implementation

{$R *.dfm}

procedure TfrmDepartamentos.btnIncluirClick(Sender: TObject);
begin
    qryDepartamento.Close;
    qryDepartamento.SQL.Text:= 'INSERT INTO DEPARTAMENTOS (ID_DEPARTAMENTO,NM_DEPARTAMENTO,LOCAL) '#13+
                               'VALUES '#13+
                               '('+edtCodDepartamento.Text+','''+edtDepartamento.Text+''','''+edtLocal.Text+''')';

    qryDepartamento.ExecSQL;
    qryConsulta.Active:=false;
    qryConsulta.Active:=true;
    edtCodDepartamento.Text:='';
    edtDepartamento.Text:='';
    edtLocal.Text:='';
    edtCodDepartamento.SetFocus;
    ShowMessage('CADASTRO REALIZADO COM SUCESSO') ;

end;

procedure TfrmDepartamentos.FormShow(Sender: TObject);
begin
     qryConsulta.Active:=false;
     qryConsulta.Active:=true;
end;

procedure TfrmDepartamentos.SpeedButton1Click(Sender: TObject);
begin
    qryDepartamento.Close;
    qryDepartamento.SQL.Text:='delete from departamentos '#13+
                              'where departamentos.id_departamento='+dbgDepartamentos.Fields[0].AsString+'';
    Clipboard.AsText:=  qryDepartamento.SQL.Text;
    qryDepartamento.ExecSQL;

    qryConsulta.Active:=false;
    qryConsulta.Active:=true;
    edtCodDepartamento.Text:='';
    edtDepartamento.Text:='';
    edtLocal.Text:='';
    edtCodDepartamento.SetFocus;
    ShowMessage('EXCLUSÃO REALIZADA COM SUCESSO') ;

end;

end.
