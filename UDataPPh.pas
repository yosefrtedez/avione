unit UDataPPh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  RzButton, ExtCtrls, RzPanel;

type
  TFrm_DataPPh = class(TForm)
    RzPanel2: TRzPanel;
    BtnUpdate: TRzToolButton;
    RzPanel3: TRzPanel;
    BtnBatal: TRzBitBtn;
    BtnOk: TRzBitBtn;
    BtnBaru: TRzBitBtn;
    BtnUbah: TRzBitBtn;
    dbgdata: TcxGrid;
    dbgdataDBTableView1: TcxGridDBTableView;
    dbgdataDBTableView1kodegudang: TcxGridDBColumn;
    dbgdataDBTableView1namagudang: TcxGridDBColumn;
    dbgdataLevel1: TcxGridLevel;
    QData: TZQuery;
    DSData: TDataSource;
    QDatanopph: TLargeintField;
    QDatakodepph: TStringField;
    QDatanamapph: TStringField;
    QDatapersen: TFloatField;
    QDataakunpph: TLargeintField;
    procedure BtnUpdateClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnBatalClick(Sender: TObject);
    procedure BtnBaruClick(Sender: TObject);
    procedure BtnUbahClick(Sender: TObject);
    procedure dbgdataDBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshQ;
  end;

var
  Frm_DataPPh: TFrm_DataPPh;

implementation

uses UDM, UInputPPh, RzEdit, RzCmboBx, UMain;

{$R *.dfm}

{ TFrm_DataPPh }

procedure TFrm_DataPPh.RefreshQ;
begin
  QData.Close;
  QData.Open;
end;

procedure TFrm_DataPPh.BtnUpdateClick(Sender: TObject);
begin
  RefreshQ;
end;

procedure TFrm_DataPPh.BtnOkClick(Sender: TObject);
begin
  if QData.IsEmpty then Exit;
  ModalResult := mrOk;
end;

procedure TFrm_DataPPh.BtnBatalClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrm_DataPPh.BtnBaruClick(Sender: TObject);
begin
  if DM.CekAkses(Frm_Main.txtuser.Caption,'Data7')=False then begin
    MessageDlg('Anda tidak memiliki akses !',mtError,[mbOK],0);
    Exit;
  end;
  Application.CreateForm(TFrm_InputPPh, Frm_InputPPh);
  Frm_InputPPh.ClearText;
  if Frm_InputPPh.ShowModal = mrok then begin
    with TZQuery.Create(Self)do begin
      Connection := dm.con;
      Close;
      SQL.Text := 'insert into tbl_pajakpenghasilan values (:a,:b,:c,:d,:e)';
      ParamByName('a').Value := DM.GenerateNoMaster('pph');
      ParamByName('b').Value := Frm_InputPPh.txtkode.Text;
      ParamByName('c').Value := Frm_InputPPh.txtnama.Text;
      ParamByName('d').Value := Frm_InputPPh.txtpersen.Value;
      ParamByName('e').Value := Frm_InputPPh.LPPh.Caption;
      ExecSQL;
      Free;
    end;
    RefreshQ;
  end;
end;

procedure TFrm_DataPPh.BtnUbahClick(Sender: TObject);
begin
  if QData.IsEmpty then Exit;
  if DM.CekAkses(Frm_Main.txtuser.Caption,'Data7')=False then begin
    MessageDlg('Anda tidak memiliki akses !',mtError,[mbOK],0);
    Exit;
  end;
  if QData.FieldValues['nopph'] = 0 then begin
    MessageDlg('Data pajak ini tidak dapat diubah!',mtError,[mbOK],0);
    Exit;
  end;
  Application.CreateForm(TFrm_InputPPh, Frm_InputPPh);
  with TZQuery.Create(Self)do begin
    Connection := dm.con;
    Close;
    SQL.Clear;
    SQL.Text := 'select * from tbl_pajakpenghasilan where nopph=:np';
    ParamByName('np').Value := QData.FieldValues['nopph'];
    Open;
    with Frm_InputPPh do begin
      LID.Caption := FieldValues['nopph'];
      txtkode.Text := FieldValues['kodepph'];
      txtnama.Text := FieldValues['namapph'];
      txtpersen.Value := FieldValues['persen'];
      LPPh.Caption := FieldValues['akunpph'];
      Close;
      SQL.Clear;
      SQL.Text := 'select * from tbl_akun where noakun=:a and aktif=1';
      ParamByName('a').Value := LPPh.Caption;
      Open;
      if IsEmpty then begin
        LPPh.Caption := '0';
        txtpph.Clear;
      end else txtpph.Text := FieldValues['kodeakun']+'|'+FieldValues['namaakun'];
      if Frm_InputPPh.ShowModal = mrok then begin
        Close;
        SQL.Clear;
        SQL.Text := 'update tbl_pajakpenghasilan set kodepph=:b,namapph=:c,persen=:d,akunpph=:f where nopph=:a';
        ParamByName('a').Value := LID.Caption;
        ParamByName('b').Value := txtkode.Text;
        ParamByName('c').Value := txtnama.Text;
        ParamByName('d').Value := txtpersen.Value;
        ParamByName('f').Value := LPPh.Caption;
        ExecSQL;
        RefreshQ;
      end;
    end;
    Free;
  end;
end;

procedure TFrm_DataPPh.dbgdataDBTableView1DblClick(Sender: TObject);
begin
  BtnOkClick(nil);
end;

end.
