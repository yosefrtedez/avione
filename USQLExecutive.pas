unit USQLExecutive;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, Grids, DBGrids, RzDBGrid, StdCtrls, RzEdit, ExtCtrls,
  RzPanel, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrm_SQLScript = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    RzPanel4: TRzPanel;
    txtsql: TRzMemo;
    dbgtable: TRzDBGrid;
    BtnClear: TRzBitBtn;
    BtnExecute: TRzBitBtn;
    BtnClose: TRzBitBtn;
    QSQL: TZQuery;
    DSSQL: TDataSource;
    BtnOpen: TRzBitBtn;
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnExecuteClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_SQLScript: TFrm_SQLScript;

implementation

uses UDM;

{$R *.dfm}

procedure TFrm_SQLScript.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_SQLScript.BtnClearClick(Sender: TObject);
begin
  QSQL.Close;
  QSQL.SQL.Clear;
  txtsql.Clear;
end;

procedure TFrm_SQLScript.FormShow(Sender: TObject);
begin
  QSQL.Close;
  QSQL.SQL.Clear;
  txtsql.Clear;
end;

procedure TFrm_SQLScript.BtnExecuteClick(Sender: TObject);
begin
  if txtsql.Text = '' then Exit;
  try
    QSQL.Close;
    QSQL.SQL.Clear;
    QSQL.SQL.Text := txtsql.Text;
    QSQL.ExecSQL;
    MessageDlg('Success',mtInformation,[mbYes],0);
  except
    on e : Exception do begin
      ShowMessage('Error: ' +E.Message);
    end;
  end;
end;

procedure TFrm_SQLScript.BtnOpenClick(Sender: TObject);
begin
  if txtsql.Text = '' then Exit;
  QSQL.Close;
  QSQL.SQL.Clear;
  QSQL.SQL.Text := txtsql.Text;
  QSQL.Open;
end;

end.
