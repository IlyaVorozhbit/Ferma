unit AddForce;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TAddForce_Form = class(TForm)
    Bevel1: TBevel;
    Bevel2: TBevel;
    OS_Label: TLabel;
    number: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Bevel3: TBevel;
    OK: TBitBtn;
    cancel: TBitBtn;
    procedure OKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nf:boolean;
  end;

var
  Addforce_Form: TAddforce_Form;

implementation

uses Main, Ferm_dat, Plast_FD,Plast_M, Forcnode;
var
plast:tplast;
nf:boolean;

{$R *.DFM}

procedure TAddForce_Form.OKClick(Sender: TObject);
label 3;
var i,j,k:integer;

 begin

  try
   strtoint(Number.text)
  except
    Main_Form.StatusBar1.Panels[1].Text := 'Ошибка при задании номера.';
    Main_Form.StatusBar1.Panels[2].Text := 'Введите целое положительное число.';
    beep;
    Exit;
  end;

  if strtoint(number.text)<0 then
   begin
    Main_Form.StatusBar1.Panels[1].Text := 'Отрицателный номер.';
    Main_Form.StatusBar1.Panels[2].Text := 'Введите целое положительное число.';
    beep;
    Exit;
   end;

   Plast_m.TPlast_Form(main_Form.ActiveMDIChild).CurrentNode:=strtoint(Number.text);
    with Plast_m.TPlast_Form(main_Form.ActiveMDIChild) do
    begin
    if kl=0 then
      begin
        inc(kl);

        inc(Kt[kl]);
        nagruz[kl,kt[kl],1]:=CurrentNode;

        Main_Form.Plast_Sn_Cbx.Items.clear;
        for i:=1 to kl do  Main_Form.Plast_Sn_Cbx.Items.Add('Случай нагружения '+IntToStr(i));
        main_form.Plast_SN_Cbx.ItemIndex:=kl-1;

        if kl<=0 then main_form.plast_Sn_cbx.Enabled:=false
        else  main_form.plast_Sn_cbx.Enabled:=true;
        end
     else

      begin

       for i:= 1 to kt[main_form.Plast_SN_Cbx.ItemIndex+1] do if (nagruz[main_form.Plast_SN_Cbx.ItemIndex+1,i,1]=CurrentNode) then
         begin
         DeleteNode(CurrentNode,main_form.Plast_SN_Cbx.ItemIndex+1);
         repaint;
       end;

     if(kt[main_form.Plast_SN_Cbx.ItemIndex+1]=3) then
       Begin
         MessageDlg(#13+'Слишком много нагруженных узлов для этого случая',mtWarning,[mbOk],0);
         exit;
       end;

       inc(kt[main_form.Plast_SN_Cbx.ItemIndex+1]);
       nagruz[main_form.Plast_SN_Cbx.ItemIndex+1,kt[main_form.Plast_SN_Cbx.ItemIndex+1],1]:=CurrentNode;

     end;

   plast.kl1:=0;

  ForceNode_Form.showmodal;
  // Убиваем незакрепленные узлы, теперь это сделать гораздо проще :)

  for i:= 1 to kt[main_form.Plast_SN_Cbx.ItemIndex+1] do if ((nagruz[main_form.Plast_SN_Cbx.ItemIndex+1,i,3]=0)and(nagruz[main_form.Plast_SN_Cbx.ItemIndex+1,i,4]=0)) then
       begin
         DeleteNode(nagruz[main_form.Plast_SN_Cbx.ItemIndex+1,i,1],main_form.Plast_SN_Cbx.ItemIndex+1);
         repaint;
       end;
  end;

end;

procedure TAddForce_Form.FormShow(Sender: TObject);
begin
 number.text:='';
 number.SetFocus;
 AddForce_Form.Left:=plast_fd_form.Left+4;
 AddForce_Form.top:=plast_fd_form.top+138;
end;

procedure TAddForce_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if nf then
 begin
 main_form.PlastNumberButton.down:=false;
 Plast_M.TPlast_Form(Main_Form.ActiveMDIChild).repaint;
 end;
end;

procedure TAddForce_Form.FormDeactivate(Sender: TObject);
begin
 if nf then
 begin
 main_form.PlastNumberButton.down:=false;
 Plast_M.TPlast_Form(Main_Form.ActiveMDIChild).repaint;
 end;
end;

procedure TAddForce_Form.FormActivate(Sender: TObject);
begin
 nf:=false;
 if not main_form.PlastNumberButton.down then
 begin
 //main_form.PlastNumberButtonclick(sender);
 main_form.PlastNumberButton.down:=true;
 Plast_M.TPlast_Form(Main_Form.ActiveMDIChild).repaint;
 nf:=true;
 end;
end;

end.
