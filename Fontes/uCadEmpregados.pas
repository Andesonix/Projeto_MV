unit uCadEmpregados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask,clipbrd;

type
  TfrmCadEmpregados = class(TForm)
    Panel1: TPanel;
    btnIncluir: TSpeedButton;
    SpeedButton1: TSpeedButton;
    dbgDepartamentos: TDBGrid;
    Panel2: TPanel;
    gpbCod: TGroupBox;
    edtCodDepartamento: TEdit;
    gpbDepartamento: TGroupBox;
    edtFuncionario: TEdit;
    gpbLocal: TGroupBox;
    edtSalario: TEdit;
    qryConsulta: TFDQuery;
    dsEmpregados: TDataSource;
    qryEmpregados: TFDQuery;
    GroupBox1: TGroupBox;
    edtCodFuncao: TEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    edtComissao: TEdit;
    GroupBox4: TGroupBox;
    edtFuncao: TEdit;
    meditAdmissao: TMaskEdit;
    procedure btnIncluirClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadEmpregados: TfrmCadEmpregados;

implementation

{$R *.dfm}

procedure TfrmCadEmpregados.btnIncluirClick(Sender: TObject);
begin
  TRY
    qryEmpregados.Close;
    qryEmpregados.SQL.Text:= 'INSERT INTO EMPREGADOS (COD_DEPARTAMENTO,COD_EMP_FUNCAO,NM_EMPREGADO,NM_FUNCAO,DATA_ADMISSAO,SALARIO,COMISSAO) '#13+
                               'VALUES '#13+
                               '('+edtCodDepartamento.Text+','+edtCodFuncao.Text+','''+edtFuncionario.Text+''','''+edtFuncao.Text+''','''+meditAdmissao.Text+''','''+edtSalario.Text+''','''+edtComissao.Text+''')';
    clipboard.astext:= qryEmpregados.SQL.Text;
    qryEmpregados.ExecSQL;
    qryConsulta.Active:=false;
    qryConsulta.Active:=true;
    edtCodDepartamento.Text:='';
    edtCodFuncao.Text:='';
    edtFuncionario.Text:='';
    edtFuncao.Text:='';
    meditAdmissao.Text:='';
    edtSalario.Text:='';
    edtComissao.Text:='';
    edtCodDepartamento.SetFocus;
    ShowMessage('CADASTRO REALIZADO COM SUCESSO') ;
    Except
    Showmessage ('Verique os dados');
    END;

end;

procedure TfrmCadEmpregados.SpeedButton1Click(Sender: TObject);
begin
    qryEmpregados.Close;
    qryEmpregados.SQL.Text:='delete from EMPREGADOS '#13+
                              'where empregados.id_EMPREGADO='+dbgDepartamentos.Fields[0].AsString+'';

    qryEmpregados.ExecSQL;

    qryEmpregados.ExecSQL;
    qryConsulta.Active:=false;
    qryConsulta.Active:=true;
    edtCodDepartamento.Text:='';
    edtCodFuncao.Text:='';
    edtFuncionario.Text:='';
    edtFuncao.Text:='';
    meditAdmissao.Text:='';
    edtSalario.Text:='';
    edtComissao.Text:='';
    edtCodDepartamento.SetFocus;
    ShowMessage('CADASTRO EXCLU?DO COM SUCESSO') ;


end;

end.
