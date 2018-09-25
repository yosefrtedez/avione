unit UInputPajak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzEdit, RzBtnEdt, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, StdCtrls, RzCmboBx, Mask, RzButton, ExtCtrls, RzPanel;

type
  TFrm_InputPajak = class(TForm)
    Label7: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label12: TLabel;
    LPajakPenjualan: TLabel;
    LID: TLabel;
    LPajakPembelian: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    BtSave: TRzBitBtn;
    BtClose: TRzBitBtn;
    txtnama: TRzEdit;
    cbtipe: TRzComboBox;
    QKlasifikasi: TZQuery;
    txtpajakpembelian: TRzButtonEdit;
    txtkode: TRzEdit;
    txtpersen: TRzNumericEdit;
    txtpajakpenjualan: TRzButtonEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    txtpajakpembelianblm: TRzButtonEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    txtpajakpenjualanblm: TRzButtonEdit;
    LPajakPembelianblm: TLabel;
    LPajakPenjualanblm: TLabel;
    procedure BtCloseClick(Sender: TObject);
    procedure txtpajakpembelianButtonClick(Sender: TObject);
    procedure txtpajakpembelianKeyPress(Sender: TObject; var Key: Char);
    procedure txtpajakpenjualanButtonClick(Sender: TObject);
    procedure txtpajakpenjualanKeyPress(Sender: TObject; var Key: Char);
    procedure BtSaveClick(Sender: TObject);
    procedure txtpajakpembelianblmButtonClick(Sender: TObject);
    procedure txtpajakpembelianblmKeyPress(Sender: TObject; var Key: Char);
    procedure txtpajakpenjualanblmButtonClick(Sender: TObject);
    procedure txtpajakpenjualanblmKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ClearText;
  end;

var
  Frm_InputPajak: TFrm_InputPajak;

implementation

uses UDM, UDataAkun;

{$R *.dfm}

{ TFrm_InputPajak }

procedure TFrm_InputPajak.ClearText;
begin
  LID.Caption := '0';
  txtkode.Clear;
  txtnama.Clear;
  txtpersen.Value := 0;
  cbtipe.ItemIndex := 0;
  txtpajakpenjualan.Clear;
  LPajakPenjualan.Caption := '0';
  txtpajakpembelian.Clear;
  LPajakPembelian.Caption := '0';
  txtpajakpenjualanblm.Clear;
  LPajakPenjualanblm.Caption := '0';
  txtpajakpembelianblm.Clear;
  LPajakPembelianblm.Caption := '0';
end;

procedure TFrm_InputPajak.BtCloseClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrm_InputPajak.txtpajakpembelianButtonClick(Sender: TObject);
begin
  Application.CreateForm(TFrm_DataAkun, Frm_DataAkun);
  akunkas := -1;
  noklas := 0;
  nosubklas := 0;
  Frm_DataAkun.RefreshQ;
  if Frm_DataAkun.ShowModal = mrok then begin
    txtpajakpembelian.Text := Frm_DataAkun.QData.FieldValues['kodeakun']+'|'+Frm_DataAkun.QData.FieldValues['namaakun'];
    LPajakPembelian.Caption := Frm_DataAkun.QData.FieldValues['noakun'];
  end;
end;

procedure TFrm_InputPajak.txtpajakpembelianKeyPress(Sender: TObject;
  var Key: Char);
begin
  txtpajakpembelianButtonClick(nil);
end;

procedure TFrm_InputPajak.txtpajakpenjualanButtonClick(Sender: TObject);
begin
  Application.CreateForm(TFrm_DataAkun, Frm_DataAkun);
  akunkas := -1;
  noklas := 0;
  nosubklas := 0;
  Frm_DataAkun.RefreshQ;
  if Frm_DataAkun.ShowModal = mrok then begin
    txtpajakpenjualan.Text := Frm_DataAkun.QData.FieldValues['kodeakun']+'|'+Frm_DataAkun.QData.FieldValues['namaakun'];
    LPajakPenjualan.Caption := Frm_DataAkun.QData.FieldValues['noakun'];
  end;
end;

procedure TFrm_InputPajak.txtpajakpenjualanKeyPress(Sender: TObject;
  var Key: Char);
begin
  txtpajakpenjualanButtonClick(nil);
end;

procedure TFrm_InputPajak.BtSaveClick(Sender: TObject);
begin
  if txtkode.Text = '' then begin
    MessageDlg('Kode:  harus diisi!',mtError,[mbOK],0);
    txtkode.SetFocus;
    Exit;
  end;
  if txtnama.Text = '' then begin
    MessageDlg('Nama:  harus diisi!',mtError,[mbOK],0);
    txtnama.SetFocus;
    Exit;
  end;
  if txtpersen.Value <= 0 then begin
    MessageDlg('Nilai:  harus diisi!',mtError,[mbOK],0);
    txtpersen.SetFocus;
    Exit;
  end;
  if LPajakPenjualan.Caption = '0' then begin
    MessageDlg('Kode Akun untuk Penjualan belum terisi !!',mtError,[mbOK],0);
    txtpajakpenjualan.SetFocus;
    Exit;
  end;
  if LPajakPembelian.Caption = '0' then begin
    MessageDlg('Kode Akun untuk Pembelian belum terisi!!',mtError,[mbOK],0);
    txtpajakpembelian.SetFocus;
    Exit;
  end;
  ModalResult := mrOk;
end;

procedure TFrm_InputPajak.txtpajakpembelianblmButtonClick(Sender: TObject);
begin
  Application.CreateForm(TFrm_DataAkun, Frm_DataAkun);
  akunkas := -1;
  noklas := 0;
  nosubklas := 0;
  Frm_DataAkun.RefreshQ;
  if Frm_DataAkun.ShowModal = mrok then begin
    txtpajakpembelianblm.Text := Frm_DataAkun.QData.FieldValues['kodeakun']+'|'+Frm_DataAkun.QData.FieldValues['namaakun'];
    LPajakPembelianblm.Caption := Frm_DataAkun.QData.FieldValues['noakun'];
  end;
end;

procedure TFrm_InputPajak.txtpajakpembelianblmKeyPress(Sender: TObject;
  var Key: Char);
begin
  txtpajakpembelianblmButtonClick(nil);
end;

procedure TFrm_InputPajak.txtpajakpenjualanblmButtonClick(Sender: TObject);
begin
  Application.CreateForm(TFrm_DataAkun, Frm_DataAkun);
  akunkas := -1;
  noklas := 0;
  nosubklas := 0;
  Frm_DataAkun.RefreshQ;
  if Frm_DataAkun.ShowModal = mrok then begin
    txtpajakpenjualanblm.Text := Frm_DataAkun.QData.FieldValues['kodeakun']+'|'+Frm_DataAkun.QData.FieldValues['namaakun'];
    LPajakPenjualanblm.Caption := Frm_DataAkun.QData.FieldValues['noakun'];
  end;
end;

procedure TFrm_InputPajak.txtpajakpenjualanblmKeyPress(Sender: TObject;
  var Key: Char);
begin
  txtpajakpenjualanblmButtonClick(nil);
end;

end.
