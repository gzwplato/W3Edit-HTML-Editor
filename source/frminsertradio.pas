unit frmInsertRadio;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ButtonPanel, Buttons, ExtCtrls;

type

  { TfInsertRadio }

  TfInsertRadio = class(TForm)
    Bevel1: TBevel;
    bcancel: TBitBtn;
    bok: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    tinline: TEdit;
    Image1: TImage;
    Label6: TLabel;
    Panel1: TPanel;
    tclass: TEdit;
    tid: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure bcancelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bokClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  fInsertRadio: TfInsertRadio;

implementation

uses unit1;

procedure TfInsertRadio.FormCreate(Sender: TObject);
begin

end;

procedure TfInsertRadio.FormActivate(Sender: TObject);
begin
  edit1.SetFocus;
end;

procedure TfInsertRadio.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  CloseAction := caFree;
end;

procedure TfInsertRadio.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertRadio.ComboBox1Change(Sender: TObject);
begin
  if (combobox1.ItemIndex=1) or (combobox1.ItemIndex=2) then edit6.Enabled:=true else edit6.Enabled:=false;
end;

procedure TfInsertRadio.Edit1Change(Sender: TObject);
begin
  tid.text := edit1.text;
end;

procedure TfInsertRadio.BitBtn1Click(Sender: TObject);
begin

end;

procedure TfInsertRadio.bcancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertRadio.bokClick(Sender: TObject);
var c:string;
begin
c:=c+'<input type="radio"';
if edit1.text<>'' then c:=c+' name="'+edit1.text+'"';
if edit5.text<>'' then c:=c+' value="'+edit5.text+'"';
if checkbox1.checked then c:=c+' disabled="disabled"';
if checkbox2.checked then c:=c+' checked="checked"';
if tclass.text<>'' then c:=c+' class="'+tclass.text+'"';
if tid.text<>'' then c:=c+' id="'+tid.text+'"';
if tinline.text<>'' then c:=c+' style="'+tinline.text+'"';
c:=c+' />';
if combobox1.ItemIndex=1 then c:=c+#13#10+'<label>'+edit6.text+'</label>';
if combobox1.ItemIndex=2 then c:=c+#13#10+'<label for="'+edit1.text+'">'+edit6.text+'</label>'+#13#10;
InsertEditor(c);
Close;
end;

procedure TfInsertRadio.FormShow(Sender: TObject);
begin

end;

initialization
  {$I frminsertradio.lrs}

end.

