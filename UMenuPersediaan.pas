unit UMenuPersediaan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, frxpngimage, ExtCtrls, RzButton, RzPanel, cxPC,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrm_MenuPersediaan = class(TForm)
    RzGroupBox1: TRzGroupBox;
    RzPanel1: TRzPanel;
    BtnPenyesuaian: TRzToolButton;
    RzPanel3: TRzPanel;
    RzGroupBox5: TRzGroupBox;
    Image3: TImage;
    RzPanel4: TRzPanel;
    RzLabel1: TRzLabel;
    BtnStokOpname: TRzToolButton;
    RzPanel2: TRzPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzLabel4: TRzLabel;
    ZQuery1: TZQuery;
    procedure RzLabel1MouseLeave(Sender: TObject);
    procedure RzLabel1MouseEnter(Sender: TObject);
    procedure BtnPenyesuaianClick(Sender: TObject);
    procedure RzLabel1Click(Sender: TObject);
    procedure BtnStokOpnameClick(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure RzLabel4MouseEnter(Sender: TObject);
    procedure RzLabel4MouseLeave(Sender: TObject);
    procedure RzLabel4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_MenuPersediaan: TFrm_MenuPersediaan;

implementation

uses UDM, UMain, UPenyesuaianBarang, UDataGudang, UDaftarPenyesuaianBarang, UDaftarPemindahan,
      UStockOpname, UPenerimaanBarang, UDaftarTerimaKirim;

{$R *.dfm}

procedure TFrm_MenuPersediaan.RzLabel1MouseLeave(Sender: TObject);
begin
  RzLabel1.Font.Style := [];
  RzLabel1.Cursor := crDrag;
end;

procedure TFrm_MenuPersediaan.RzLabel1MouseEnter(Sender: TObject);
begin
  RzLabel1.Font.Style := [fsBold,fsUnderline];
  RzLabel1.Cursor := crHandPoint;
end;

procedure TFrm_MenuPersediaan.BtnPenyesuaianClick(Sender: TObject);
var
  f: TFrm_PenyesuaianBarang;
  ts: TcxTabSheet;
begin
  if DM.CekAkses(Frm_Main.txtuser.Caption,'Persediaan1')=False then begin
    MessageDlg('Anda tidak memiliki akses !',mtError,[mbOK],0);
    Exit;
  end;      
  if not DM.CekTabOpen('Penyesuaian Persediaan') then begin
    f := TFrm_PenyesuaianBarang.Create(Self);
    tipe := 1;
    f.ClearText;
    f.dbgbarang.AddRow();

    f.ManualDock(Frm_Main.PGMain, Frm_Main.PGMain, alClient);
    f.Show;

    ts := (f.parent as TcxTabSheet);

    Frm_Main.PGMain.ActivePage := ts;
  end;
end;

procedure TFrm_MenuPersediaan.RzLabel1Click(Sender: TObject);
var
  f: TFrm_DaftarPenyesuaianBarang;
  ts: TcxTabSheet;
begin
  if DM.CekAkses(Frm_Main.txtuser.Caption,'Persediaan1')=False then begin
    MessageDlg('Anda tidak memiliki akses !',mtError,[mbOK],0);
    Exit;
  end;
  if not DM.CekTabOpen('Transaksi Penyesuaian Persediaan') then begin
    f := TFrm_DaftarPenyesuaianBarang.Create(Self);

    f.ManualDock(Frm_Main.PGMain, Frm_Main.PGMain, alClient);
    f.Show;

    ts := (f.parent as TcxTabSheet);

    Frm_Main.PGMain.ActivePage := ts;
  end;
end;

procedure TFrm_MenuPersediaan.BtnStokOpnameClick(Sender: TObject);
var
  f: TFrm_StokOpname;
  ts: TcxTabSheet;
  nogud: Integer;
  namgud: string;
begin
  if DM.CekAkses(Frm_Main.txtuser.Caption,'Persediaan2')=False then begin
    MessageDlg('Anda tidak memiliki akses !',mtError,[mbOK],0);
    Exit;
  end;
  //if DM.CekUserGudang(Frm_Main.txtuser.Caption)= -1 then begin
    Application.CreateForm(TFrm_DataGudang, Frm_DataGudang);
    Frm_DataGudang.RefreshQ;
    if Frm_DataGudang.ShowModal = mrok then begin
      if not DM.CekTabOpen('Stock Opname') then begin
        f := TFrm_StokOpname.Create(Self);
        f.RzPanel1.Caption := 'Stock Opname - Gudang: '+Frm_DataGudang.QData.FieldValues['kodegudang'];
        f.LGudang.Caption := Frm_DataGudang.QData.FieldValues['nogudang'];
        f.RefreshQ;

        f.ManualDock(Frm_Main.PGMain, Frm_Main.PGMain, alClient);
        f.Show;

        ts := (f.parent as TcxTabSheet);

        Frm_Main.PGMain.ActivePage := ts;
      end;
    end;
  {end else begin
    nogud := DM.CekUserGudang(Frm_Main.txtuser.Caption);
    with TZQuery.Create(Self)do begin
      Connection := DM.con;
      Close;
      SQL.Text := 'select namagudang from tbl_gudang where nogudang=:a';
      ParamByName('a').Value := nogud;
      Open;
      namgud :=FieldValues['namagudang'];
      Free;
    end;
    if not DM.CekTabOpen('Stock Opname') then begin
      f := TFrm_StokOpname.Create(Self);
      f.RzPanel1.Caption := 'Stock Opname - Gudang: '+namgud;
      f.LGudang.Caption := IntToStr(nogud);
      f.RefreshQ;

      f.ManualDock(Frm_Main.PGMain, Frm_Main.PGMain, alClient);
      f.Show;

      ts := (f.parent as TcxTabSheet);

      Frm_Main.PGMain.ActivePage := ts;
    end;

  end;   }
end;

procedure TFrm_MenuPersediaan.RzToolButton1Click(Sender: TObject);
var
  f: TFrm_PenyesuaianBarang;
  ts: TcxTabSheet;
begin
  if DM.CekAkses(Frm_Main.txtuser.Caption,'Persediaan3')=False then begin
    MessageDlg('Anda tidak memiliki akses !',mtError,[mbOK],0);
    Exit;
  end;
  if not DM.CekTabOpen('Penyesuaian Persediaan') then begin
    f := TFrm_PenyesuaianBarang.Create(Self);
    tipe := 2;
    f.ClearText;
    f.dbgbarang.AddRow();

    f.ManualDock(Frm_Main.PGMain, Frm_Main.PGMain, alClient);
    f.Show;

    ts := (f.parent as TcxTabSheet);

    Frm_Main.PGMain.ActivePage := ts;
  end;
end;

procedure TFrm_MenuPersediaan.RzToolButton3Click(Sender: TObject);
var
  f: TFrm_PenerimaanBarang;
  ts: TcxTabSheet;
  nogud: Integer;
  namgud: string;
begin
  if DM.CekAkses(Frm_Main.txtuser.Caption,'Persediaan4')=False then begin
    MessageDlg('Anda tidak memiliki akses !',mtError,[mbOK],0);
    Exit;
  end;
  //if DM.CekUserGudang(Frm_Main.txtuser.Caption)= -1 then begin
    Application.CreateForm(TFrm_DataGudang, Frm_DataGudang);
    Frm_DataGudang.RefreshQ;
    if Frm_DataGudang.ShowModal = mrok then begin
      if not DM.CekTabOpen('Penerimaan Barang Antar Gudang') then begin
        f := TFrm_PenerimaanBarang.Create(Self);
        f.ClearText;
        f.LGudangKe.Caption := Frm_DataGudang.QData.FieldValues['nogudang'];
        f.RzGroupBox1.Caption := 'Penerimaan Barang Antar Gudang - '+Frm_DataGudang.QData.FieldValues['namagudang'];

        f.ManualDock(Frm_Main.PGMain, Frm_Main.PGMain, alClient);
        f.Show;

        ts := (f.parent as TcxTabSheet);

        Frm_Main.PGMain.ActivePage := ts;
      end;
    end;
  {end else begin
    nogud := DM.CekUserGudang(Frm_Main.txtuser.Caption);
    with TZQuery.Create(Self)do begin
      Connection := DM.con;
      Close;
      SQL.Text := 'select namagudang from tbl_gudang where nogudang=:a';
      ParamByName('a').Value := nogud;
      Open;
      namgud :=FieldValues['namagudang'];
      Free;
    end;
    if not DM.CekTabOpen('Penerimaan Barang Antar Gudang') then begin
      f := TFrm_PenerimaanBarang.Create(Self);
      f.ClearText;
      f.LGudangKe.Caption := IntToStr(nogud);
      f.RzGroupBox1.Caption := 'Penerimaan Barang Antar Gudang - '+namgud;

      f.ManualDock(Frm_Main.PGMain, Frm_Main.PGMain, alClient);
      f.Show;

      ts := (f.parent as TcxTabSheet);

      Frm_Main.PGMain.ActivePage := ts;
    end;

  end;  }

end;

procedure TFrm_MenuPersediaan.RzLabel4MouseEnter(Sender: TObject);
begin
  RzLabel4.Font.Style := [fsBold,fsUnderline];
  RzLabel4.Cursor := crHandPoint;
end;

procedure TFrm_MenuPersediaan.RzLabel4MouseLeave(Sender: TObject);
begin
  RzLabel4.Font.Style := [];
  RzLabel4.Cursor := crDrag;
end;

procedure TFrm_MenuPersediaan.RzLabel4Click(Sender: TObject);
var
  f: TFrm_DaftarKirimTerimaBarang;
  ts: TcxTabSheet;
begin
  if (DM.CekAkses(Frm_Main.txtuser.Caption,'Persediaan3')=False) or (DM.CekAkses(Frm_Main.txtuser.Caption,'Persediaan4')=False) then begin
    MessageDlg('Anda tidak memiliki akses !',mtError,[mbOK],0);
    Exit;
  end;
  if not DM.CekTabOpen('Daftar Pengiriman / Penerimaan Antar Gudang') then begin
    f := TFrm_DaftarKirimTerimaBarang.Create(Self);

    f.ManualDock(Frm_Main.PGMain, Frm_Main.PGMain, alClient);
    f.Show;

    ts := (f.parent as TcxTabSheet);

    Frm_Main.PGMain.ActivePage := ts;
  end;
end;

end.
