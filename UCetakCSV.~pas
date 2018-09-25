unit UCetakCSV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPC, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RzButton, ExtCtrls, RzPanel, DateUtils;

type
  TFrm_DaftarCetakCSV = class(TForm)
    RzPanel1: TRzPanel;
    BtnUpdate: TRzToolButton;
    BtnFilter: TRzToolButton;
    RzPanel2: TRzPanel;
    BtnSelesai: TRzBitBtn;
    BtnPerincian: TRzBitBtn;
    BtnCSV: TRzBitBtn;
    BtnCheck: TRzBitBtn;
    QData: TZQuery;
    DSData: TDataSource;
    Q1: TZQuery;
    dbgdata: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxTextColumn4: TNxTextColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxNumberColumn5: TNxNumberColumn;
    BtnUncheck: TRzBitBtn;
    QDatanopenjualan: TLargeintField;
    QDatakodepenjualan: TStringField;
    QDatakodefaktur: TStringField;
    QDatatipe: TStringField;
    QDatatgltransaksi: TDateField;
    QDatanokontak: TLargeintField;
    QDatatotaldpp: TFloatField;
    QDatatotalppn: TFloatField;
    QDatanamakontak: TStringField;
    NxTextColumn5: TNxTextColumn;
    procedure BtnSelesaiClick(Sender: TObject);
    procedure BtnUpdateClick(Sender: TObject);
    procedure BtnCSVClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnCheckClick(Sender: TObject);
    procedure BtnUncheckClick(Sender: TObject);
    procedure BtnFilterClick(Sender: TObject);
    procedure BtnPerincianClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshQ;
    function CheckMark:Boolean;
  end;

var
  Frm_DaftarCetakCSV: TFrm_DaftarCetakCSV;
  datedari,datesampai:string;
  centang: Boolean;

implementation

uses UDM, UMain, UFTanggal, NxCells;

{$R *.dfm}

procedure TFrm_DaftarCetakCSV.BtnSelesaiClick(Sender: TObject);
var
   ts: TcxTabSheet;
begin
   ts := (Self.parent as TcxTabSheet);
   Frm_Main.CloseTab(Self, ts);
end;

procedure TFrm_DaftarCetakCSV.RefreshQ;
var
  i: Integer;
begin
  with QData do begin
    Close;
    ParamByName('tkd').Value := datedari;
    ParamByName('tks').Value := datesampai;
    Open;
    dbgdata.ClearRows;
    First;
    for i:=0 to RecordCount-1 do begin
      dbgdata.AddRow();
      dbgdata.Cell[0,i].AsBoolean := centang;
      dbgdata.Cell[1,i].AsString := FieldValues['kodepenjualan'];
      dbgdata.Cell[2,i].AsString := FormatDateTime('dd MMM yyyy',FieldValues['tgltransaksi']);
      dbgdata.Cell[3,i].AsString := FieldValues['kodefaktur'];
      dbgdata.Cell[4,i].AsString := FieldValues['namakontak'];
      dbgdata.Cell[5,i].AsFloat := FieldValues['totaldpp'];
      dbgdata.Cell[6,i].AsFloat := FieldValues['totalppn'];
      dbgdata.Cell[7,i].AsInteger := FieldValues['nopenjualan'];
      dbgdata.Cell[8,i].AsInteger := MonthOf(FieldValues['tgltransaksi']);
      dbgdata.Cell[9,i].AsInteger := YearOf(FieldValues['tgltransaksi']);
      dbgdata.Cell[10,i].AsString := FieldValues['tipe'];
      Next;
    end;
  end;
end;

procedure TFrm_DaftarCetakCSV.BtnUpdateClick(Sender: TObject);
begin
  RefreshQ;
end;

procedure TFrm_DaftarCetakCSV.BtnCSVClick(Sender: TObject);
var
  i,bulan,tahun,nopenj:integer;
begin
  if QData.IsEmpty then Exit;
  if CheckMark = False then begin
    MessageDlg('Belum ada data yang dipilih'#10#13'beri tanda Check Mark pada Grid untuk data yang akan diproses',mtWarning,[mbOK],0);
    Exit;
  end;
  Q1.Close;
  Q1.SQL.Clear;
  Q1.SQL.Text := 'delete from tbl_penjualancsv';
  Q1.ExecSQL;
  for i:=0 to dbgdata.RowCount-1 do begin
    if dbgdata.Cell[0,i].AsBoolean = True then begin
      if dbgdata.Cell[2,i].AsString = '' then begin
        MessageDlg('No. Invoice, '+dbgdata.Cell[1,i].AsString+' belum memiliki Nomor Faktur Pajak.',mtError,[mbOK],0);
        Q1.Close;
        Q1.SQL.Clear;
        Q1.SQL.Text := 'delete from tbl_penjualancsv';
        Q1.ExecSQL;
        Exit;
      end else begin
        nopenj := dbgdata.Cell[7,i].AsInteger;
        bulan := dbgdata.Cell[8,i].AsInteger;
        tahun := dbgdata.Cell[9,i].AsInteger;
        Q1.Close;
        Q1.SQL.Clear;
        Q1.SQL.Text := 'insert into tbl_penjualancsv values (:a,:b,:c,:d,:e,:f)';
        Q1.ParamByName('a').Value := nopenj;
        Q1.ParamByName('b').Value := '01';
        Q1.ParamByName('c').Value := '0';
        Q1.ParamByName('d').Value := bulan;
        Q1.ParamByName('e').Value := tahun;
        Q1.ParamByName('f').Value := dbgdata.Cell[10,i].AsString;
        Q1.ExecSQL;
      end;
    end;
  end;
  DM.QPerusahaan.Close;
  DM.QFakturKeluar.Close;
  DM.QPerusahaan.Open;
  DM.QFakturKeluar.Open;
  DM.Rpt_FakturKeluar.ShowReport(True);
  Q1.Close;
  Q1.SQL.Clear;
  Q1.SQL.Text := 'delete from tbl_penjualancsv';
  Q1.ExecSQL;
end;

function TFrm_DaftarCetakCSV.CheckMark: Boolean;
var
  i:Integer;
begin
  Result := False;
  for i:=0 to dbgdata.RowCount-1 do begin
    if dbgdata.Cell[0,i].AsBoolean = True then begin
      Result := True;
      Exit;
    end else Result := False;
  end;
end;

procedure TFrm_DaftarCetakCSV.FormShow(Sender: TObject);
begin
  datedari := FormatDateTime('yyyy-mm-dd',DM.FDOM(Date));
  datesampai := FormatDateTime('yyyy-mm-dd',DM.LastDayCurrMon(Date));
  centang := False;
  RefreshQ;
end;

procedure TFrm_DaftarCetakCSV.BtnCheckClick(Sender: TObject);
begin
  centang := True;
  RefreshQ;
end;

procedure TFrm_DaftarCetakCSV.BtnUncheckClick(Sender: TObject);
begin
  centang := False;
  RefreshQ;
end;

procedure TFrm_DaftarCetakCSV.BtnFilterClick(Sender: TObject);
begin
  Application.CreateForm(TFTanggal, FTanggal);
  with FTanggal do begin
    if ShowModal=mrok then begin
      datedari := FormatDateTime('yyyy-mm-dd',FTanggal.dtpdari.Date);
      datesampai := FormatDateTime('yyyy-mm-dd',FTanggal.dtpsampai.Date);
      RefreshQ;
    end;
  end;
end;

procedure TFrm_DaftarCetakCSV.BtnPerincianClick(Sender: TObject);
begin
  {Application.CreateForm(TFrm_DataPenjualanDetil, Frm_DataPenjualanDetil);
  Frm_DataPenjualanDetil.LNoPenjualan.Caption := dbgdata.Cell[7,dbgdata.SelectedRow].AsString;
  Frm_DataPenjualanDetil.RefreshQ;
  Frm_DataPenjualanDetil.ShowModal;      }
end;

end.
