unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, RzButton,
  StdCtrls, Mask, RzEdit, ExtCtrls, RzPanel, RzLabel;

type
  TFrm_Login = class(TForm)
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    LMessage: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzPanel2: TRzPanel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    txtPassword: TRzEdit;
    txtuser: TRzEdit;
    RzPanel1: TRzPanel;
    BtnCancel: TRzBitBtn;
    BtnLogin: TRzBitBtn;
    Q1: TZQuery;
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnLoginClick(Sender: TObject);
    procedure txtPasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ClearText;
  end;

var
  Frm_Login: TFrm_Login;
  tipe:string;

implementation

uses UDM, UMain, USettingDatabase, UInputPassBaru, UUser;

{$R *.dfm}

procedure TFrm_Login.BtnCancelClick(Sender: TObject);
begin
  if tipe = 'login' then koneksi := '';
  Frm_Login.Close;
end;

procedure TFrm_Login.BtnLoginClick(Sender: TObject);
var
  i:Integer;
begin
  if tipe = 'login' then begin
    with TZQuery.Create(Self) do begin
      Connection := DM.Con;
      Close;
      SQL.Text := 'select * from tbl_user where namauser=:nu and sandiuser=:ps';
      ParamByName('nu').Value := txtuser.Text;
      ParamByName('ps').Value := txtPassword.Text;
      Open;
      if IsEmpty then begin
        MessageDlg('User atau Password salah !',mtError,[mbOK],0);
        Free;
        Exit;
      end else begin
        Frm_Main.txtuser.Caption := Frm_Login.txtuser.Text;
        Frm_Main.ChangePassword1.Visible := True;
        Frm_Main.RzVersionInfoStatus1.Caption := namaperusahaan;
        Frm_Main.Caption := namaperusahaan+' - '+host;
        Frm_Main.CreatePanel;
        Frm_Main.CekTombol(txtuser.Text);
        Frm_Main.HideAllMenu(False);
        Frm_Main.SettingWewenang;
        Frm_SettingDatabase.Close;
        Frm_Login.Close;
        Free;
      end;
    end;
  end else if tipe = 'password' then begin
    Application.CreateForm(TFrm_InputPassBaru, Frm_InputPassBaru);
    if Frm_InputPassBaru.ShowModal = mrok then begin
      with TZQuery.Create(Self) do begin
        Connection := DM.Con;
        Close;
        SQL.Text := 'update tbl_user set sandiuser=:ps where namauser=:nu';
        ParamByName('nu').Value := Frm_Login.txtuser.Text;
        ParamByName('ps').Value := Frm_InputPassBaru.txtbaru.Text;
        ExecSQL;
        Free;
      end;
    end;
    //Frm_User.RefreshQ;
    Frm_Login.Close;
  end else if tipe = 'signup' then begin
    with TZQuery.Create(Self)do begin
      Connection := DM.con;
      Close;
      SQL.Clear;
      SQL.Text := 'insert into tbl_user values (:a,:b,:c,:d,:e,:f,:g,:h,:i,:j,:k)';
      ParamByName('a').Value := txtuser.Text;
      ParamByName('b').Value := txtpassword.Text;
      ParamByName('c').Value := 1;
      ParamByName('d').Value := 1;
      ParamByName('e').Value := 1;
      ParamByName('f').Value := 1;
      ParamByName('g').Value := 1;
      ParamByName('h').Value := 1;
      ParamByName('i').Value := 1;
      ParamByName('j').Value := 1;
      ParamByName('k').Value := -1;
      ExecSQL;
      Close;
      SQL.Clear;
      SQL.Text := 'select * FROM tbl_tpl_wewenang order by kode';
      Open;
      for i := 0 to RecordCount - 1 do begin
        Q1.Close;
        Q1.SQL.Clear;
        Q1.SQL.Text := 'insert into tbl_wewenang values (:a,:b,:c)';
        Q1.ParamByName('a').Value := txtuser.Text;
        Q1.ParamByName('b').Value := FieldValues['nm_comp'];
        Q1.ParamByName('c').Value := '1';
        Q1.ExecSQL;
        Next;
      end;
      Free;
      Frm_User.RefreshQ;
      Frm_Login.Close;
    end;
  end;
end;

procedure TFrm_Login.ClearText;
begin
  txtuser.Clear;
  txtuser.ReadOnly := False;
  txtPassword.Clear;
end;

procedure TFrm_Login.txtPasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then begin
    BtnLoginClick(nil);
  end;
end;

end.
