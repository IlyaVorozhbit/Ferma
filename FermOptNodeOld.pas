unit FermOptNode;

interface

uses
     Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     Menus, ExtCtrls, Ferm_Dat, FermaFixNode, StdCtrls , Buttons;

type
  TFerm_opt_node = class(TForm)
    GroupBox1: TGroupBox;
    Ok_Btn: TBitBtn;
    GroupBox5: TGroupBox;
    ComboBox1: TComboBox;
    Edit9: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    GroupBox6: TGroupBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Edit3: TEdit;
    ScrollBar1: TScrollBar;
    GroupBox3: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    CheckBox1: TCheckBox;
    GroupBox4: TGroupBox;
    Edit8: TEdit;
    Label3: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    GroupBox7: TGroupBox;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    CheckBox2: TCheckBox;
    BitBtn1: TBitBtn;
//    procedure Button1Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);

    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Click11(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Ok_BtnClick(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox2Click1(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);




  private
    { Private declarations }
  public
    { Public declarations }
//    ferma5_kol_uzlov:integer;// FERMA 5
    ferma5_kol_uzlov_m :array [1..10] of integer; // FERMA 5
    ferma_5_dannie_o_uzlax:array [1..10,1..5] of integer; // ������ � ������ ���� -  ��������� �����������

    nyz1:integer;
    Ak_flag :boolean;
    Ak_num, Ak_Rad  :integer;

//     procedure Ok_BtnClick(Sender: TObject);
    //     function Execute1(var xh:integer):boolean;
  end;

var
  Ferm_opt_node: TFerm_opt_node;

implementation

uses Main, Fix_node, ForcNode, SimplRezFerm,
     FermOptResults, Ferma_FD, FermaForceNode, CoordNode, FermaPivotTol,
     Plast_FD, TOK_FD, selectMetod, RezVC1, FermOptNode_Uzel, Ferma_M
  ;
{$R *.dfm}
{
procedure TFerm_opt_node.Button1Click(Sender: TObject);
var
xh,x:integer;
begin
Ferm_opt_node.Visible:=False;
Ferm_opt_node.Execute(xh);
//Ferma_M.Ferma_Form.N90Click(Sender);
end;
 }
procedure TFerm_opt_node.Edit3Change(Sender: TObject);
var
j,i,x,y:integer;
begin
x:=strtoint(combobox1.text);  // ����
y:=strtoint(edit3.text); // ������ ������
 { with Ferma_M.Ferma_Form.PaintBox.Canvas do
                         begin
                              pen.Mode   :=pmNotXor;
                              pen.Width  :=2;
                              pen.Color  :=clBlue;
                              brush.Color:=clWhite;
                              pen.Mode   :=pmNotXor;
                             // Ellipse(x,y/2,+5,+5);
Ellipse(round(Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[x,1]-round(y/2)), round(Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[x,2]+y/2),round(Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[x,1]+y/2),round(Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[x,2]-y/2));
end;
  }

if y>200 then y:=200;
Ak_flag:=true;
Ak_num:=x;
Ak_Rad:=y;
FermOptNode.Ferm_opt_node.ScrollBar1.Position:=y;

  j:=0;// ����� ������
  for i:=1 to strtoint(edit9.Text) do
  begin
   if ferma5_kol_uzlov_m[i]=strtoint(ComboBox1.Text) then
    begin
    j:=i;
    end;
  end;
  // ������ j - ����� ������� ��������

ferma_5_dannie_o_uzlax[j,2]:=strtoint(edit3.Text); //������ ������� ������
Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).RePaint;


end;



procedure TFerm_opt_node.ScrollBar1Change(Sender: TObject);
var
Scale:integer;
 label exx1;
begin
 if edit9.text='0' then   // ���� ��� ����� �� ������ ������ ��������
 goto exx1;

Scale:=FermOptNode.Ferm_opt_node.ScrollBar1.Position;
edit3.Text:=IntToStr(scale);
Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).RePaint;
exx1:
end;







procedure TFerm_opt_node.Button1Click(Sender: TObject);
var
n_uzla:integer;
// ���� ��� ��� ��� ������ ��� ���� ���� �������� ��  ��������� NYZ - ���� � ����� ������� � ������ ����� �� ����������
 ff: System.Text;
 filename:string;
 i,j:integer;
 NST:integer;                                       {��C�O CTEP�HE� �EPM�}
 NYZ:integer;                                       {��C�O ���OB}
rmin:real; //awtoradius
r0,r1,r2,r3:integer;//awtoradius
a,b,c,sina,cosa:real;//awtoradius
 // ����� ����������

j1,i1:integer;
 label m303;
begin
Form4.Edit1.Text:='';
 Form4.Left :=ferm_opt_node.left+30;
 Form4.top :=ferm_opt_node.top+175;


  if Form4.ShowModal<>mrOk then
  begin
  goto m303;
  end;
  // ���� ����� ��



j1:=strtoint(Ferm_opt_node.Edit9.Text); // ����� ������� ����� ( ������� 1)

 if j1>4 then
 begin
 Main_Form.StatusBar1.Panels[2].Text :='����� ������ ������ 5 ! ';
 goto m303;
 end;

 i1:=strtoint(form4.Edit1.text); // ����� ���� - ��������

// *************
 // ������� ������ �� �������- ���� �� NYZ
FileName:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).FileName;

    AssignFile(ff,FileName);
     reset(ff);
     readln(ff,nst);
     readln(ff,nyz);
     CloseFile(ff);
// ���������

i:=0; // priznak o6ibki
if form4.edit1.text='' then form4.edit1.text:='0';

if i1 <= 0 then
 begin
 form4.edit1.text:='1';
 i:=1;// ���� ������
 Main_Form.StatusBar1.Panels[2].Text :='�������� ����� ����';
 end;

if i1 > nyz then
 begin
 Main_Form.StatusBar1.Panels[2].Text :='�������� ����� ����';

 i:=1;
 end;

 if i=0 then Main_Form.StatusBar1.Panels[2].Text :=' ' //���� �� ���� ������
 else
 goto m303;
// **************



for i:=1 to j1 do
begin
 if ferma5_kol_uzlov_m[i]=i1 then // ���� ����� � �������
  begin
  Main_Form.StatusBar1.Panels[2].Text :='���� ��� ���� � ������ ! ';
  goto m303;
  end;

end;
///********************



// ��������  � ���������� ����������� � ����� ����������
 begin
// Fermoptnode.Ferm_opt_node.modalresult:=mrOk;
 Main_Form.StatusBar1.Panels[2].Text :=' ';
 Groupbox6.Visible:=true;


 end;



// ������ ���� ����������  ������
  ferma5_kol_uzlov_m[j1+1]:=i1;
  Ferm_opt_node.Edit9.Text:=inttostr(j1+1);
  Ferm_opt_node.ComboBox1Click11(sender);// ���������� �������
// ���������� ������� ������� ����
  ferma_5_dannie_o_uzlax[j1+1,1]:=strtoint(edit1.Text); // ����� ��������� ����
  ferma_5_dannie_o_uzlax[j1+1,2]:=strtoint(edit3.Text); //������ ������� ������

  if radiobutton1.Checked then
  ferma_5_dannie_o_uzlax[j1+1,3]:=1;// ��������� ��������� (�� �)
  if radiobutton2.Checked  then
  ferma_5_dannie_o_uzlax[j1+1,3]:=2;// ��������� ��������� (�� Y)
  if radiobutton3.Checked  then
  ferma_5_dannie_o_uzlax[j1+1,3]:=3;// ��������� ��������� (�� �Y)


  if fermoptnode.Ferm_opt_node.CheckBox1.Checked=true then // ����� ������������� ������
  ferma_5_dannie_o_uzlax[j1+1,4]:=1
  else
  ferma_5_dannie_o_uzlax[j1+1,4]:=0;

  if checkbox2.Checked=true then // ��� ����������
  ferma_5_dannie_o_uzlax[j1+1,5]:=1
  else
  ferma_5_dannie_o_uzlax[j1+1,5]:=0;




ComboBox1.itemindex:=j1; // �������� ���������
Ferm_opt_node.ComboBox1Change(Sender);// ����� ������ � ������ ����

// AWTORADIUS ������ �������� ������� !

if  checkbox2.Checked=true then Ferm_opt_node.CheckBox2Click1(Sender)  ;
//***** end of  AwtoRadius ********************


m303:
end;

procedure TFerm_opt_node.ComboBox1Click11(Sender: TObject);
var
j,i:integer;
begin
j:=strtoint(Ferm_opt_node.Edit9.Text); // ����� ������� ����� ( ������� 1)
 Ferm_opt_node.ComboBox1.Items.Clear;

   for i:=1 to  j  do
//   Ferm_opt_node.ComboBox1.Items.Add(IntToStr(i));   // ���������� ��� ������� �� ������� ���� �������-  ����
   Ferm_opt_node.ComboBox1.Items.Add(IntToStr(ferma5_kol_uzlov_m[i]));   // ���������� ��� ������� �� ������� ���� �������-  ����


Ferm_opt_node.ComboBox1.itemindex:=0; // �������� ��p���


 ferma_FD_form.showD(f);
 Main_Form.ActiveMDIChild.RePaint;
end;




procedure TFerm_opt_node.ComboBox1Change(Sender: TObject);
var
i,j:integer;
label exx;
begin
// ��� ������ ������� �������� �������� ��� �������� ������� �������

  j:=0;// ����� ������
if edit9.Text='0' then goto exx;

  for i:=1 to strtoint(edit9.Text) do
  begin
   if ferma5_kol_uzlov_m[i]=strtoint(ComboBox1.Text) then
    begin
    j:=i;
    end;
  end;
  // ������ j - ����� ������� ��������



// ���������� ������
 edit1.text:= inttostr( fermoptnode.Ferm_opt_node.ferma_5_dannie_o_uzlax[j,1]); //������������ ���������� ����� .
  edit3.text:=inttostr( fermoptnode.Ferm_opt_node.ferma_5_dannie_o_uzlax[j,2]); //������ ������� ������


  if fermoptnode.Ferm_opt_node.ferma_5_dannie_o_uzlax[j,3]=1   then
    fermoptnode.Ferm_opt_node.radiobutton1.Checked:=true;
  if fermoptnode.Ferm_opt_node.ferma_5_dannie_o_uzlax[j,3]=2   then
    fermoptnode.Ferm_opt_node.radiobutton2.Checked:=true;
  if fermoptnode.Ferm_opt_node.ferma_5_dannie_o_uzlax[j,3]=3   then
    fermoptnode.Ferm_opt_node.radiobutton3.Checked:=true;


  if   fermoptnode.Ferm_opt_node.ferma_5_dannie_o_uzlax[j,4]=1 then // ����� ������������� ������
  fermoptnode.Ferm_opt_node.CheckBox1.Checked:=true
  else
  fermoptnode.Ferm_opt_node.CheckBox1.Checked:=false;

  if   ferma_5_dannie_o_uzlax[j,5]=1 then  // ��� ����������
  checkbox2.checked:=true
  else
  checkbox2.checked:=false;

  //*************************************** zakoncili ��������� ������� ��� ������ ����
// ���������� ������
Edit3Change(Sender);
// ������� ��������� � GroupBox
groupbox6.caption:='���� � '+ (ComboBox1.Text) ;



exx:
end;




procedure TFerm_opt_node.Button2Click(Sender: TObject);

var
n_uzla:integer;

i,j,j1,i1:integer;
 label m303;
begin

  if Form4.ShowModal<>mrOk then
  begin
  goto m303;
  end;
  // ���� ����� ��

  j1:=strtoint(Ferm_opt_node.Edit9.Text); // ����� ������� ����� ( ������� 1)


 if j1<=0 then // �������� - ���� ��� �����
 begin
  Main_Form.StatusBar1.Panels[2].Text :='��� �� ������ ���� ! ';
  goto m303;
 end;

 if j1=1 then // �������� - ���� ������� ��������� ����
 begin
 Fermoptnode.Ferm_opt_node.Ok_Btn.modalresult:=mrCancel;
  Ak_flag:=false  ; // ������ ������
   Main_Form.ActiveMDIChild.RePaint;

 Main_Form.StatusBar1.Panels[2].Text :='������� ��� ���� ! ';
 Groupbox6.Visible:=false;






 end;

 i1:=strtoint(form4.Edit1.text); // ����� ���� - ��������

// **************
j:=1; // ������� ������
for i:=1 to j1 do
begin
 if ferma5_kol_uzlov_m[i]=i1 then // ���� ����� � �������
  begin
  j:=0; // ����� - ����� ������
  n_uzla:=i; // �������� ����� � �������
  end;

end;
if j=1 then
 begin
 Main_Form.StatusBar1.Panels[2].Text :='���� �� ������ � ������ ! ';

 goto m303;
 end;


// �������� �� ������� �������������� ����� ���������� ����
for i:=n_uzla to j1-1 do
  ferma5_kol_uzlov_m[i]:=  ferma5_kol_uzlov_m[i+1];

// ��� ��������  - ������� ������ ����� �� ���� ������� � ������� �����
  Ferm_opt_node.Edit9.Text:=inttostr(j1-1);


 // ��������� ������� � ����������� �����������
 // �������� �� ������� �������������� ����� ���������� ����
for i:=n_uzla to j1-1 do
 begin
  ferma_5_dannie_o_uzlax[i,1]:=ferma_5_dannie_o_uzlax[i+1,1];
  ferma_5_dannie_o_uzlax[i,2]:=ferma_5_dannie_o_uzlax[i+1,2];
  ferma_5_dannie_o_uzlax[i,3]:=ferma_5_dannie_o_uzlax[i+1,3];
  ferma_5_dannie_o_uzlax[i,4]:=ferma_5_dannie_o_uzlax[i+1,4];
  ferma_5_dannie_o_uzlax[i,5]:=ferma_5_dannie_o_uzlax[i+1,5];
 end;

   Ferm_opt_node.ComboBox1Click11(sender);// ���������� �������
   Ferm_opt_node.ComboBox1Change(Sender);// ����� ������ � ������ ����

m303:


end;

procedure TFerm_opt_node.Edit1Change(Sender: TObject);
var
i,j:integer;
begin

  j:=0;// ����� ������
  for i:=1 to strtoint(edit9.Text) do
  begin
   if ferma5_kol_uzlov_m[i]=strtoint(ComboBox1.Text) then
    begin
    j:=i;
    end;
  end;
  // ������ j - ����� ������� ��������


// ���������� ������� ������� ����
  ferma_5_dannie_o_uzlax[j,1]:=strtoint(edit1.Text); // ����� ��������� ����

end;




procedure TFerm_opt_node.RadioButton3Click(Sender: TObject);
var
i,j:integer;
begin
  j:=0;// ����� ������
  for i:=1 to strtoint(edit9.Text) do
  begin
   if ferma5_kol_uzlov_m[i]=strtoint(ComboBox1.Text) then
    begin
    j:=i;
    end;
  end;
  // ������ j - ����� ������� ��������

ferma_5_dannie_o_uzlax[j,3]:=3; //������ ������� ������

end;

procedure TFerm_opt_node.RadioButton1Click(Sender: TObject);
var
i,j:integer;
begin
  j:=0;// ����� ������
  for i:=1 to strtoint(edit9.Text) do
  begin
   if ferma5_kol_uzlov_m[i]=strtoint(ComboBox1.Text) then
    begin
    j:=i;
    end;
  end;
  // ������ j - ����� ������� ��������

ferma_5_dannie_o_uzlax[j,3]:=1; //������ ������� ������
end;

procedure TFerm_opt_node.RadioButton2Click(Sender: TObject);
var
i,j:integer;
begin
  j:=0;// ����� ������
  for i:=1 to strtoint(edit9.Text) do
  begin
   if ferma5_kol_uzlov_m[i]=strtoint(ComboBox1.Text) then
    begin
    j:=i;
    end;
  end;
  // ������ j - ����� ������� ��������

ferma_5_dannie_o_uzlax[j,3]:=2; //������ ������� ������
end;




procedure TFerm_opt_node.CheckBox1Click(Sender: TObject);
var
i,j:integer;
begin
  j:=0;// ����� ������
  for i:=1 to strtoint(edit9.Text) do
  begin
   if ferma5_kol_uzlov_m[i]=strtoint(ComboBox1.Text) then
    begin
    j:=i;
    end;
  end;
  // ������ j - ����� ������� ��������


  if fermoptnode.Ferm_opt_node.CheckBox1.Checked=true then // ����� ������������� ������
  ferma_5_dannie_o_uzlax[j,4]:=1
  else
  ferma_5_dannie_o_uzlax[j,4]:=0;

end;



procedure TFerm_opt_node.Ok_BtnClick(Sender: TObject);
var
i,j:integer;
label exxx;
begin

if edit9.text='0' then
 begin
  Main_Form.StatusBar1.Panels[2].Text :='�� ������ �� ���� ���� ! ';
  goto exxx;
 end
 else
  Fermoptnode.Ferm_opt_node.modalresult:=mrOk;


  j:=0;// ����� ������
  for i:=1 to strtoint(edit9.Text) do
  begin
   if ferma5_kol_uzlov_m[i]=strtoint(ComboBox1.Text) then
    begin
    j:=i;
    end;
  end;
  // ������ j - ����� ������� ��������


  ferma_5_dannie_o_uzlax[j,1]:=strtoint(edit1.Text); // ����� ��������� ����
  ferma_5_dannie_o_uzlax[j,2]:=strtoint(edit3.Text); //������ ������� ������

  if radiobutton1.Checked   then
  ferma_5_dannie_o_uzlax[j,3]:=1;// ��������� ��������� (�� �)
  if radiobutton2.Checked then
  ferma_5_dannie_o_uzlax[j,3]:=2;// ��������� ��������� (�� Y)
  if radiobutton3.Checked  then
  ferma_5_dannie_o_uzlax[j,3]:=3;// ��������� ��������� (�� �Y)


  if fermoptnode.Ferm_opt_node.CheckBox1.Checked=true  then // ����� ������������� ������
  ferma_5_dannie_o_uzlax[j,4]:=1
  else
  ferma_5_dannie_o_uzlax[j,4]:=0;

  if fermoptnode.Ferm_opt_node.CheckBox2.Checked=true  then // ����� ������������� ������
  ferma_5_dannie_o_uzlax[j,5]:=1
  else
  ferma_5_dannie_o_uzlax[j,5]:=0;


exxx:
end;



procedure TFerm_opt_node.CheckBox2Click1(Sender: TObject);
var
 NST:integer;                                       {��C�O CTEP�HE� �EPM�}
 NYZ:integer;                                       {��C�O ���OB}
rmin:real; //awtoradius
i1,r1,r2,r3:integer;//awtoradius
a,b,c,sina,cosa:real;//awtoradius
 // ����� ����������

begin


// *******************************FERMA 6.1 **************
// ����� ���������� - ����������
// ������������� ������������ ������ ����������� ���������� �������� "������" - ����� �������
// ����������� � ���������� ������������� ���������� �� ��������� ���� �� ���������� ����/�������.
// ******************************************************
// �������� ������ - ���-�� �����, ���-�� ��������, ���������� ���� �����, ����� ��������������� ����, �������( ���� ���� �� ������������)
// i1- ����� ��������������� ����
// �����- ��������� ������. rmin
//
//
{
  AssignFile(dd,ff1);.. *.frm
        rewrite(dd);

        READln (d1,NST); // ����� ��������� �����
        READln (d1,NYZ); // ����� �����
        READln (d1,NY);
        READln (d1,E);
        READln (d1,NSN);
        READln (d1,SD);
//      writeln(dd,'������ ��������� ��������');
        for i:=1 to nst do
          begin
          readln(d1,ITOP[i,1]);
          readln(d1,ITOP[i,2]);
         end;

//      writeln(dd,'������ ��������� �����');
        for i:=1 to nyz do
          begin
          readln(d1,cor[i,1]);
          readln(d1,cor[i,2]);
         end;
}

// �������� ���� ��� �����.
 i1:=strtoint(ComboBox1.text);
rmin:= abs (sqrt (sqr( Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[1,1]-Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[i1,1]) +  sqr(Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[1,2]-Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[i1,2]) )) ; // ���������� ( �� ������ ) �� ������ ���� �� 1�� ����
 if  rmin=0 then // ���� 1�� ���� � ���� �� ����� 2 - �� �����
  rmin:= abs (sqrt (sqr( Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[2,1]-Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[i1,1]) +  sqr(Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[2,2]-Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[i1,2]) )) ; // ���������� ( �� ������ ) �� ������ ���� �� 1�� ����

//rmin:= abs (sqrt (sqr( cor[1,1]-cor[i1,1]) +  sqr(cor[1,2]-cor[i1,2]) )) ; // ���������� ( �� ������ ) �� ������ ���� �� 1�� ����
for r1:=1 to Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.nyz1 do

 begin
 if r1<>i1 then   // ���� ��� ��� �� ���� �� ��� �� ���������
 if abs (sqrt (sqr(Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[r1,1]-Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[i1,1]) +  sqr(Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[r1,2]-Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[i1,2]) )) < rmin then // ���� ���������� ������ ��� ��� ���� �� ���������� ���
  rmin:=abs (sqrt (sqr(Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[r1,1]-Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[i1,1]) +  sqr(Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[r1,2]-Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[i1,2]) ));
 end;

//����� ����� ���� � ���� �������� ( ������������m �����������)
for  r3:=1  to Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.nst1 do

 begin

  r1:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.ITOPn[r3,1];
  r2:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.ITOPn[r3,2];

  a:=abs (sqrt (sqr(Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[r2,1]-  Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[r1,1]) +  sqr(Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[r2,2]-  Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[r1,2]) )); // ������� �������� ����

  b:=abs (sqrt (sqr(Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[i1,1]-  Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[r1,1]) +  sqr(Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[i1,2]-  Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[r1,2]) ));

  c:=abs (sqrt (sqr(Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[i1,1]-  Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[r2,1]) +  sqr(Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[i1,2]-  Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[r2,2]) ));

 if (a<>0) and (b<>0) and (c<>0) then
 begin

  // a**2=b**2+c**2 - 2*b*c*cos

  cosa:=( sqr(b)+sqr(c)-sqr(a) )/(2*b*c)  ;
  sina:=sqrt( 1- sqr(cosa) );

  // sin/a=sin/b=sin/c  ==> sinB=sinA*b/a

  // ���� ���� ����� �� ������� �������� - ������
  if cosa <=0 then
     if      c*(sina*b/a) < rmin then      rmin:=c*(sina*b/a) // ����� ����� - ���� ���� ��� �����  . �� �������� ���� ������ ��� �������� ������ ��� � ��� ���������.
//     rmin:=a*(sina*b/a) // ����� ����� - ���� ���� ��� �����
  else // ����� ���� ������� �������
   begin
   // ���� ���� ���� �� ���� ���������� ����� - ����� - �� ������ �� ������.  ����� ����� ���� ������
   if  not ( ( (( sqr(c)+sqr(a)-sqr(b) )/(2*a*c ))<0)  or (   (( sqr(a)+sqr(b)-sqr(c) )/(2*a*b) )<0 ))  then // ���� ���� ���� ��� ����� - �����
//    rmin:=c*(sina*b/a); // ����� ����� - ���� ��� ������ �� ������
      if c*(sina*b/a)< rmin then  rmin:=c*(sina*b/a); // ����� ����� - ���� ��� ������ �� ������

   end;


  end;
 end;


 edit3.Text:=inttostr(round(rmin-0.51));




end;





procedure TFerm_opt_node.CheckBox2Click(Sender: TObject);
var
 NST:integer;                                       {��C�O CTEP�HE� �EPM�}
 NYZ:integer;                                       {��C�O ���OB}
rmin:real; //awtoradius
i1,r1,r2,r3:integer;//awtoradius
a,b,c,sina,cosa:real;//awtoradius
i,j:integer;
 // ����� ����������

begin
  j:=0;// ����� ������
  for i:=1 to strtoint(edit9.Text) do
  begin
   if ferma5_kol_uzlov_m[i]=strtoint(ComboBox1.Text) then
    begin
    j:=i;
    end;
  end;
  // ������ j - ����� ������� ��������

//*************************************
if  checkbox2.Checked=false then
 begin
 edit3.enabled:=true;
 scrollbar1.enabled:=true;
 ferma_5_dannie_o_uzlax[j,5]:=0;
 end
else
 begin
 Ferm_opt_node.CheckBox2Click1(sender);
 edit3.enabled:=false;
 scrollbar1.enabled:=false;
 ferma_5_dannie_o_uzlax[j,5]:=1;
 end;
end;


procedure TFerm_opt_node.BitBtn1Click(Sender: TObject);
begin
Ferm_opt_node.Close;
end;

end.
