unit AddZak;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TAddZak_Form = class(TForm)
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
  AddZak_Form: TAddZak_Form;

implementation

uses Main, Ferm_dat, Plast_FD,Plast_M, Fix_node;
var
plast:tplast;
{nf:boolean;}

{$R *.DFM}

procedure TAddZak_Form.OKClick(Sender: TObject);
label
3;
var
  r,m,s:TPoint;
  i,jx,jy:integer;
  CurrentNode,nz,max_x_coord,max_y_coord:integer;
  ux,uy:single;
  z1,z2,z3:array[1..plast_max_zak] of integer; // ����������� (����� ����, X � Y)
begin
 plast:=Plast_M.TPlast_Form(Main_Form.ActiveMDIChild).plast;

  try
   strtoint(Number.text)
  except
    Main_Form.StatusBar1.Panels[1].Text := '������ ��� ������� ������.';
    Main_Form.StatusBar1.Panels[2].Text := '������� ����� ������������� �����.';
    beep;
    //repaint;//
    Exit;
  end;
  if strtoint(number.text)<0 then
   begin
    Main_Form.StatusBar1.Panels[1].Text := '������������ �����.';
    Main_Form.StatusBar1.Panels[2].Text := '������� ����� ������������� �����.';
    beep;
    //repaint;//
    Exit;
   end;

   Plast_m.TPlast_Form(main_Form.ActiveMDIChild).CurrentNode:=strtoint(Number.text);
   CurrentNode:=Plast_m.TPlast_Form(main_Form.ActiveMDIChild).CurrentNode;

  // �����������
       if plast.kx1>=plast.ky1 then
         begin
          jx:=(currentnode-1) div plast.ky1+1;
          jy:= currentnode-plast.ky1*(jx-1);
         end
        else
         begin
          jy:=(currentnode-1) div plast.kx1+1;
          jx:=currentnode-plast.kx1*(jy-1);
         end;
         max_x_coord:=round(plast.xm1[plast.kx1]);
         max_y_coord:=round(plast.ym1[plast.ky1]);

        ux:=50+coord_axis_x+(Plast_m.TPlast_Form(main_Form.ActiveMDIChild).paintbox.width-80-coord_axis_x)/max_x_coord*(plast.xm1[jx]);
        uy:=Plast_m.TPlast_Form(main_Form.ActiveMDIChild).paintbox.height-30-coord_axis_y-(Plast_m.TPlast_Form(main_Form.ActiveMDIChild).paintbox.height-60-coord_axis_y)/max_y_coord*(plast.ym1[jy]);

3:  if CurrentNode=0 then Exit;

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  M.x:=Round(ux)+7;
  M.y:=Round(uy)+7;

  r.x:=Round(ux);
  r.y:=Round(uy);

  if CurrentNode=0 then Exit;
  FixNode_Form.Top:=plast_m.tplast_form(main_form.activemdichild).ClientToScreen(M).y;
  FixNode_Form.Left:=plast_m.tplast_form(main_form.activemdichild).ClientToScreen(M).x;

  if plast_m.tplast_form(main_form.activemdichild).ClientToScreen(M).y+FixNode_Form.Height>Screen.Height then
   begin
     S.y:=r.y-7-FixNode_Form.Height;
     S.x:=r.x+11;
     FixNode_Form.Top:=plast_m.tplast_form(main_form.activemdichild).ClientToScreen(S).y;;
     FixNode_Form.Left:=plast_m.tplast_form(main_form.activemdichild).ClientToScreen(S).x;
   end;
  if plast_m.tplast_form(main_form.activemdichild).ClientToScreen(M).x+FixNode_Form.Width>Screen.Width then
   begin
     S.y:=r.y+7;
     S.x:=r.x-7-FixNode_Form.Width;
     FixNode_Form.Top:=plast_m.tplast_form(main_form.activemdichild).ClientToScreen(S).y;;
     FixNode_Form.Left:=plast_m.tplast_form(main_form.activemdichild).ClientToScreen(S).x;
   end;
  if (plast_m.tplast_form(main_form.activemdichild).ClientToScreen(M).x+FixNode_Form.Width>Screen.Width) and
     (plast_m.tplast_form(main_form.activemdichild).ClientToScreen(M).y+FixNode_Form.Height>Screen.Height) then
   begin
     S.y:=r.y-7-FixNode_Form.Height;
     S.x:=r.x-7-FixNode_Form.Width;
     FixNode_Form.Top:=plast_m.tplast_form(main_form.activemdichild).ClientToScreen(S).y;;
     FixNode_Form.Left:=plast_m.tplast_form(main_form.activemdichild).ClientToScreen(S).x;
   end;

     nz:=0;
  for i:=1 to plast.kz1 do
    if plast.zak1[i]=CurrentNode then
      begin
        nz:=i;
        Break;
      end;
  if nz=0 then
    begin
      if plast.kz1=plast_max_zak then
        begin
          MessageDlg('������� ����� ������������ �����',mtWarning,[mbOk],0);
          Exit;
        end;
      inc(plast.kz1);
      nz:=plast.kz1;
      plast.zak1[nz]:=CurrentNode;
      plast.zak2[nz]:=0;
      plast.zak3[nz]:=0;
    end;
  FixNode_Form.Execute(plast.zak2[nz],plast.zak3[nz]);
// ������� �������������� ����
  nz:=1;
  for i:=1 to plast.kz1 do
    if (plast.zak2[i]<>0)or(plast.zak3[i]<>0) then
      begin
        z1[nz]:=plast.zak1[i];
        z2[nz]:=plast.zak2[i];
        z3[nz]:=plast.zak3[i];
        inc(nz);
      end;
  plast.kz1:=nz-1;
  for i:=1 to plast.kz1 do
    begin
      plast.zak1[i]:=z1[i];
      plast.zak2[i]:=z2[i];
      plast.zak3[i]:=z3[i];
    end;
 Plast_M.TPlast_Form(Main_Form.ActiveMDIChild).isChanged:=true;
 Main_Form.P_Save_TBtn.Enabled:=true;
 Plast_FD_Form.showD(plast);
 Main_Form.ActiveMDIChild.RePaint;
end;

procedure TAddZak_Form.FormShow(Sender: TObject);
begin
 number.text:='';
 number.SetFocus;
 AddZak_Form.Left:=plast_fd_form.Left+4;
 AddZak_Form.top:=plast_fd_form.top+138;
end;

procedure TAddZak_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if nf then
 begin
 main_form.PlastNumberButton.down:=false;
 Plast_M.TPlast_Form(Main_Form.ActiveMDIChild).repaint;
 end;
end;

procedure TAddZak_Form.FormDeactivate(Sender: TObject);
begin
 if nf then
 begin
 main_form.PlastNumberButton.down:=false;
 Plast_M.TPlast_Form(Main_Form.ActiveMDIChild).repaint;
 end;
end;

procedure TAddZak_Form.FormActivate(Sender: TObject);
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
