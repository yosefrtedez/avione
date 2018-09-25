unit UReturPenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, RzRadChk, RzButton, RzEdit, StdCtrls, RzCmboBx,
  NxEdit, Mask, RzBtnEdt, RzLabel, RzPanel, ExtCtrls,cxPC, NxColumns6,
  NxGridView6, NxControls6, NxCustomGrid6, NxVirtualGrid6, NxGrid6, frxClass;

type
  TFrm_ReturPenjualan = class(TForm)
    RzGroupBox1: TRzGroupBox;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel4: TRzLabel;
    LCustomer: TRzLabel;
    LID: TRzLabel;
    RzLabel3: TRzLabel;
    LNoPenjualan: TRzLabel;
    txtcustomer: TRzButtonEdit;
    txtreferensi: TRzEdit;
    dtpfaktur: TNxDatePicker;
    txtpenjualan: TRzButtonEdit;
    RzPanel2: TRzPanel;
    BtnRekam: TRzBitBtn;
    BtnBatal: TRzBitBtn;
    BtnCari: TRzBitBtn;
    RzPanel3: TRzPanel;
    ZQuery1: TZQuery;
    RzPanel4: TRzPanel;
    RzLabel13: TRzLabel;
    RzLabel27: TRzLabel;
    RzLabel26: TRzLabel;
    RzLabel14: TRzLabel;
    txttotal: TRzNumericEdit;
    txtpajak: TRzNumericEdit;
    txtsubtotal: TRzNumericEdit;
    LPiutang: TRzLabel;
    dbgbarang: TNextGrid6;
    NxReportGridView61: TNxReportGridView6;
    NxTextColumn61: TNxTextColumn6;
    NxTextColumn62: TNxTextColumn6;
    NxNumberColumn62: TNxNumberColumn6;
    NxTextColumn63: TNxTextColumn6;
    NxNumberColumn63: TNxNumberColumn6;
    NxNumberColumn64: TNxNumberColumn6;
    NxNumberColumn65: TNxNumberColumn6;
    NxNumberColumn66: TNxNumberColumn6;
    NxTextColumn64: TNxTextColumn6;
    NxTextColumn65: TNxTextColumn6;
    NxIconColumn61: TNxIconColumn6;
    NxNumberColumn67: TNxNumberColumn6;
    NxNumberColumn68: TNxNumberColumn6;
    NxNumberColumn69: TNxNumberColumn6;
    NxNumberColumn617: TNxNumberColumn6;
    NxNumberColumn618: TNxNumberColumn6;
    NxNumberColumn610: TNxNumberColumn6;
    NxNumberColumn611: TNxNumberColumn6;
    NxNumberColumn612: TNxNumberColumn6;
    NxNumberColumn613: TNxNumberColumn6;
    NxNumberColumn614: TNxNumberColumn6;
    NxNumberColumn615: TNxNumberColumn6;
    NxNumberColumn61: TNxNumberColumn6;
    NxNumberColumn616: TNxNumberColumn6;
    NxNumberColumn619: TNxNumberColumn6;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    NxTextColumn66: TNxTextColumn6;
    RzLabel5: TRzLabel;
    txtketerangan: TRzMemo;
    procedure BtnBatalClick(Sender: TObject);
    procedure BtnCariClick(Sender: TObject);
    procedure dbgbarangExit(Sender: TObject);
    procedure dbgbarangKeyPress(Sender: TObject; var Key: Char);
    procedure txtcustomerButtonClick(Sender: TObject);
    procedure txtcustomerKeyPress(Sender: TObject; var Key: Char);
    procedure dbgbarangCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure dbgbarangAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure BtnRekamClick(Sender: TObject);
    procedure txtpenjualanButtonClick(Sender: TObject);
    procedure txtpenjualanKeyPress(Sender: TObject; var Key: Char);
    procedure dbgbarangSelectionChanged(Sender: TObject; ACol,
      ARow: Integer);
    procedure dbgbarangCellClick(Sender: TObject; ACol, ARow: Integer;
      Button: TMouseButton);
    procedure dtpfakturChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ClearText;
    procedure UpdateTotal;
  end;

var
  Frm_ReturPenjualan: TFrm_ReturPenjualan;

implementation

uses UDM, UDataInvoicePiutang, UMain, UDataKontak, NxCells, UDataGudang, UDataBarang,
  UDataSatuan, UDataPajak, UDataAkun;

{$R *.dfm}

{ TFrm_ReturPenjualan }

procedure TFrm_ReturPenjualan.ClearText;
begin
  LID.Caption := '0';
  dtpfaktur.Date := tanggalserver;
  txtreferensi.Text := DM.GenerateKodeTransaksi('SR',dtpfaktur.Date);
  txtcustomer.Clear;
  LCustomer.Caption := '0';
  LPiutang.Caption := '0';
  dtpfaktur.ReadOnly := False;
  dbgbarang.ClearRows;
  if DM.CekUserHargaJual(Frm_Main.txtuser.Caption) = False then begin
    NxNumberColumn63.Editing := False;
    NxNumberColumn63.Color := clYellow;
    NxNumberColumn64.Editing := False;
    NxNumberColumn64.Color := clYellow;
    NxNumberColumn65.Editing := False;
    NxNumberColumn65.Color := clYellow;
  end else begin
    NxNumberColumn63.Editing := True;
    NxNumberColumn63.Color := clWhite;
    NxNumberColumn64.Editing := True;
    NxNumberColumn64.Color := clWhite;
    NxNumberColumn65.Editing := True;
    NxNumberColumn65.Color := clWhite;
  end;
  txtpenjualan.Clear;
  LNoPenjualan.Caption := '0';
  txttotal.Value := 0;
  txtsubtotal.Value := 0;
  txtpajak.Value := 0;
  txtketerangan.Clear;
end;

procedure TFrm_ReturPenjualan.UpdateTotal;
var
  dpp,ppn1:Double;
  i:integer;
begin
  dpp := 0;
  ppn1 := 0;
  with dbgbarang do begin
    for i:=0 to RowCount-1 do begin
      dpp:=dpp+Cell[22,i].AsFloat;
      ppn1:=ppn1+Cell[23,i].AsFloat;
    end;
    txtsubtotal.Value := dpp;
    txtpajak.Value := ppn1;
    txttotal.Value := dpp+ppn1;
  end;
end;

procedure TFrm_ReturPenjualan.BtnBatalClick(Sender: TObject);
var
  ts: TcxTabSheet;
begin
  ts := (Self.parent as TcxTabSheet);
  Frm_Main.CloseTab(Self, ts);
end;

procedure TFrm_ReturPenjualan.BtnCariClick(Sender: TObject);
var
  i,j,akunretur,nogud:Integer;
  total:Double;
  namaretur,namgud: string;
begin
  if txtcustomer.Text = '' then begin
    MessageDlg('Customer : harus diisi !',mtError,[mbOK],0);
    txtcustomer.SetFocus;
    Exit;
  end;
  Application.CreateForm(TFrm_DataAkun, Frm_DataAkun);
  akunkas := -1;
  noklas := 4;
  nosubklas := 1;
  Frm_DataAkun.RefreshQ;
  if Frm_DataAkun.ShowModal = mrok then begin
    akunretur := Frm_DataAkun.QData.FieldValues['noakun'];
    namaretur := Frm_DataAkun.QData.FieldValues['kodeakun'];
    Application.CreateForm(TFrm_DataBarang, Frm_DataBarang);
    //AGudang := -1;
    //Frm_DataBarang.RefreshQ;
    if Frm_DataBarang.ShowModal = mrok then begin
      with TZQuery.Create(Self)do begin
        Connection := DM.con;
        {if DM.CekUserGudang(Frm_Main.txtuser.Caption)>0 then begin
          nogud := DM.CekUserGudang(Frm_Main.txtuser.Caption);
          Close;
          SQL.Clear;
          SQL.Text := 'select namagudang from tbl_gudang where nogudang=:a';
          ParamByName('a').Value := nogud;
          Open;
          namgud := FieldValues['namagudang'];
        end else begin
          namgud := 'Gudang Utama';
          nogud := 0;
        end;  }
        i := dbgbarang.SelectedRow;
        dbgbarang.Cell[0,i].AsString := namaretur;
        dbgbarang.Cell[1,i].AsString := Frm_DataBarang.QData.FieldValues['kodebarang'];
        dbgbarang.Cell[2,i].AsString := Frm_DataBarang.QData.FieldValues['namabarang'];
        dbgbarang.Cell[3,i].AsFloat := 1;
        dbgbarang.Cell[4,i].AsString := Frm_DataBarang.QData.FieldValues['kodesatuan'];
        dbgbarang.Cell[5,i].AsFloat := Frm_DataBarang.QData.FieldValues['hargajual'];
        total := dbgbarang.Cell[3,i].AsFloat*dbgbarang.Cell[5,i].AsFloat;
        dbgbarang.Cell[6,i].AsFloat := 0;
        total := total-((total*dbgbarang.Cell[6,i].AsFloat)/100);
        dbgbarang.Cell[7,i].AsFloat := 0;
        total := total-dbgbarang.Cell[7,i].AsFloat;
        dbgbarang.Cell[8,i].AsFloat := total;
        dbgbarang.Cell[10,i].AsString := '';
        dbgbarang.Cell[12,i].AsInteger := Frm_DataBarang.QData.FieldValues['nobarang'];
        dbgbarang.Cell[13,i].AsInteger := Frm_DataBarang.QData.FieldValues['nosatuan'];
        dbgbarang.Cell[14,i].AsInteger := Frm_DataBarang.QData.FieldValues['faktor'];
        dbgbarang.Cell[18,i].AsInteger := -1;
        dbgbarang.Cell[19,i].AsInteger := DM.CekPajak(dbgbarang.Cell[11,i].AsInteger,'penjualan');
        dbgbarang.Cell[9,i].AsString := dm.CekKodePajak(dbgbarang.Cell[18,i].AsInteger);
        dbgbarang.Cell[20,i].AsInteger := dm.CekTipePajak(dbgbarang.Cell[18,i].AsInteger);
        dbgbarang.Cell[21,i].AsFloat := dm.CekPersenPajak(dbgbarang.Cell[18,i].AsInteger);
        if dbgbarang.Cell[19,i].AsInteger = 0 then begin
          dbgbarang.Cell[22,i].AsFloat := dbgbarang.Cell[8,i].AsFloat;
          dbgbarang.Cell[23,i].AsFloat := 0;
        end else begin
          if dbgbarang.Cell[20,i].AsInteger = 0 then begin
            dbgbarang.Cell[22,i].AsFloat := dbgbarang.Cell[8,i].AsFloat;
            dbgbarang.Cell[23,i].AsFloat := Int((dbgbarang.Cell[8,i].AsFloat*dbgbarang.Cell[21,i].AsFloat/100)*100)/100;
          end else if dbgbarang.Cell[20,i].AsInteger = 1 then begin
            dbgbarang.Cell[22,i].AsFloat := Int((dbgbarang.Cell[8,i].AsFloat/(1+(dbgbarang.Cell[21,i].AsFloat/100)))*100)/100;
            dbgbarang.Cell[23,i].AsFloat := dbgbarang.Cell[8,i].AsFloat-dbgbarang.Cell[22,i].AsFloat;
          end;
        end;
        dbgbarang.Cell[24,i].AsInteger := dm.CekAkunPajak(dbgbarang.Cell[19,i].AsInteger,'penjualan');
        Close;
        SQL.Clear;
        SQL.Text := 'select * from tbl_barang where nobarang=:ib';
        ParamByName('ib').Value := dbgbarang.Cell[12,i].AsInteger;
        Open;
        dbgbarang.Cell[15,i].AsInteger := FieldValues['noakunpersediaan'];
        dbgbarang.Cell[16,i].AsInteger := akunretur;
        dbgbarang.Cell[17,i].AsInteger := FieldValues['noakunhpp'];
        dbgbarang.Cell[25,i].AsInteger := FieldValues['tipebarang'];

        if DM.CekHPP(dbgbarang.Cell[12,i].AsInteger) > dbgbarang.Cell[5,i].AsFloat/dbgbarang.Cell[14,i].AsFloat then begin
          MessageDlg('Harga Jual dibawah HPP !', mtWarning, [mbOK],0);
        end;
      
        UpdateTotal;
        Free;
        dbgbarang.SelectCell(3,i);
      end;
    end;
  end;
end;

procedure TFrm_ReturPenjualan.dbgbarangExit(Sender: TObject);
var
  i : integer;
begin
  for i:=0 to dbgbarang.RowCount-1 do begin
    if dbgbarang.Cell[0,i].AsString = '' then begin
      dbgbarang.DeleteRow(i);
      if dbgbarang.RowCount = 0 then dbgbarang.AddRow();
      UpdateTotal;
    end;
  end;
end;

procedure TFrm_ReturPenjualan.dbgbarangKeyPress(Sender: TObject;
  var Key: Char);
var
  total: Double;
begin
  if dbgbarang.SelectedCol = 10 then begin
    if (key in['0'..'9',#8,#13,#32]) or (key in['a'..'z','A'..'Z',#8,#13,#32]) then begin
      Application.CreateForm(TFrm_DataGudang, Frm_DataGudang);
      Frm_DataGudang.RefreshQ;
      if Frm_DataGudang.ShowModal = mrok then begin
        dbgbarang.Cell[10,dbgbarang.SelectedRow].AsString := Frm_DataGudang.QData.FieldValues['kodegudang'];
        dbgbarang.Cell[18,dbgbarang.SelectedRow].AsInteger := Frm_DataGudang.QData.FieldValues['nogudang'];
      end;
    end;
  end;
  if (dbgbarang.SelectedCol = 0) or (dbgbarang.SelectedCol = 1) or (dbgbarang.SelectedCol = 2) then begin
    if (key in['0'..'9',#8,#13,#32]) or (key in['a'..'z','A'..'Z',#8,#13,#32]) then begin
      BtnCariClick(nil);
    end;
  end;
  if dbgbarang.SelectedCol = 4 then begin
    if (key in['0'..'9',#8,#13,#32]) or (key in['a'..'z','A'..'Z',#8,#13,#32]) then begin
      if dbgbarang.Cell[1,dbgbarang.SelectedRow].AsString = '' then Exit;
      Application.CreateForm(TFrm_DataSatuan, Frm_DataSatuan);
      nomorbarang := dbgbarang.Cell[12,dbgbarang.SelectedRow].AsInteger;
      Frm_DataSatuan.RefreshQ;
      if Frm_DataSatuan.ShowModal = mrok then begin
        dbgbarang.Cell[4,dbgbarang.SelectedRow].AsString := Frm_DataSatuan.QData.FieldValues['kodesatuan']+'('+FloatToStr(Frm_DataSatuan.QData.FieldValues['faktor'])+')';
        dbgbarang.Cell[13,dbgbarang.SelectedRow].AsInteger := Frm_DataSatuan.QData.FieldValues['nosatuan'];
        dbgbarang.Cell[14,dbgbarang.SelectedRow].AsFloat := Frm_DataSatuan.QData.FieldValues['faktor'];
        dbgbarang.Cell[5,dbgbarang.SelectedRow].AsFloat := Frm_DataSatuan.QData.FieldValues['hargajual'];
        total := dbgbarang.Cell[3,dbgbarang.SelectedRow].AsFloat*dbgbarang.Cell[5,dbgbarang.SelectedRow].AsFloat;
        total := total-((total*dbgbarang.Cell[6,dbgbarang.SelectedRow].AsFloat)/100);
        total := total-dbgbarang.Cell[7,dbgbarang.SelectedRow].AsFloat;
        dbgbarang.Cell[8,dbgbarang.SelectedRow].AsFloat := total;
        if dbgbarang.Cell[19,dbgbarang.SelectedRow].AsInteger = 0 then begin
          dbgbarang.Cell[22,dbgbarang.SelectedRow].AsFloat := dbgbarang.Cell[8,dbgbarang.SelectedRow].AsFloat;
          dbgbarang.Cell[23,dbgbarang.SelectedRow].AsFloat := 0;
        end else begin
          if dbgbarang.Cell[20,dbgbarang.SelectedRow].AsInteger = 0 then begin
            dbgbarang.Cell[22,dbgbarang.SelectedRow].AsFloat := dbgbarang.Cell[8,dbgbarang.SelectedRow].AsFloat;
            dbgbarang.Cell[23,dbgbarang.SelectedRow].AsFloat := Int((dbgbarang.Cell[8,dbgbarang.SelectedRow].AsFloat*dbgbarang.Cell[21,dbgbarang.SelectedRow].AsFloat/100)*100)/100;
          end else if dbgbarang.Cell[20,dbgbarang.SelectedRow].AsInteger = 1 then begin
            dbgbarang.Cell[22,dbgbarang.SelectedRow].AsFloat := Int((dbgbarang.Cell[8,dbgbarang.SelectedRow].AsFloat/(1+(dbgbarang.Cell[21,dbgbarang.SelectedRow].AsFloat/100)))*100)/100;
            dbgbarang.Cell[23,dbgbarang.SelectedRow].AsFloat := dbgbarang.Cell[8,dbgbarang.SelectedRow].AsFloat-dbgbarang.Cell[22,dbgbarang.SelectedRow].AsFloat;
          end;
        end;
        UpdateTotal;
      end;
    end;
  end;
  if dbgbarang.SelectedCol = 9 then begin
    if (key in['0'..'9',#8,#13,#32]) or (key in['a'..'z','A'..'Z',#8,#13,#32]) then begin
      if dbgbarang.Cell[1,dbgbarang.SelectedRow].AsString = '' then Exit;
      Application.CreateForm(TFrm_DataPajak, Frm_DataPajak);
      Frm_DataPajak.RefreshQ;
      if Frm_DataPajak.ShowModal = mrok then begin
        dbgbarang.Cell[19,dbgbarang.SelectedRow].AsInteger := Frm_DataPajak.QData.FieldValues['nopajak'];
        dbgbarang.Cell[9,dbgbarang.SelectedRow].AsString := Frm_DataPajak.QData.FieldValues['kodepajak'];
        dbgbarang.Cell[20,dbgbarang.SelectedRow].AsInteger := Frm_DataPajak.QData.FieldValues['tipepajak'];
        dbgbarang.Cell[21,dbgbarang.SelectedRow].AsFloat := Frm_DataPajak.QData.FieldValues['persen'];
        dbgbarang.Cell[24,dbgbarang.SelectedRow].AsInteger := Frm_DataPajak.QData.FieldValues['akunpajakpenjualan'];
        if dbgbarang.Cell[19,dbgbarang.SelectedRow].AsInteger = 0 then begin
          dbgbarang.Cell[22,dbgbarang.SelectedRow].AsFloat := dbgbarang.Cell[8,dbgbarang.SelectedRow].AsFloat;
          dbgbarang.Cell[23,dbgbarang.SelectedRow].AsFloat := 0;
        end else begin
          if dbgbarang.Cell[20,dbgbarang.SelectedRow].AsInteger = 0 then begin
            dbgbarang.Cell[22,dbgbarang.SelectedRow].AsFloat := dbgbarang.Cell[8,dbgbarang.SelectedRow].AsFloat;
            dbgbarang.Cell[23,dbgbarang.SelectedRow].AsFloat := Int((dbgbarang.Cell[8,dbgbarang.SelectedRow].AsFloat*dbgbarang.Cell[21,dbgbarang.SelectedRow].AsFloat/100)*100)/100;
          end else if dbgbarang.Cell[20,dbgbarang.SelectedRow].AsInteger = 1 then begin
            dbgbarang.Cell[22,dbgbarang.SelectedRow].AsFloat := Int((dbgbarang.Cell[8,dbgbarang.SelectedRow].AsFloat/(1+(dbgbarang.Cell[21,dbgbarang.SelectedRow].AsFloat/100)))*100)/100;
            dbgbarang.Cell[23,dbgbarang.SelectedRow].AsFloat := dbgbarang.Cell[8,dbgbarang.SelectedRow].AsFloat-dbgbarang.Cell[22,dbgbarang.SelectedRow].AsFloat;
          end;
        end;
        UpdateTotal;
      end;
    end;
  end;
end;

procedure TFrm_ReturPenjualan.txtcustomerButtonClick(Sender: TObject);
begin
  Application.CreateForm(TFrm_DataKontak, Frm_DataKontak);
  tipekontak := 0;
  Frm_DataKontak.RefreshQ;
  if Frm_DataKontak.ShowModal = mrok then begin
    txtcustomer.Text := Frm_DataKontak.QData.FieldValues['namakontak'];
    LCustomer.Caption := Frm_DataKontak.QData.FieldValues['nokontak'];
    LPiutang.Caption := Frm_DataKontak.QData.FieldValues['noakun'];
    txtpenjualan.Clear;
    LNoPenjualan.Caption := '0';
  end;
end;

procedure TFrm_ReturPenjualan.txtcustomerKeyPress(Sender: TObject;
  var Key: Char);
begin
  txtcustomerButtonClick(nil);
end;

procedure TFrm_ReturPenjualan.dbgbarangCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
var
  total: Double;
begin
  if ACol = 10 then begin
    Application.CreateForm(TFrm_DataGudang, Frm_DataGudang);
    Frm_DataGudang.RefreshQ;
    if Frm_DataGudang.ShowModal = mrok then begin
      dbgbarang.Cell[10,ARow].AsString := Frm_DataGudang.QData.FieldValues['kodegudang'];
      dbgbarang.Cell[18,ARow].AsInteger := Frm_DataGudang.QData.FieldValues['nogudang'];
    end;
  end;
  if (ACol = 0) or (ACol = 1) or (ACol = 2)  then begin
    BtnCariClick(nil);
  end;
  if ACol = 4 then begin
    if dbgbarang.Cell[1,ARow].AsString = '' then Exit;
    Application.CreateForm(TFrm_DataSatuan, Frm_DataSatuan);
    nomorbarang := dbgbarang.Cell[12,ARow].AsInteger;
    Frm_DataSatuan.RefreshQ;
    if Frm_DataSatuan.ShowModal = mrok then begin
      dbgbarang.Cell[4,ARow].AsString := Frm_DataSatuan.QData.FieldValues['kodesatuan']+'('+FloatToStr(Frm_DataSatuan.QData.FieldValues['faktor'])+')';
      dbgbarang.Cell[13,ARow].AsInteger := Frm_DataSatuan.QData.FieldValues['nosatuan'];
      dbgbarang.Cell[14,ARow].AsFloat := Frm_DataSatuan.QData.FieldValues['faktor'];
      dbgbarang.Cell[5,ARow].AsFloat := Frm_DataSatuan.QData.FieldValues['hargajual'];
      total := dbgbarang.Cell[3,ARow].AsFloat*dbgbarang.Cell[5,ARow].AsFloat;
      total := total-((total*dbgbarang.Cell[6,ARow].AsFloat)/100);
      total := total-dbgbarang.Cell[7,ARow].AsFloat;
      dbgbarang.Cell[8,ARow].AsFloat := total;
      if dbgbarang.Cell[19,ARow].AsInteger = 0 then begin
        dbgbarang.Cell[22,ARow].AsFloat := dbgbarang.Cell[8,ARow].AsFloat;
        dbgbarang.Cell[23,ARow].AsFloat := 0;
      end else begin
        if dbgbarang.Cell[20,ARow].AsInteger = 0 then begin
          dbgbarang.Cell[22,ARow].AsFloat := dbgbarang.Cell[8,ARow].AsFloat;
          dbgbarang.Cell[23,ARow].AsFloat := Int((dbgbarang.Cell[8,ARow].AsFloat*dbgbarang.Cell[21,ARow].AsFloat/100)*100)/100;
        end else if dbgbarang.Cell[20,ARow].AsInteger = 1 then begin
          dbgbarang.Cell[22,ARow].AsFloat := Int((dbgbarang.Cell[8,ARow].AsFloat/(1+(dbgbarang.Cell[21,ARow].AsFloat/100)))*100)/100;
          dbgbarang.Cell[23,ARow].AsFloat := dbgbarang.Cell[8,ARow].AsFloat-dbgbarang.Cell[22,ARow].AsFloat;
        end;
      end;
      UpdateTotal;
    end;
  end;
  if ACol = 9 then begin
    if dbgbarang.Cell[1,ARow].AsString = '' then Exit;
    Application.CreateForm(TFrm_DataPajak, Frm_DataPajak);
    Frm_DataPajak.RefreshQ;
    if Frm_DataPajak.ShowModal = mrok then begin
      dbgbarang.Cell[19,ARow].AsInteger := Frm_DataPajak.QData.FieldValues['nopajak'];
      dbgbarang.Cell[9,ARow].AsString := Frm_DataPajak.QData.FieldValues['kodepajak'];
      dbgbarang.Cell[20,ARow].AsInteger := Frm_DataPajak.QData.FieldValues['tipepajak'];
      dbgbarang.Cell[21,ARow].AsFloat := Frm_DataPajak.QData.FieldValues['persen'];
      dbgbarang.Cell[24,ARow].AsInteger := Frm_DataPajak.QData.FieldValues['akunpajakpenjualan'];
      if dbgbarang.Cell[19,ARow].AsInteger = 0 then begin
        dbgbarang.Cell[22,ARow].AsFloat := dbgbarang.Cell[8,ARow].AsFloat;
        dbgbarang.Cell[23,ARow].AsFloat := 0;
      end else begin
        if dbgbarang.Cell[20,ARow].AsInteger = 0 then begin
          dbgbarang.Cell[22,ARow].AsFloat := dbgbarang.Cell[8,ARow].AsFloat;
          dbgbarang.Cell[23,ARow].AsFloat := Int((dbgbarang.Cell[8,ARow].AsFloat*dbgbarang.Cell[21,ARow].AsFloat/100)*100)/100;
        end else if dbgbarang.Cell[20,ARow].AsInteger = 1 then begin
          dbgbarang.Cell[22,ARow].AsFloat := Int((dbgbarang.Cell[8,ARow].AsFloat/(1+(dbgbarang.Cell[21,ARow].AsFloat/100)))*100)/100;
          dbgbarang.Cell[23,ARow].AsFloat := dbgbarang.Cell[8,ARow].AsFloat-dbgbarang.Cell[22,ARow].AsFloat;
        end;
      end;
      UpdateTotal;
    end;
  end;
end;

procedure TFrm_ReturPenjualan.dbgbarangAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
var
  total:Double;
begin
  if ACol = 3 then begin
    if dbgbarang.Cell[1,ARow].AsString = '' then begin
      dbgbarang.Cell[3,ARow].AsFloat := 0;
      Exit;
    end;
  end;
  if ACol = 5 then begin
    if dbgbarang.Cell[1,ARow].AsString = '' then begin
      dbgbarang.Cell[5,ARow].AsFloat := 0;
      Exit;
    end;
    if DM.CekHPP(dbgbarang.Cell[12,ARow].AsInteger) > dbgbarang.Cell[5,ARow].AsFloat/dbgbarang.Cell[14,ARow].AsFloat then begin
      MessageDlg('Harga Jual dibawah HPP !', mtWarning, [mbOK],0);
    end;
  end;
  if ACol = 6 then begin
    if dbgbarang.Cell[1,ARow].AsString = '' then begin
      dbgbarang.Cell[6,ARow].AsFloat := 0;
      Exit;
    end;
  end;
  if ACol = 7 then begin
    if dbgbarang.Cell[1,ARow].AsString = '' then begin
      dbgbarang.Cell[7,ARow].AsFloat := 0;
      Exit;
    end;
  end;
  total := dbgbarang.Cell[3,ARow].AsFloat*dbgbarang.Cell[5,ARow].AsFloat;
  total := total-((total*dbgbarang.Cell[6,ARow].AsFloat)/100);
  total := total-dbgbarang.Cell[7,ARow].AsFloat;
  dbgbarang.Cell[8,ARow].AsFloat := total;
  if dbgbarang.Cell[19,ARow].AsInteger = 0 then begin
    dbgbarang.Cell[22,ARow].AsFloat := dbgbarang.Cell[8,ARow].AsFloat;
    dbgbarang.Cell[23,ARow].AsFloat := 0;
  end else begin
    if dbgbarang.Cell[20,ARow].AsInteger = 0 then begin
      dbgbarang.Cell[22,ARow].AsFloat := dbgbarang.Cell[8,ARow].AsFloat;
      dbgbarang.Cell[23,ARow].AsFloat := Int((dbgbarang.Cell[8,ARow].AsFloat*dbgbarang.Cell[21,ARow].AsFloat/100)*100)/100;
    end else if dbgbarang.Cell[20,ARow].AsInteger = 1 then begin
      dbgbarang.Cell[22,ARow].AsFloat := Int((dbgbarang.Cell[8,ARow].AsFloat/(1+(dbgbarang.Cell[21,ARow].AsFloat/100)))*100)/100;
      dbgbarang.Cell[23,ARow].AsFloat := dbgbarang.Cell[8,ARow].AsFloat-dbgbarang.Cell[22,ARow].AsFloat;
    end;
  end;
  UpdateTotal;
end;

procedure TFrm_ReturPenjualan.BtnRekamClick(Sender: TObject);
var
  notransaksi,i,j: Integer;
  hpp,jumlahqty:Double;
  ketsales: string;
  t:TfrxMemoView;
begin
  if DM.CekAkunPenting = False then begin
    MessageDlg('Transaksi tidak dapat diproses. Cek kembali Akun Default !!',mtError,[mbOK],0);
    Exit;
  end;
  if txtcustomer.Text = '' then begin
    MessageDlg('Customer : harus diisi terlebih dahulu !',mtError,[mbOK],0);
    txtcustomer.SetFocus;
    Exit;
  end;
  if txtketerangan.Text = '' then begin
    MessageDlg('Keterangan : harus diisi !',mtError,[mbOK],0);
    txtketerangan.SetFocus;
    Exit;
  end;
  if LNoPenjualan.Caption = '0' then begin
    MessageDlg('No. Penjualan : harus diisi terlebih dahulu !',mtError,[mbOK],0);
    txtpenjualan.SetFocus;
    Exit
  end;
  with dbgbarang do begin
    jumlahqty := 0;
    for i:=0 to RowCount-1 do begin
      jumlahqty := jumlahqty+dbgbarang.Cell[3,i].AsInteger;
    end;
    if jumlahqty <= 0 then begin
      MessageDlg('Tidak ada transaksi !',mtError,[mbOK],0);
      Exit;
    end;
  end;
  with dbgbarang do begin
    for i:=0 to RowCount-1 do begin
      if dbgbarang.Cell[3,i].AsFloat = 0 then begin
        MessageDlg('Jumlah barang '+Cell[2,i].AsString+' tidak boleh nol',mtError,[mbOK],0);
        Exit;
      end;
      if dbgbarang.Cell[18,i].AsFloat = -1 then begin
        MessageDlg('Gudang untuk barang '+Cell[2,i].AsString+' belum dipilih!',mtError,[mbOK],0);
        Exit;
      end;
    end;
  end;
  {if DM.CekPeriode(dtpfaktur.Date)= 0 then begin
    MessageDlg('Anda tidak diperkenankan mengubah transaksi sebelum periode akuntansi yang sedang aktif',mtError,[mbOK],0);
    Exit;
  end else if DM.CekPeriode(dtpfaktur.Date)= 2 then begin
    if MessageDlg('Tanggal transaksi ini setelah periode akuntansi. Lanjutkan ?',mtConfirmation,[mbYes,mbNo],0)= mrno then begin
      Exit;
    end;
  end;   }
  with TZQuery.Create(Self)do begin
    Connection := DM.con;
    if LID.Caption = '0' then begin
      if MessageDlg('Apakah data sudah benar ?',mtConfirmation,[mbYes,mbNo],0)=mryes then begin
        Screen.Cursor := crSQLWait;
        try
          dm.con.StartTransaction;
          notransaksi := DM.GenerateNoMaster('returpenjualan');
          txtreferensi.Text := DM.GenerateKodeTransaksi('SR',dtpfaktur.Date);
          ketsales := 'Retur Penjualan, '+txtcustomer.Text;
          Close;
          SQL.Clear;
          SQL.Text := 'insert into tbl_referensikodetransaksi values (:a,:b,:c)';
          ParamByName('a').Value := 'SR';
          ParamByName('b').Value := dtpfaktur.Date;
          ParamByName('c').Value := txtreferensi.Text;
          ExecSQL;
          Close;
          // masuk ke tabel retur penjualan
          SQL.Clear;
          SQL.Text := 'insert into tbl_returpenjualan values (:a,:b,:c,:d,:e,:g,:h,:i,:j,:k,:l)';
          ParamByName('a').Value := notransaksi;
          ParamByName('b').Value := txtreferensi.Text;
          ParamByName('c').Value := LNoPenjualan.Caption;
          ParamByName('d').Value := LCustomer.Caption;
          ParamByName('e').Value := FormatDateTime('yyyy-mm-dd',dtpfaktur.Date);
          ParamByName('g').Value := txtsubtotal.Value;
          ParamByName('h').Value := txtpajak.Value;
          ParamByName('i').Value := txttotal.Value;
          ParamByName('j').Value := Frm_Main.txtuser.Caption;
          ParamByName('k').Value := LPiutang.Caption;
          ParamByName('l').Value := txtketerangan.Text;
          ExecSQL;
          with dbgbarang do begin
            for i:=0 to RowCount-1 do begin
              Close;
              SQL.Clear;
              //masuk tabel retur penjualan detil
              SQL.Text := 'insert into tbl_returpenjualandetail values(:a,:b,:c,:d,:e,:f,:g,:h,:i,:j,:k,:l,:m,:n,:o,:p,:q,:r,:s,:t)';
              ParamByName('a').Value := notransaksi;
              ParamByName('b').Value := Cell[12,i].AsInteger;
              ParamByName('c').Value := Cell[3,i].AsFloat;
              ParamByName('d').Value := Cell[5,i].AsFloat;
              ParamByName('e').Value := Cell[6,i].AsFloat;
              ParamByName('f').Value := Cell[7,i].AsFloat;
              ParamByName('g').Value := Cell[8,i].AsFloat;
              ParamByName('h').Value := Cell[18,i].AsInteger;
              ParamByName('i').Value := Cell[13,i].AsInteger;
              ParamByName('j').Value := Cell[14,i].AsFloat;
              ParamByName('k').Value := Cell[15,i].AsInteger;
              ParamByName('l').Value := Cell[16,i].AsInteger;
              ParamByName('m').Value := Cell[17,i].AsInteger;
              ParamByName('n').Value := Cell[22,i].AsFloat;
              ParamByName('o').Value := Cell[23,i].AsFloat;
              ParamByName('p').Value := Cell[19,i].AsInteger;
              ParamByName('q').Value := Cell[20,i].AsInteger;
              ParamByName('r').Value := Cell[21,i].AsFloat;
              ParamByName('s').Value := Cell[24,i].AsInteger;
              ParamByName('t').Value := Cell[25,i].AsInteger;
              ExecSQL;

              DM.InsertBukuBesarAkun(Cell[16,i].AsInteger,dtpfaktur.Date,'SR',notransaksi,ketsales,Cell[22,i].AsFloat,0);
              if Cell[23,i].AsFloat > 0 then begin
                DM.InsertBukuBesarAkun(Cell[24,i].AsInteger,dtpfaktur.Date,'SR',notransaksi,ketsales,Cell[23,i].AsFloat,0);
              end;
              if Cell[25,i].AsInteger = 0 then begin
                Close;
                SQL.Clear;
                //masuk tabel buku besar barang
                SQL.Text := 'insert into tbl_bukubesarbarang(nobuku,nobarang,tipe,nogudang,tgltransaksi,noreferensi,keterangan,masuk,hpp) values (:a,:b,:c,:d,:e,:f,:g,:h,:i)';
                //ParamByName('a').Value := DM.GenerateNoMaster('bukubarang');
                ParamByName('b').Value := Cell[12,i].AsInteger;
                ParamByName('c').Value := 'SR';
                ParamByName('d').Value := Cell[18,i].AsInteger;
                ParamByName('e').Value := FormatDateTime('yyyy-mm-dd',dtpfaktur.Date);
                ParamByName('f').Value := notransaksi;
                ParamByName('g').Value := 'Retur Penjualan '+txtcustomer.Text+', '+txtreferensi.Text;
                ParamByName('h').Value := Cell[3,i].AsFloat*dbgbarang.Cell[14,i].AsFloat;
                hpp := DM.HitungHPPPenjualan(Cell[12,i].AsInteger,Cell[3,i].AsFloat*dbgbarang.Cell[14,i].AsFloat);
                ParamByName('i').Value := hpp;
                ExecSQL;

                DM.InsertBukuBesarAkun(Cell[17,i].AsInteger,dtpfaktur.Date,'SR',notransaksi,'Penyesuaian Persediaan, '+txtreferensi.Text,0,hpp);
                DM.InsertBukuBesarAkun(Cell[15,i].AsInteger,dtpfaktur.Date,'SR',notransaksi,'Penyesuaian Persediaan, '+txtreferensi.Text,hpp,0);
              end;
            end;
          end;
          DM.InsertBukuBesarAkun(StrToInt(LPiutang.Caption),dtpfaktur.Date,'SR',notransaksi,ketsales,0,txttotal.Value);
          DM.InsertBukuBesarKontak(StrToInt(LCustomer.Caption),dtpfaktur.Date,'SR',notransaksi,ketsales,txttotal.Value);
          dm.con.Commit;
          Screen.Cursor := crDefault;
          if MessageDlg('Cetak Nota ?',mtConfirmation,[mbYes,mbNo],0)=mryes then begin
            Close;
            SQL.Clear;
            SQL.Text := 'select * from tbl_terbilang where noreferensi=:np and tipe=:t';
            ParamByName('np').Value := notransaksi;
            ParamByName('t').Value := 'SR';
            Open;
            if IsEmpty then begin
              Close;
              SQL.Clear;
              SQL.Text := 'insert into tbl_terbilang values (:a,:b,:c)';
              ParamByName('a').Value := notransaksi;
              ParamByName('b').Value := 'SR';
              ParamByName('c').Value := DM.ConvKeHuruf(IntToStr(txttotal.IntValue));
              ExecSQL;
            end else begin
              Close;
              SQL.Clear;
              SQL.Text := 'update tbl_terbilang set terbilang=:c where noreferensi=:np and tipe=:t';
              ParamByName('np').Value := notransaksi;
              ParamByName('t').Value := 'SR';
              ParamByName('c').Value := DM.ConvKeHuruf(IntToStr(txttotal.IntValue));
              ExecSQL;
            end;
            dm.Q_NotaReturPenjualan.Close;
            DM.Q_NotaReturPenjualan.ParamByName('np').Value := notransaksi;
            DM.Q_NotaReturPenjualan.Open;
            dm.Q_NotaTerbilang.Close;
            DM.Q_NotaTerbilang.ParamByName('np').Value := notransaksi;
            DM.Q_NotaTerbilang.ParamByName('t').Value := 'SR';
            DM.Q_NotaTerbilang.Open;
            DM.Nota_ReturPenjualan.ShowReport(True);
          end;
          if MessageDlg('Cetak Jurnal Voucher ?',mtConfirmation,[mbYes,mbNo],0)=mryes then begin
            dm.Q_JurnalVoucher.Close;
            DM.Q_JurnalVoucher.ParamByName('np').Value := notransaksi;
            DM.Q_JurnalVoucher.ParamByName('t').Value := 'SR';
            DM.Q_JurnalVoucher.Open;
            t := TfrxMemoView(DM.Rpt_JurnalVoucher.FindObject('Memo1'));
            t.Memo.Text := 'Jurnal Retur Penjualan';
            DM.Rpt_JurnalVoucher.ShowReport(True);
          end;
        except
          on E: Exception do begin
            dm.con.Rollback;
            MessageDlg('Error: ' + E.Message,mtWarning,[mbOk],0);
          end;
        end;
        ClearText;
        dbgbarang.AddRow();
      end;
    end else begin
      Close;
      SQL.Clear;
      SQL.Text := 'select a.*,ifnull(sum(b.qty),0)as terjual from ' +
                  '(select * from tbl_bukubesarbarang where noreferensi=:a and tipe=:t)as a ' +
                  'left join tbl_bukubesarbarangdetail as b on b.nobuku=a.nobuku group by a.nobuku';
      ParamByName('a').Value := LID.Caption;
      ParamByName('t').Value := 'SR';
      Open;
      First;
      for i:=0 to RecordCount-1 do begin
        if FieldValues['terjual']=0 then begin
          Next;
        end else begin
          MessageDlg('Transaksi tidak dapat diubah, karena barang telah terpakai oleh transaksi lain'#10#13'Hapus dulu transaksi penjualan atau penyesuaian yang menggunakan barang yang berasal dari Transaksi ini.',mtError,[mbOK],0);
          Free;
          Exit;
        end;
      end;
      if MessageDlg('Apakah data sudah benar ?',mtConfirmation,[mbYes,mbNo],0)=mryes then begin
        Screen.Cursor := crSQLWait;
        try
          dm.con.StartTransaction;
          Close;
          SQL.Clear;
          SQL.Text := 'delete from tbl_bukubesarbarang where noreferensi=:np and tipe=:t';
          ParamByName('np').Value := LID.Caption;
          ParamByName('t').Value := 'SR';
          ExecSQL;
          Close;
          SQL.Clear;
          SQL.Text := 'delete from tbl_bukubesarakun where noreferensi=:np and tipe=:t';
          ParamByName('np').Value := LID.Caption;
          ParamByName('t').Value := 'SR';
          ExecSQL;
          Close;
          SQL.Clear;
          SQL.Text := 'delete from tbl_laba where noreferensi=:np and tipe=:t';
          ParamByName('np').Value := LID.Caption;
          ParamByName('t').Value := 'SR';
          ExecSQL;
          Close;
          SQL.Clear;
          SQL.Text := 'delete from tbl_bukubesarkontak where noreferensi=:np and tipe=:t';
          ParamByName('np').Value := LID.Caption;
          ParamByName('t').Value := 'SR';
          ExecSQL;

          ketsales := 'Retur Penjualan, '+txtcustomer.Text;

          Close;
          SQL.Clear;
          // update ke tabel retur penjualan
          SQL.Text := 'update tbl_returpenjualan set nopenjualaninvoice=:c,nokontak=:d,tgltransaksi=:e,noakunpiutang=:n,totaldpp=:i,totalppn=:j,total=:k,keterangan=:l where noreturpenjualan=:a';
          ParamByName('a').Value := LID.Caption;
          ParamByName('c').Value := LNoPenjualan.Caption;
          ParamByName('d').Value := LCustomer.Caption;
          ParamByName('e').Value := FormatDateTime('yyyy-mm-dd',dtpfaktur.Date);
          ParamByName('n').Value := LPiutang.Caption;
          ParamByName('i').Value := txtsubtotal.Value;
          ParamByName('j').Value := txtpajak.Value;
          ParamByName('k').Value := txttotal.Value;
          ParamByName('l').Value := txtketerangan.Text;
          ExecSQL;
          //hapus detil retur penjualan
          Close;
          SQL.Clear;
          SQL.Text := 'delete from tbl_returpenjualandetail where noreturpenjualan=:np';
          ParamByName('np').Value := LID.Caption;
          ExecSQL;
          with dbgbarang do begin
            for i:=0 to RowCount-1 do begin
              Close;
              SQL.Clear;
              //masuk tabel retur penjualan detil
              SQL.Text := 'insert into tbl_returpenjualandetail values(:a,:b,:c,:d,:e,:f,:g,:h,:i,:j,:k,:l,:m,:n,:o,:p,:q,:r,:s,:t)';
              ParamByName('a').Value := LID.Caption;
              ParamByName('b').Value := Cell[12,i].AsInteger;
              ParamByName('c').Value := Cell[3,i].AsFloat;
              ParamByName('d').Value := Cell[5,i].AsFloat;
              ParamByName('e').Value := Cell[6,i].AsFloat;
              ParamByName('f').Value := Cell[7,i].AsFloat;
              ParamByName('g').Value := Cell[8,i].AsFloat;
              ParamByName('h').Value := Cell[18,i].AsInteger;
              ParamByName('i').Value := Cell[13,i].AsInteger;
              ParamByName('j').Value := Cell[14,i].AsFloat;
              ParamByName('k').Value := Cell[15,i].AsInteger;
              ParamByName('l').Value := Cell[16,i].AsInteger;
              ParamByName('m').Value := Cell[17,i].AsInteger;
              ParamByName('n').Value := Cell[22,i].AsFloat;
              ParamByName('o').Value := Cell[23,i].AsFloat;
              ParamByName('p').Value := Cell[19,i].AsInteger;
              ParamByName('q').Value := Cell[20,i].AsInteger;
              ParamByName('r').Value := Cell[21,i].AsFloat;
              ParamByName('s').Value := Cell[24,i].AsInteger;
              ParamByName('t').Value := Cell[25,i].AsInteger;
              ExecSQL;
              DM.InsertBukuBesarAkun(Cell[16,i].AsInteger,dtpfaktur.Date,'SR',StrToInt(LID.Caption),ketsales,Cell[22,i].AsFloat,0);
              if Cell[23,i].AsFloat > 0 then begin
                DM.InsertBukuBesarAkun(Cell[24,i].AsInteger,dtpfaktur.Date,'SR',StrToInt(LID.Caption),ketsales,Cell[23,i].AsFloat,0);
              end;
              if Cell[25,i].AsInteger = 0 then begin
                Close;
                SQL.Clear;
                //masuk tabel buku besar barang
                SQL.Text := 'insert into tbl_bukubesarbarang(nobuku,nobarang,tipe,nogudang,tgltransaksi,noreferensi,keterangan,masuk,hpp) values (:a,:b,:c,:d,:e,:f,:g,:h,:i)';
                //ParamByName('a').Value := DM.GenerateNoMaster('bukubarang');
                ParamByName('b').Value := Cell[12,i].AsInteger;
                ParamByName('c').Value := 'SR';
                ParamByName('d').Value := Cell[18,i].AsInteger;
                ParamByName('e').Value := FormatDateTime('yyyy-mm-dd',dtpfaktur.Date);
                ParamByName('f').Value := LID.Caption;
                ParamByName('g').Value := 'Retur Penjualan '+txtcustomer.Text+', '+txtreferensi.Text;
                ParamByName('h').Value := Cell[3,i].AsFloat*dbgbarang.Cell[14,i].AsFloat;
                hpp := DM.HitungHPPPenjualan(Cell[12,i].AsInteger,Cell[3,i].AsFloat*dbgbarang.Cell[14,i].AsFloat);
                ParamByName('i').Value := hpp;
                ExecSQL;

                DM.InsertBukuBesarAkun(Cell[17,i].AsInteger,dtpfaktur.Date,'SR',StrToInt(LID.Caption),'Penyesuaian Persediaan, '+txtreferensi.Text,0,hpp);
                DM.InsertBukuBesarAkun(Cell[15,i].AsInteger,dtpfaktur.Date,'SR',StrToInt(LID.Caption),'Penyesuaian Persediaan, '+txtreferensi.Text,hpp,0);
              end;
            end;
          end;
          DM.InsertBukuBesarAkun(StrToInt(LPiutang.Caption),dtpfaktur.Date,'SR',StrToInt(LID.Caption),ketsales,0,txttotal.Value);
          DM.InsertBukuBesarKontak(StrToInt(LCustomer.Caption),dtpfaktur.Date,'SR',StrtoInt(LID.Caption),ketsales,txttotal.Value);
          dm.con.Commit;
          Screen.Cursor := crDefault;
          if MessageDlg('Cetak Nota ?',mtConfirmation,[mbYes,mbNo],0)=mryes then begin
            Close;
            SQL.Clear;
            SQL.Text := 'select * from tbl_terbilang where noreferensi=:np and tipe=:t';
            ParamByName('np').Value := LID.Caption;
            ParamByName('t').Value := 'SR';
            Open;
            if IsEmpty then begin
              Close;
              SQL.Clear;
              SQL.Text := 'insert into tbl_terbilang values (:a,:b,:c)';
              ParamByName('a').Value := LID.Caption;
              ParamByName('b').Value := 'SR';
              ParamByName('c').Value := DM.ConvKeHuruf(IntToStr(txttotal.IntValue));
              ExecSQL;
            end else begin
              Close;
              SQL.Clear;
              SQL.Text := 'update tbl_terbilang set terbilang=:c where noreferensi=:np and tipe=:t';
              ParamByName('np').Value := LID.Caption;
              ParamByName('t').Value := 'SR';
              ParamByName('c').Value := DM.ConvKeHuruf(IntToStr(txttotal.IntValue));
              ExecSQL;
            end;
            dm.Q_NotaReturPenjualan.Close;
            DM.Q_NotaReturPenjualan.ParamByName('np').Value := LID.Caption;
            DM.Q_NotaReturPenjualan.Open;
            dm.Q_NotaTerbilang.Close;
            DM.Q_NotaTerbilang.ParamByName('np').Value := LID.Caption;
            DM.Q_NotaTerbilang.ParamByName('t').Value := 'SR';
            DM.Q_NotaTerbilang.Open;
            DM.Nota_ReturPenjualan.ShowReport(True);
          end;
          if MessageDlg('Cetak Jurnal Voucher ?',mtConfirmation,[mbYes,mbNo],0)=mryes then begin
            dm.Q_JurnalVoucher.Close;
            DM.Q_JurnalVoucher.ParamByName('np').Value := LID.Caption;
            DM.Q_JurnalVoucher.ParamByName('t').Value := 'SR';
            DM.Q_JurnalVoucher.Open;
            t := TfrxMemoView(DM.Rpt_JurnalVoucher.FindObject('Memo1'));
            t.Memo.Text := 'Jurnal Retur Penjualan';
            DM.Rpt_JurnalVoucher.ShowReport(True);
          end;
        except
          on E: Exception do begin
            dm.con.Rollback;
            MessageDlg('Error: ' + E.Message,mtWarning,[mbOk],0);
          end;
        end;
        ClearText;
        dbgbarang.AddRow();
      end;
    end;
    Free;
  end;
end;

procedure TFrm_ReturPenjualan.txtpenjualanButtonClick(Sender: TObject);
begin
  if txtcustomer.Text = '' then begin
    MessageDlg('Nama Customer : harus diisi terlebih dahulu !',mtInformation,[mbOK],0);
    txtcustomer.SetFocus;
    Exit;
  end;
  Application.CreateForm(TFrm_DataInvoicePiutang, Frm_DataInvoicePiutang);
  customerid := StrToInt(LCustomer.Caption);
  Frm_DataInvoicePiutang.RefreshQ;
  if Frm_DataInvoicePiutang.ShowModal = mrok then begin
    txtpenjualan.Text := Frm_DataInvoicePiutang.QData.FieldValues['kodepenjualaninvoice'];
    LNoPenjualan.Caption := Frm_DataInvoicePiutang.QData.FieldValues['nopenjualaninvoice'];
  end;
end;

procedure TFrm_ReturPenjualan.txtpenjualanKeyPress(Sender: TObject;
  var Key: Char);
begin
  txtpenjualanButtonClick(nil);
end;

procedure TFrm_ReturPenjualan.dbgbarangSelectionChanged(Sender: TObject;
  ACol, ARow: Integer);
var
  i: Integer;
begin
  if ACol = 11 then begin
    if dbgbarang.Cell[1,ARow].AsString <> '' then begin
      if ARow = dbgbarang.RowCount-1 then begin
        dbgbarang.AddRow();
        i:=dbgbarang.RowCount;
        dbgbarang.ScrollToCell(0,i);
      end;
    end;
  end;
end;

procedure TFrm_ReturPenjualan.dbgbarangCellClick(Sender: TObject; ACol,
  ARow: Integer; Button: TMouseButton);
begin
  if ACol = 11 then begin
    dbgbarang.DeleteRow(ARow);
    if dbgbarang.RowCount = 0 then dbgbarang.AddRow();
    UpdateTotal;
  end;
end;

procedure TFrm_ReturPenjualan.dtpfakturChange(Sender: TObject);
begin
  if LID.Caption = '0' then txtreferensi.Text := DM.GenerateKodeTransaksi('SR',dtpfaktur.Date);
end;

end.
