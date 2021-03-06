unit Tok_FD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, tok_M, Ferm_Dat, Grids, DBGrids,
  Buttons, Menus;

type
  Ttok_FD_Form = class(TForm)
    PageControl_FD: TPageControl;
    Region_TabSheet: TTabSheet;
    Zakr_TabSheet: TTabSheet;
    Node_TabSheet: TTabSheet;
    Coord_Grd_FD: TStringGrid;
    Zakr_Grd_FD: TStringGrid;
    Zakr_ComboBox_FD: TComboBox;
    Nagr_TabSheet: TTabSheet;
    Bevel2: TBevel;
    Coord_Edit_NNode: TEdit;
    Label2: TLabel;
    NNagr_Edit: TEdit;
    Bevel3: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel4: TBevel;
    Zakr_Edit_ZNNode: TEdit;
    Label5: TLabel;
    Zakr_Edit_NNode: TEdit;
    Label6: TLabel;
    Nagr_Nagr_ComboBox: TComboBox;
    GroupBox1: TGroupBox;
    Region_X_Edit: TEdit;
    Region_Y_Edit: TEdit;
    X_Label: TLabel;
    Y_Label: TLabel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    LineMeasure_ComboBox: TComboBox;
    ForceMeasure_ComboBox: TComboBox;
    Label9: TLabel;
    Label10: TLabel;
    Material_ComboBox: TComboBox;
    ModUpr_Edit: TEdit;
    Label7: TLabel;
    ModUpr_Label: TLabel;
    Bevel6: TBevel;
    tokSizeSBtn: TSpeedButton;
    Bevel7: TBevel;
    Plus_Mat: TSpeedButton;
    Minus_Mat: TSpeedButton;
    Nagr_PM: TPopupMenu;
    Node_PM: TPopupMenu;
    Plus_Node: TMenuItem;
    Minus_Node: TMenuItem;
    Coord_Node: TMenuItem;
    Zakr_PM: TPopupMenu;
    Plus_Zakr: TMenuItem;
    N3: TMenuItem;
    Nagr_Grd_FD: TStringGrid;
    Zad_FD_btn: TSpeedButton;
    Add_Nagr: TMenuItem;
    N_PM: TPopupMenu;
    Npml1: TMenuItem;
    Label8: TLabel;
    Button3: TButton;
    Button4: TButton;
    add: TButton;
    delete: TButton;
    GroupBox4: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    procedure ShowD(tok: Ttok);
    procedure Form_FD_Exit(Sender: TObject);
    procedure Coord_Grd_FDSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: String);
    procedure Coord_Grd_FDGetEditText(Sender: TObject; ACol, ARow: Integer;
      var Value: String);
    procedure Coord_Grd_FDKeyPress(Sender: TObject; var Key: Char);
    procedure Coord_Grd_FDSelectCell(Sender: TObject; Col, Row: Integer;
      var CanSelect: Boolean);
    procedure Coord_Grd_FDEnter(Sender: TObject);
    procedure Coord_Grd_FDExit(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure Zakr_Grd_FDMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Zakr_ComboBox_FDChange(Sender: TObject);
    procedure Zakr_Grd_FDMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Nagr_Nagr_ComboBoxChange(Sender: TObject);
    procedure LineMeasure_ComboBoxChange(Sender: TObject);
    procedure ForceMeasure_ComboBoxChange(Sender: TObject);
    procedure PageControl_FDChange(Sender: TObject);
    procedure Material_ComboBoxChange(Sender: TObject);
    procedure tokSizeBtnClick(Sender: TObject);
    procedure tokSizeSBtnClick(Sender: TObject);
    procedure Minus_MatClick(Sender: TObject);
    procedure CreateS_Num(Sender: TObject);

    procedure Plus_MatClick(Sender: TObject);

    procedure Nagr_Grd_FDEnter(Sender: TObject);
    procedure Nagr_Grd_FDExit(Sender: TObject);
    procedure Nagr_Grd_FDGetEditText(Sender: TObject; ACol, ARow: Integer;
      var Value: String);
    procedure Nagr_Grd_FDSelectCell(Sender: TObject; Col, Row: Integer;
      var CanSelect: Boolean);
    procedure Nagr_Grd_FDKeyPress(Sender: TObject; var Key: Char);
    procedure Nagr_Grd_FDSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: String);
    procedure Nagr_Grd_FDMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);

    procedure Coord_NodeClick(Sender: TObject);

    procedure Nagr_PMPopup(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Nagr_Grd_FDMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Zad_FD_btnClick(Sender: TObject);
    procedure Plus_ZakrClick(Sender: TObject);
    procedure Npml1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure addClick(Sender: TObject);
    procedure deleteClick(Sender: TObject);



  private
    { Private declarations }

  public
    { Public declarations }
    first_show_FD_form:boolean;


end;

function isNumber(s:string):boolean;
function isRealNumber(s:string):boolean;

var
  tok_FD_Form: Ttok_FD_Form;
  {���������� ��������� ���� ���}
      t,tok: Ttok;

  {���������� ���������� ��� ������� ��������� �����}
      Coord_Grd_Value:string; // C��������� ������������� ������
      Coord_Grd_Key:char;     // ������� ��������� �������
      Coord_Grd_Acol,Coord_Grd_Arow:integer;
      Coord_Grd_SetEdit:Boolean;
      Coord_Node_Pm:integer;
  {���������� ���������� ��� ������� ���������� �����}
      Nagr_Grd_Value:string; // C��������� ������������� ������
      Nagr_Grd_Key:char;     // ������� ��������� �������
      Nagr_Grd_Acol,Nagr_Grd_Arow:integer;
      Nagr_Grd_SetEdit:Boolean;
      Nagr_Grd_ACol_Hint,Nagr_Grd_ARow_Hint:integer;
  {���������� ���������� ��� ������� ����������� �����}
      Zakr_Grd_X,Zakr_Grd_Y:integer;
      Zakr_Grd_Acol,Zakr_Grd_ARow:integer;
      Zakr_Grd_ACol_Hint,Zakr_Grd_ARow_Hint:integer;
  {���������� ���������� ��� �������}
      s_num:extended;
      l_dimension,f_dimension:string;

implementation

uses Main, tokRegionSize, tokNewMat, CoordNode, TokZad, tokAddZak,
  tokAddNagr;
{$R *.DFM}

// ������� ��� ������� ����� (��������� �����)
// ������� ��������: ����� �� ��� � ��������� ������ (�������������)?
function isNumber(s:string):boolean;
begin
  Result:=true;
  try
    StrToFloat(s);
  except
    Result:=false;
  end;
  if result=true then
   begin
    if Strtofloat(s)<0 then   Result:=false;
   end;
end;

// ������� ��������: ����� �� ��� � ��������� ������?
function isRealNumber(s:string):boolean;
var
        x:real;
        e:integer;
begin
        val(s,x,e);
        Result:=(e=0);
  {Result:=true;
  try
    StrToFloat(s);
  except
    Result:=false;
  end;}
end;

procedure Ttok_FD_Form.ShowD(tok: Ttok);
var
 i,j,sn:integer;
 max_x_coord,max_y_coord,a{,b}:extended;
 mat_live:boolean;
begin
    t:=tok;
    l_dimension:=t.s_lin;
    f_dimension:=t.s_for;
    //�������
    for i:=0 to 2 do
     if LineMeasure_ComboBox.Items[i]=tok.s_lin then LineMeasure_ComboBox.ItemIndex:=i;

    for i:=0 to 1 do
     if ForceMeasure_ComboBox.Items[i]=tok.s_for then ForceMeasure_ComboBox.ItemIndex:=i;

    X_Label.Caption:='������ �� X  ['+tok.s_lin+']';
    Y_Label.Caption:='������ �� Y  ['+tok.s_lin+']';
    Region_X_Edit.Text:=FloatToStr(tok.xm[37]);
    Region_Y_Edit.Text:=FloatToStr(tok.ym[37]);
    max_x_coord:=0;
    max_y_coord:=0;
    for i:=1 to 36 do
     begin
      if t.xm[i]>=max_x_coord then max_x_coord:=t.xm[i];
      if t.ym[i]>=max_y_coord then max_y_coord:=t.ym[i];
     end;
    if (max_y_coord=9999.99) and (max_x_coord=9999.99) then
     begin
      tokSizeSBtn.Enabled:=False;
      Main_Form.tok_Size_ToolButton.Enabled:=False;
     end
    else
     begin
      tokSizeSBtn.Enabled:=True;
      Main_Form.tok_Size_ToolButton.Enabled:=True;
     end;
       // ��������
     CreateS_Num(Self);

    Material_ComboBox.Items.Clear;
    for i:=1 to 2+Main_Form.tok_num_mat do
      Material_ComboBox.Items.Add(Main_Form.tok_MMaterials[i].MName);
      {Material_ComboBox.Items[i-1]:=Main_Form.tok_MMaterials[i].MName; ��� �������}

      Mat_live:=false;
    for i:=1 to 2+Main_Form.tok_num_mat do
     begin
     a:=Main_Form.tok_MMaterials[i].MModUpr*s_num;
      if (FloatToStr(tok.eu)=FloatToStr(a))  then
             begin
              Mat_Live:=True;
              Material_ComboBox.ItemIndex:=i-1;
              break;
             end;
      end;

       if not Mat_live then
        begin
           Material_ComboBox.Items[3+Main_Form.tok_num_mat-1]:='<������>';
           Material_ComboBox.ItemIndex:=3+Main_Form.tok_num_mat-1;
           tok_M.Ttok_Form(Main_Form.ActiveMDIChild).Other_MModUpr:=tok.eu/s_num;
        end;

    if (Material_ComboBox.ItemIndex<=1) or (Material_ComboBox.Items.Count>Main_Form.tok_num_mat+2)  then minus_mat.Enabled:=False
     else minus_mat.Enabled:=True;

    ModUpr_Label.Caption:='������ ��������� ['+tok.s_for+'/'+tok.s_lin+'**2]';
    ModUpr_Edit.Text:=FloatToStr(tok.eu);



   //���������� ����� (����)

   Coord_Edit_NNode.Text:=IntToStr(tok.count);
   Coord_Grd_FD.Cells[0,0]:='� ����';
   Coord_Grd_FD.Cells[1,0]:='�����. X  ['+t.s_lin+']';
   Coord_Grd_FD.Cells[2,0]:='�����. Y  ['+t.s_lin+']';
   Coord_Grd_FD.RowCount:=tok.count+1;
   if tok.count > 0 then
    begin
     Coord_Grd_FD.Options:=[goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goEditing];
     Coord_Grd_FD.FixedRows:=1;
     Coord_Grd_FD.FixedCols:=1;
    end
   else
    begin
     Coord_Grd_FD.FixedCols:=0;
     Coord_Grd_FD.FixedRows:=0;
     Coord_Grd_FD.Options:=[goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine];
    end;
   Coord_Grd_FD.Height:=(tok.count)*18+22;
   for i:=1 to tok.count do Coord_Grd_FD.Cells[0,i]:=' '+IntToStr(i);

   for i:=1 to tok.count do
     for j:= 1 to 36 do
       if tok.number[j]=i then
        begin
         Coord_Grd_FD.Cells[1,i]:=FormatFloat('0.##',tok.xm[j]);
         Coord_Grd_FD.Cells[2,i]:=FormatFloat('0.##',tok.ym[j]);
        end;


   //����������� �����
   Zakr_Edit_NNode.text:=IntToStr(tok.count);
   Zakr_Edit_ZNNode.text:=IntToStr(tok.n_zu);
   Zakr_Grd_FD.RowHeights[0]:=17;
   Zakr_Grd_FD.Cells[0,0]:='� ����';
   Zakr_Grd_FD.Cells[1,0]:='           ��� �����������';
   Zakr_Grd_FD.RowCount:=tok.n_zu+1;
   if tok.n_zu=0 then Zakr_Grd_FD.RowCount:=2;
   if tok.n_zu > 0 then
    begin
     Zakr_Grd_FD.Enabled:=True;
     Zakr_Grd_FD.FixedRows:=1;
     Zakr_Grd_FD.FixedCols:=1;
     Zakr_Grd_FD.RowHeights[0]:=17;
    end
   else
    begin
     Zakr_Grd_FD.FixedCols:=0;
     Zakr_Grd_FD.FixedRows:=0;
     Zakr_Grd_FD.Enabled:=true{False};
    end;
   Zakr_Grd_FD.Height:=(tok.n_zu)*22+22;
   if tok.n_zu=0 then Zakr_Grd_FD.Height:= 26;
   for i:=27+1 to 27 + tok.n_zu do
    if (t.pn[i,1]<>0) or (t.pn[i,2]<>0) then
     Zakr_Grd_FD.Cells[0,i-27]:=' '+IntToStr(t.number[i]);

   for i:=27+1 to 27 + tok.n_zu do
    begin
     Zakr_Grd_FD.Cells[1,i]:='�� ���������';
     if (tok.pn[i,1]=1) and (tok.pn[i,2]=1) then Zakr_Grd_FD.Cells[1,i-27]:='��������� �� X � Y';
     if (tok.pn[i,1]=1) and (tok.pn[i,2]=0) then Zakr_Grd_FD.Cells[1,i-27]:='��������� �� X';
     if (tok.pn[i,1]=0) and (tok.pn[i,2]=1) then Zakr_Grd_FD.Cells[1,i-27]:='��������� �� Y';
    end;

   //���������� (����������� ����)
   NNagr_Edit.Text:=IntToStr(tok.nsm);
   Nagr_Nagr_ComboBox.Items.Clear;
   for i:=1 to tok.nsm do
    begin
       Nagr_Nagr_ComboBox.Items.Add(IntToStr(i));
    end;
   sn:=Main_Form.Tok_Sn_Cbx.ItemIndex+1;
   Nagr_Nagr_ComboBox.ItemIndex:=sn-1;
   if tok.nsm<=1 then Nagr_Nagr_ComboBox.Enabled:=False
    else Nagr_Nagr_ComboBox.Enabled:=True;
   if tok.nsm<1 then delete.Enabled:=false
    else delete.Enabled:=true;
   if tok.nsm>=3 then add.Enabled:=false
    else add.Enabled:=true  ;

       //???????????????????????????????????????????????????
   if tok.nsm=0 then NNagr_Edit.Text:=IntToStr(1);
   //????????????????????????????????????????????????
   Nagr_Nagr_ComboBox.Enabled:=true;
    if tok.nsm<=1 then Nagr_Nagr_ComboBox.Enabled:=false;

  // Nagr_Nagr_ComboBox.ItemIndex:=Main_Form.tok_Sn_Cbx.ItemIndex;
   //????????????????????????????????????????????????????????????
  if tok.nsm=0 then begin
  //Nagr_Nagr_ComboBox.Items.clear;
  Nagr_Nagr_ComboBox.Items.Add('1');
  Nagr_Nagr_ComboBox.ItemIndex:=0;
  end;

   Nagr_Grd_FD.Cells[0,0]:='� ����';
   Nagr_Grd_FD.Cells[1,0]:='���� �� X ['+tok.s_for+']';
   Nagr_Grd_FD.Cells[2,0]:='���� �� Y ['+tok.s_for+']';
   if sn<>0 then Nagr_Grd_FD.RowCount:=tok.n_nuz[sn]+1
   else Nagr_Grd_FD.RowCount:=2;
if sn<>0 then
 begin
   if tok.n_nuz[sn] > 0 then
    begin
     Nagr_Grd_FD.FixedRows:=1;
     Nagr_Grd_FD.FixedCols:=1;
     Nagr_Grd_FD.Options:=[goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goEditing]
    end
   else
    begin
     Nagr_Grd_FD.FixedCols:=0;
     Nagr_Grd_FD.FixedRows:=0;
     Nagr_Grd_FD.Options:=[goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine]
    end;
   Nagr_Grd_FD.Height:=(tok.n_nuz[sn])*18+22;
   if tok.nsm=0 then Nagr_Grd_FD.Height:=22;
   for i:=(sn-1)*9+1 to (sn-1)*9+tok.n_nuz[sn] do Nagr_Grd_FD.Cells[0,i-(sn-1)*9]:=' '+IntToStr(t.number[i]);
   for i:=(sn-1)*9+1 to (sn-1)*9+tok.n_nuz[sn] do
        begin
          Nagr_Grd_FD.Cells[1,i-(sn-1)*9]:=FloatToStr(tok.Pn[i,1]);
          Nagr_Grd_FD.Cells[2,i-(sn-1)*9]:=FloatToStr(tok.Pn[i,2]);
        end;
 end;



// logv tok_M.Ttok_Form(Main_Form.ActiveMDIChild).GraphPanelRepaint(Self);
tok_M.Ttok_Form(Main_Form.ActiveMDIChild).Repaint;
end;



procedure Ttok_FD_Form.Form_FD_Exit(Sender: TObject);
begin
if Main_Form.ActiveMDIChild is Ttok_Form then
 begin
  Main_Form.tokKonButton.Down := False;
  tok_M.Ttok_Form(Main_Form.ActiveMDIChild).tok_ViewConstr_Mnu.Checked := False;
 end;
end;

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
procedure Ttok_FD_Form.Coord_Grd_FDSetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: String);
var
x,y,i,j:integer;
error:boolean;
begin

 if  Coord_GRD_Key=chr(13) then begin
  if isRealNumber(Coord_Grd_FD.Cells[Coord_Grd_ACol,Coord_Grd_ARow]) then
    begin
     if StrToFloat(Value)<0 then
      begin
       Beep;
       Main_Form.StatusBar1.Panels[1].Text :='������ ����� ���������� ����';
       Main_Form.StatusBar1.Panels[2].Text :='���� ������� ������������� ��������';
       tok_FD_form.showD(t);
      end
     else if ((ACol=1)and(StrToFloat(Value)>t.xm[37]))or((ACol=2)and(StrToFloat(Value)>t.ym[37])) then
      begin
       Beep;
       Main_Form.StatusBar1.Panels[1].Text :='������ ����� ���������� ����';
       Main_Form.StatusBar1.Panels[2].Text :='���� ������� �������� ��� �������';
       tok_FD_form.showD(t);
      end
     else
      begin
       error:=False;
       if ACol=1 then begin X:=0;Y:=1; end else begin X:=-1;Y:=0; end;

       for i:=1 to t.nsm do
         for j:= (i-1)*9+1 to (i-1)*9+t.n_nuz[i] do
             begin
              if (Coord_Grd_FD.Cells[Coord_Grd_ACol+X,Coord_Grd_ARow]=FloatToStr(t.xm[j])) and
               (Coord_Grd_FD.Cells[Coord_Grd_ACol+Y,Coord_Grd_ARow]=FloatToStr(t.ym[j])) and
                (t.number[j]<>ARow) then
                   error:=True;
              end;
       for j:=27+1 to 27+t.n_zu do
             begin
              if (Coord_Grd_FD.Cells[Coord_Grd_ACol+X,Coord_Grd_ARow]=FloatToStr(t.xm[j])) and
               (Coord_Grd_FD.Cells[Coord_Grd_ACol+Y,Coord_Grd_ARow]=FloatToStr(t.ym[j])) and
                (t.number[j]<>ARow) then
                   error:=True;
              end;

       if error then
        begin
         Beep;
         Main_Form.StatusBar1.Panels[1].Text :='���� � ������� ������������ ��� ����������';
         Main_Form.StatusBar1.Panels[2].Text :='������� ������ �������� [���������� ����]';
         tok_FD_form.showD(t);
        end
       else
        begin
         Coord_Grd_FD.Cells[Coord_Grd_ACol,Coord_Grd_ARow]:=FormatFloat('0.##',StrToFloat(Coord_Grd_FD.Cells[Coord_Grd_ACol,Coord_Grd_ARow]));
          for i:=1 to 36 do
           if t.number[i]=Coord_Grd_ARow then
            begin
             if Coord_Grd_ACol=1 then t.xm[i]:=StrToFloat(Coord_Grd_FD.Cells[Coord_Grd_ACol,Coord_Grd_ARow]);
             if Coord_Grd_ACol=2 then t.ym[i]:=StrToFloat(Coord_Grd_FD.Cells[Coord_Grd_ACol,Coord_Grd_ARow]);
            end;

         tok_M.Ttok_Form(Main_Form.ActiveMDIChild).isChanged:=true;
         Main_Form.T_Save_TBtn.Enabled:=true;
         Main_Form.StatusBar1.Panels[1].Text :='';
         Main_Form.StatusBar1.Panels[2].Text :='';
         Main.Main_Form.ActiveMDIChild.Repaint;
         Coord_Grd_SetEdit:=True;
        end;
      end;
    end
  else
   begin
    Beep;
    Main_Form.StatusBar1.Panels[1].Text :='������ ����� ���������� ����';
    Main_Form.StatusBar1.Panels[2].Text :='���� ������� �� �����';
    tok_FD_form.showD(t);
   end
 end;

end;



procedure Ttok_FD_Form.Coord_Grd_FDGetEditText(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
begin
 Coord_Grd_Value:=Value;
 Coord_Grd_ACol:=ACol;
 Coord_Grd_ARow:=ARow;
 Coord_Grd_SetEdit:=False;
end;



procedure Ttok_FD_Form.Coord_Grd_FDKeyPress(Sender: TObject;
  var Key: Char);
begin
 Coord_Grd_Key:=Key;
end;



procedure Ttok_FD_Form.Coord_Grd_FDSelectCell(Sender: TObject; Col,
  Row: Integer; var CanSelect: Boolean);
begin
  if not Coord_Grd_SetEdit then
   begin
    tok_FD_form.showD(t);
    Coord_Grd_SetEdit:=True;
   end;
end;



procedure Ttok_FD_Form.Coord_Grd_FDEnter(Sender: TObject);
begin
 Coord_Grd_SetEdit:=True;
end;



procedure Ttok_FD_Form.Coord_Grd_FDExit(Sender: TObject);
begin
tok_FD_form.showD(t);
end;



procedure Ttok_FD_Form.FormDeactivate(Sender: TObject);
begin
 Coord_Grd_FD.EditorMode:=False;
 Zakr_Combobox_FD.Visible:=False;
end;



procedure Ttok_FD_Form.Zakr_Grd_FDMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
//X,Y:Integer;
Acol,ARow:Integer;
Zakr_Rect:TRect;
begin
if shift=[ssLeft] then
 begin
  Zakr_Grd_X:=X;Zakr_Grd_Y:=Y;
  Application.CancelHint;
  //Zakr_Grd_FD.MouseCoord(X,Y);
  Zakr_Grd_FD.MouseToCell(Zakr_Grd_X,Zakr_Grd_Y,ACol,ARow);
  Zakr_Rect:=Zakr_Grd_FD.CellRect(ACol,ARow);
  Zakr_Grd_ACol:=ACol;Zakr_Grd_ARow:=ARow;
  if (ACol>0) and (ARow>0) then
   begin
    if Zakr_Grd_FD.Cells[ACol,ARow]='�� ���������' then Zakr_Combobox_FD.ItemIndex:=0;
    if Zakr_Grd_FD.Cells[ACol,ARow]='��������� �� X' then Zakr_Combobox_FD.ItemIndex:=1;
    if Zakr_Grd_FD.Cells[ACol,ARow]='��������� �� Y' then Zakr_Combobox_FD.ItemIndex:=2;
    if Zakr_Grd_FD.Cells[ACol,ARow]='��������� �� X � Y' then Zakr_Combobox_FD.ItemIndex:=3;
    Zakr_Combobox_FD.Visible:=True;
    Zakr_Combobox_FD.Top:=Zakr_Rect.Top+Zakr_Grd_FD.Top+2;
    Zakr_ComboBox_FD.Left:=Zakr_Rect.Left+Zakr_Grd_FD.Left+2;
   end;
 end;

end;


procedure Ttok_FD_Form.Zakr_ComboBox_FDChange(Sender: TObject);
var
i,nz:integer;
z4,z5,z2,z3:array[1..tok_max_zak] of extended; // ����������� (����� ����, X � Y)
begin
 Zakr_Grd_FD.Cells[Zakr_Grd_ACol, Zakr_Grd_ARow]:=Zakr_ComboBox_FD.items[Zakr_ComboBox_FD.ItemIndex];

 if Zakr_Grd_FD.Cells[Zakr_Grd_ACol,Zakr_Grd_ARow]='�� ���������' then begin t.pn[Zakr_Grd_ARow+27,1]:=0;t.pn[Zakr_Grd_ARow+27,2]:=0;t.xm[Zakr_Grd_ARow+27]:=0;t.ym[Zakr_Grd_ARow+27]:=0; end;
 if Zakr_Grd_FD.Cells[Zakr_Grd_ACol,Zakr_Grd_ARow]='��������� �� X' then begin t.pn[Zakr_Grd_ARow+27,1]:=1;t.pn[Zakr_Grd_ARow+27,2]:=0; end;
 if Zakr_Grd_FD.Cells[Zakr_Grd_ACol,Zakr_Grd_ARow]='��������� �� Y' then begin t.pn[Zakr_Grd_ARow+27,1]:=0;t.pn[Zakr_Grd_ARow+27,2]:=1; end;
 if Zakr_Grd_FD.Cells[Zakr_Grd_ACol,Zakr_Grd_ARow]='��������� �� X � Y' then begin t.pn[Zakr_Grd_ARow+27,1]:=1;t.pn[Zakr_Grd_ARow+27,2]:=1; end;
 // ������� �������������� ����
  nz:=1;
   for i:=1 to t.n_zu do
    if (t.pn[i+27,1]<>0)or(t.pn[i+27,2]<>0) then
      begin
        z2[nz]:=t.pn[i+27,1];
        z3[nz]:=t.pn[i+27,2];
        z4[nz]:=t.xm[i+27];
        z5[nz]:=t.ym[i+27];
        inc(nz);
      end;
  t.n_zu:=nz-1;
  for i:=1 to t.n_zu do
    begin
      t.pn[i+27,1]:=z2[i];
      t.pn[i+27,2]:=z3[i];
      t.xm[i+27]:=z4[i];
      t.ym[i+27]:=z5[i];
    end;
    tok_m.ttok_form(main_form.ActiveMDIChild).tok_number;
 tok_M.Ttok_Form(Main_Form.ActiveMDIChild).isChanged:=true;
 Main_Form.T_Save_TBtn.Enabled:=true;
 Zakr_ComboBox_FD.Visible:=false;
 tok_FD_form.showD(t);
 Main_Form.ActiveMDIChild.RePaint;
end;



procedure Ttok_FD_Form.Zakr_Grd_FDMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
Acol,ARow,i:Integer;
begin

Zakr_Grd_FD.MouseToCell(X,Y,ACol,ARow);

if (ARow<>Zakr_Grd_ARow_Hint) or (ACol<>Zakr_Grd_ACol_Hint) then
 begin
  Zakr_Grd_FD.ShowHint:=True;
  Application.CancelHint;
 end;
for i:= 1 to 36 do
if (ARow>0) and (ACol=0) and (t.number[i]=ARow) then Zakr_Grd_FD.Hint:='['+FormatFloat('0.##',t.xm[i])+' : '+FormatFloat('0.##',t.ym[i])+']'
 else if (ARow=0) and (ACol=0) then Zakr_Grd_FD.Hint:='����� ����'
 else Zakr_Grd_FD.ShowHint:=False;
Zakr_Grd_ACol_Hint:=ACol;
Zakr_Grd_ARow_Hint:=ARow;

end;



procedure Ttok_FD_Form.Nagr_Nagr_ComboBoxChange(Sender: TObject);
begin
 Main_Form.tok_Sn_CBx.ItemIndex:=Nagr_Nagr_ComboBox.ItemIndex;
 tok_M.Ttok_Form(Main_Form.ActiveMDIChild).sn:=Nagr_Nagr_ComboBox.ItemIndex+1;
 tok_FD_form.showD(t);
 Main_Form.ActiveMDIChild.RePaint;
end;

procedure Ttok_FD_Form.CreateS_Num(Sender: TObject);
begin
 if t.s_lin='��' then s_num:=0.01
    else if t.s_lin='��' then s_num:=1
    else
     s_num:=10000;
    if t.s_for='�' then s_num:=s_num*1
    else
     s_num:=s_num*0.1;
end;


procedure Ttok_FD_Form.LineMeasure_ComboBoxChange(Sender: TObject);
var
l_factor:real;
i:integer;
begin

 if t.s_lin<>LineMeasure_ComboBox.Items[LineMeasure_ComboBox.ItemIndex] then
  begin
   tok_M.Ttok_Form(Main_Form.ActiveMDIChild).isChanged:=true;
   Main_Form.T_Save_TBtn.Enabled:=true;
   t.s_lin:=LineMeasure_ComboBox.Items[LineMeasure_ComboBox.ItemIndex];
   CreateS_Num(Self);

      if t.s_lin='��' then
    begin
      if l_dimension='��' then
       l_factor:=10;
      if l_dimension='M' then
       l_factor:=1000;
      if l_dimension='��' then
       l_factor:=1;
    end
   else if t.s_lin='��' then
    begin
      if l_dimension='��' then
       l_factor:=0.1;
      if l_dimension='M' then
       l_factor:=100;
      if l_dimension='��' then
       l_factor:=1;
    end
   else
    begin
     if l_dimension='��' then
       l_factor:=0.001;
     if l_dimension='��' then
       l_factor:=0.01;
     if l_dimension='M' then
       l_factor:=1;
  end;
  for i:=1 to 37 do
   begin
    tok_M.Ttok_Form(Main_Form.ActiveMDIChild).tok.xm[i]:=tok_M.Ttok_Form(Main_Form.ActiveMDIChild).tok.xm[i]*l_factor;
    tok_M.Ttok_Form(Main_Form.ActiveMDIChild).tok.ym[i]:=tok_M.Ttok_Form(Main_Form.ActiveMDIChild).tok.ym[i]*l_factor;
   end;
   if Material_ComboBox.ItemIndex<=Main_Form.tok_num_mat+1 then
    begin
     t.eu:=Main_Form.tok_MMaterials[Material_ComboBox.ItemIndex+1].MModUpr*s_num;
    end
   else
    begin
     t.eu:=tok_M.Ttok_Form(Main_Form.ActiveMDIChild).Other_MModUpr*s_num;
    end;
   tok_FD_form.showD(t);
   Main_Form.ActiveMDIChild.RePaint;
  end;

end;


procedure Ttok_FD_Form.ForceMeasure_ComboBoxChange(Sender: TObject);
var
f_factor:real;
i:integer;
begin

 if t.s_for<>ForceMeasure_ComboBox.Items[ForceMeasure_ComboBox.ItemIndex] then
  begin
   tok_M.Ttok_Form(Main_Form.ActiveMDIChild).isChanged:=true;
   Main_Form.T_Save_TBtn.Enabled:=true;
   t.s_for:=ForceMeasure_ComboBox.Items[ForceMeasure_ComboBox.ItemIndex];
   CreateS_Num(Self);

   if t.s_for='�' then
    begin
      if f_dimension='��' then
       f_factor:=10;
      if f_dimension='�' then
       f_factor:=1;
    end
   else
    begin
      if f_dimension='�' then
       f_factor:=0.1;
      if f_dimension='��' then
       f_factor:=1;
    end;
  for i:=1 to 27 do begin
    tok_M.Ttok_Form(Main_Form.ActiveMDIChild).tok.pn[i,1]:=tok_M.Ttok_Form(Main_Form.ActiveMDIChild).tok.pn[i,1]*f_factor;
    tok_M.Ttok_Form(Main_Form.ActiveMDIChild).tok.pn[i,2]:=tok_M.Ttok_Form(Main_Form.ActiveMDIChild).tok.pn[i,2]*f_factor;
  end;
   if Material_ComboBox.ItemIndex<=Main_Form.tok_num_mat+1 then
    begin
     t.eu:=Main_Form.tok_MMaterials[Material_ComboBox.ItemIndex+1].MModUpr*s_num;
    end
   else
    begin
     t.eu:=tok_M.Ttok_Form(Main_Form.ActiveMDIChild).Other_MModUpr*s_num;
    end;
   tok_FD_form.showD(t);
   Main_Form.ActiveMDIChild.RePaint;
  end;

end;

procedure Ttok_FD_Form.PageControl_FDChange(Sender: TObject);
begin
Zakr_ComboBox_FD.Visible:=False;
end;

procedure Ttok_FD_Form.Material_ComboBoxChange(Sender: TObject);
begin

 if Material_ComboBox.Items[Material_ComboBox.ItemIndex]<>'<������>' then
  begin
   ModUpr_Edit.Text:=FloatToStr(Main_Form.tok_MMaterials[Material_ComboBox.ItemIndex+1].MModUpr*s_num);
   if Material_ComboBox.ItemIndex<=1 then Minus_Mat.Enabled:=False
    else Minus_Mat.Enabled:=True;
  end
 else
  begin
   ModUpr_Edit.Text:=FloatToStr(tok_M.Ttok_Form(Main_Form.ActiveMDIChild).Other_MModUpr*s_num);
   Minus_Mat.Enabled:=False;
  end;

  tok_M.Ttok_Form(Main_Form.ActiveMDIChild).isChanged:=True;
  Main_Form.T_Save_TBtn.Enabled:=true;
  t.eu:=StrToFloat(ModUpr_Edit.Text);

end;



procedure Ttok_FD_Form.tokSizeBtnClick(Sender: TObject);
var
 i:integer;
 max_x_coord, max_y_coord:extended;
begin
 tokRegionSizeForm.SizeLabel.Caption:='������ �������  ['+t.S_lin+']';
 max_x_coord:=0;
 max_y_coord:=0;
 for i:=1 to 36 do
  begin
   if t.xm[i]>=max_x_coord then max_x_coord:=t.xm[i];
   if t.ym[i]>=max_y_coord then max_y_coord:=t.ym[i];
  end;
 tokRegionSizeForm.MinX_L.Caption:=FormatFloat('0.##',max_x_coord)+' <=';
 tokRegionSizeForm.MinY_L.Caption:=FormatFloat('0.##',max_y_coord)+' <=';
 tokRegionSizeForm.XSize.Text:=Region_X_Edit.Text;
 tokRegionSizeForm.YSize.Text:=Region_Y_Edit.Text;
 tokRegionSizeForm.ShowModal;
end;


procedure Ttok_FD_Form.tokSizeSBtnClick(Sender: TObject);
var
 i:integer;
 max_x_coord, max_y_coord:extended;
begin
 tokRegionSizeForm.SizeLabel.Caption:='������ �������  ['+t.S_lin+']';
 max_x_coord:=0;
 max_y_coord:=0;
 for i:=1 to 36 do
  begin
   if t.xm[i]>=max_x_coord then max_x_coord:=t.xm[i];
   if t.ym[i]>=max_y_coord then max_y_coord:=t.ym[i];
  end;
 tokRegionSizeForm.MinX_L.Caption:=FormatFloat('0.##',max_x_coord)+' <=';
 tokRegionSizeForm.MinY_L.Caption:=FormatFloat('0.##',max_y_coord)+' <=';
 if  max_x_coord=0 then tokRegionSizeForm.MinX_L.Caption:=FormatFloat('0.##',max_x_coord)+' <';
 if  max_y_coord=0 then tokRegionSizeForm.MinY_L.Caption:=FormatFloat('0.##',max_y_coord)+' <';
 tokRegionSizeForm.XSize.Text:=Region_X_Edit.Text;
 tokRegionSizeForm.YSize.Text:=Region_Y_Edit.Text;
 tokRegionSizeForm.ShowModal;

end;


procedure Ttok_FD_Form.Minus_MatClick(Sender: TObject);
var
 I_Del,i:integer;
begin

  I_Del:=Material_ComboBox.ItemIndex+1;
  Material_ComboBox.Items.Delete(Material_ComboBox.ItemIndex);
  Material_ComboBox.ItemIndex:=0;
  ModUpr_Edit.Text:=FloatToStr(Main_Form.tok_MMaterials[1].MModUpr*s_num);
  t.eu:=StrToFloat(ModUpr_Edit.Text);
  for i:=I_Del+1 to Main_Form.tok_num_mat+2 do
   begin
    Main_Form.tok_MMaterials[i-1].MName:=Main_Form.tok_MMaterials[i].MName;
    Main_Form.tok_MMaterials[i-1].MModUpr:=Main_Form.tok_MMaterials[i].MModUpr;
   end;
  Main_Form.tok_num_mat:=Main_Form.tok_num_mat-1;
  tok_M.Ttok_Form(Main_Form.ActiveMDIChild).isChanged:=True;
  Main_Form.T_Save_TBtn.Enabled:=true;
  tok_FD_form.showD(t);

end;


procedure Ttok_FD_Form.Plus_MatClick(Sender: TObject);
begin
 tokNewMatForm.ShowModal;
end;


{procedure Ttok_FD_Form.Nagr_Grd_FDMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//================ ������������ PopUp ���� ====================
 If (Shift=[ssRight]) and (t.nsn1=1) then
   Nagr_PM.Items[1].Enabled:=False
  else Nagr_PM.Items[1].Enabled:=True;
 If (Shift=[ssRight]) and (t.nsn1=3) then
   Nagr_PM.Items[0].Enabled:=False
  else Nagr_PM.Items[0].Enabled:=True;
//=============================================================
end; }




procedure Ttok_FD_Form.Nagr_Grd_FDEnter(Sender: TObject);
begin
 Nagr_Grd_SetEdit:=True;
end;


procedure Ttok_FD_Form.Nagr_Grd_FDExit(Sender: TObject);
begin
tok_FD_form.showD(t);
end;


procedure Ttok_FD_Form.Nagr_Grd_FDGetEditText(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
begin
 Nagr_Grd_Value:=Value;
 Nagr_Grd_ACol:=ACol;
 Nagr_Grd_ARow:=ARow;
 Nagr_Grd_SetEdit:=False;
end;


procedure Ttok_FD_Form.Nagr_Grd_FDSelectCell(Sender: TObject; Col,
  Row: Integer; var CanSelect: Boolean);
begin
  if not Nagr_Grd_SetEdit then
   begin
    tok_FD_form.showD(t);
    Nagr_Grd_SetEdit:=True;
   end;
end;


procedure Ttok_FD_Form.Nagr_Grd_FDKeyPress(Sender: TObject;
  var Key: Char);
begin
 Nagr_Grd_Key:=Key;
end;


procedure Ttok_FD_Form.Nagr_Grd_FDSetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: String);
var
 X,sn,i,j:integer;
 flag:boolean;
begin
tok:=t;
 if  Nagr_GRD_Key=chr(13) then begin
  if isRealNumber(Nagr_Grd_FD.Cells[Nagr_Grd_ACol,Nagr_Grd_ARow]) then
    begin
     if Nagr_Grd_ACol=1 then X:=1 else X:=2;
      sn:=Nagr_Nagr_ComboBox.ItemIndex+1;
       for i:= (sn-1)*9+1 to (sn-1)*9+t.n_nuz[sn] do
        if t.number[i]=Nagr_Grd_ARow then
         t.Pn[i,X]:=StrToFloat(Nagr_Grd_FD.Cells[Nagr_Grd_ACol,Nagr_Grd_ARow]);

          //!!!!!!!!!!!!!!!!!!!
          tok_M.Ttok_Form(Main_Form.ActiveMDIChild).nu:=(sn-1)*9+ARow;
          tok_M.Ttok_Form(Main_Form.ActiveMDIChild).Xtok:=round(tok.xm[tok_M.Ttok_Form(Main_Form.ActiveMDIChild).nu]);
          tok_M.Ttok_Form(Main_Form.ActiveMDIChild).Ytok:=round(tok.ym[tok_M.Ttok_Form(Main_Form.ActiveMDIChild).nu]);
            flag:=false;
                  for i:=1 to 3 do
            for j:=1 to tok.n_nuz[i]-1 do
             if (tok.pn[(i-1)*9+j,1]=0)and(tok.pn[(i-1)*9+j,2]=0)then
                begin
                  tok.pn[(i-1)*9+j,1]:=tok.pn[(i-1)*9+j+1,1];
                  tok.pn[(i-1)*9+j,2]:=tok.pn[(i-1)*9+j+1,2];
                  tok.xm[(i-1)*9+j]:=tok.xm[(i-1)*9+j+1];
                  tok.ym[(i-1)*9+j]:=tok.ym[(i-1)*9+j+1];
                  tok.xm[(i-1)*9+j+1]:=0;
                  tok.ym[(i-1)*9+j+1]:=0;
                  tok.pn[(i-1)*9+j+1,1]:=0;
                  tok.pn[(i-1)*9+j+1,2]:=0;
                  flag:=true;
                end;
                         //!!!!!!!!!!!!!!!!1
                      for i:=1 to 3 do
                        begin
                          tok.n_nuz[i]:=0;
                          for j:=1 to 9 do
                            if (tok.pn[(i-1)*9+j,1]<>0)or(tok.pn[(i-1)*9+j,2]<>0)then inc(tok.n_nuz[i]);
                        end;
    tok.n_nu:=tok.n_nuz[1];
    if tok.n_nuz[2]>tok.n_nu then tok.n_nu:=tok.n_nuz[2];
    if tok.n_nuz[3]>tok.n_nu then tok.n_nu:=tok.n_nuz[3];
    if not flag then
     begin
       tok.xm[tok_M.Ttok_Form(Main_Form.ActiveMDIChild).nu]:=tok_M.Ttok_Form(Main_Form.ActiveMDIChild).xtok;
       tok.ym[tok_M.Ttok_Form(Main_Form.ActiveMDIChild).nu]:=tok_M.Ttok_Form(Main_Form.ActiveMDIChild).ytok;
     end;
      //!!!!!!!!!!!!!!!!!!!!!!!!!!!!

     tok_M.Ttok_Form(Main_Form.ActiveMDIChild).isChanged:=True;
     Main_Form.T_Save_TBtn.Enabled:=true;
     tok_FD_form.showD(t);
     tok_M.Ttok_Form(Main_Form.ActiveMDIChild).tok_number;
     tok_M.Ttok_Form(Main_Form.ActiveMDIChild).Repaint;
     tok_M.Ttok_Form(Main_Form.ActiveMDIChild).buf.AddT(tok_M.Ttok_Form(Main_Form.ActiveMDIChild).tok);
     Nagr_Grd_SetEdit:=True;
     Main_Form.StatusBar1.Panels[1].Text :='';
     Main_Form.StatusBar1.Panels[2].Text :='';
    end
  else
   begin
    Beep;
    Main_Form.StatusBar1.Panels[1].Text :='������ ��� ����� ����';
    Main_Form.StatusBar1.Panels[2].Text :='���� ������� �� �����';
    tok_FD_form.showD(t);
   end
 end; //chr(13)
end;


procedure Ttok_FD_Form.Nagr_Grd_FDMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
Acol,ARow,i:Integer;
begin

Nagr_Grd_FD.MouseToCell(X,Y,ACol,ARow);

if (ARow<>Nagr_Grd_ARow_Hint) or (ACol<>Nagr_Grd_ACol_Hint) then
 begin
  Nagr_Grd_FD.ShowHint:=True;
  Application.CancelHint;
 end;
for i:= 1 to 36 do
if (ARow>0) and (ACol=0) and (t.number[i]=ARow) then Nagr_Grd_FD.Hint:='['+FormatFloat('0.##',t.xm[i])+' : '+FormatFloat('0.##',t.ym[i])+']'
 else if (ARow=0) and (ACol=0) then Nagr_Grd_FD.Hint:='����� ����'
 else Nagr_Grd_FD.ShowHint:=False;
Nagr_Grd_ACol_Hint:=ACol;
Nagr_Grd_ARow_Hint:=ARow;

end;




procedure Ttok_FD_Form.Coord_NodeClick(Sender: TObject);
begin
// CoordNode_Form.ShowModal;
end;



procedure Ttok_FD_Form.Nagr_PMPopup(Sender: TObject);
begin
//================ ������������ PopUp ���� ====================
 If  (t.nsm=1) then
   Nagr_PM.Items[1].Enabled:=False
  else Nagr_PM.Items[1].Enabled:=True;
 If  (t.nsm=3) then
   Nagr_PM.Items[0].Enabled:=False
  else Nagr_PM.Items[0].Enabled:=True;
//=============================================================
end;


procedure Ttok_FD_Form.FormCreate(Sender: TObject);
begin
 first_show_FD_form:=true;
end;

procedure Ttok_FD_Form.FormShow(Sender: TObject);
begin
 if first_show_FD_form then
  begin
   Top:=Main_Form.Top+30;
   Left:=Main_Form.Left+Main_Form.Width-Width-8;
   first_show_FD_form:=false;
  end;
end;

procedure Ttok_FD_Form.Nagr_Grd_FDMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
 M:TPoint;
begin
//================ ������ ����������� PopUp ���� =================
 if Shift=[ssRight] then
  begin
   M.x:=X+6;
   M.y:=Y+74;
   N_PM.Popup(ClientToScreen(M).X,ClientToScreen(M).Y);
  end;
end;

procedure Ttok_FD_Form.Zad_FD_btnClick(Sender: TObject);
begin
  tokzad_form.showmodal;
  tok_M.Ttok_Form(Main_Form.ActiveMDIChild).isChanged:=True;
  Main_Form.T_Save_TBtn.Enabled:=true;
  tok_M.Ttok_Form(Main_Form.ActiveMDIChild).Repaint;
  tok_FD_Form.showD(t);
  tok_M.Ttok_Form(Main_Form.ActiveMDIChild).buf.AddT(tok_M.Ttok_Form(Main_Form.ActiveMDIChild).tok);
end;

procedure Ttok_FD_Form.Plus_ZakrClick(Sender: TObject);
begin
  tokaddzak_form.xml.Caption:='<='+floattostr(t.xm[37]);
  tokaddzak_form.yml.Caption:='<='+floattostr(t.ym[37]);
  tokaddzak_form.ShowModal;
end;



procedure Ttok_FD_Form.Npml1Click(Sender: TObject);
begin
  tokaddNagr_form.xml.Caption:='<='+floattostr(t.xm[37]);
  tokaddNagr_form.yml.Caption:='<='+floattostr(t.ym[37]);
  tokaddNagr_form.ShowModal;
end;

procedure Ttok_FD_Form.FormActivate(Sender: TObject);
begin

 if Main_Form.ActiveMDIChild.Active then
  begin
   TOK_M.TTOK_Form(Main_Form.ActiveMDIChild).PaintBox.Cursor:=crDefault;
   TOK_M.TTOK_Form(Main_Form.ActiveMDIChild).PaintBox.ShowHint:=False;
   Main_Form.TOK_Graph_Enter_ToolBar.Buttons[0].Down:=True;
   Main_Form.StatusBar1.Panels[0].Text :='';
   Main_Form.StatusBar1.Panels[1].Text :='';
   Main_Form.StatusBar1.Panels[2].Text :='';
  end;
  
end;

procedure Ttok_FD_Form.Button1Click(Sender: TObject);
begin
    tokaddNagr_form.xml.Caption:='<='+floattostr(t.xm[37]);
  tokaddNagr_form.yml.Caption:='<='+floattostr(t.ym[37]);
  tokaddNagr_form.ShowModal;
end;

procedure Ttok_FD_Form.Button2Click(Sender: TObject);
begin
    ShowMessage('��� �������� ���������� ���� �������� �������� ��������');
end;

procedure Ttok_FD_Form.Button3Click(Sender: TObject);
begin
  tokaddzak_form.xml.Caption:='<='+floattostr(t.xm[37]);
  tokaddzak_form.yml.Caption:='<='+floattostr(t.ym[37]);
  tokaddzak_form.ShowModal;
end;

procedure Ttok_FD_Form.Button4Click(Sender: TObject);
begin
    ShowMessage('��� �������� ������������� ����, �������� ��� ����������� �� "�� ���������"');
end;

procedure Ttok_FD_Form.addClick(Sender: TObject);
begin
     if t.nsm<3 then
     begin
         t.nsm:=t.nsm+1;
         tok_M.Ttok_Form(Main_Form.ActiveMDIChild).isChanged:=True;
         Main_Form.T_Save_TBtn.Enabled:=true;
         tok_M.Ttok_Form(Main_Form.ActiveMDIChild).sn:=t.nsm;
         Main_Form.SetFocus;
         tok_FD_Form.showD(t);
     end;
   //  if t.nsm=3 then add.Enabled:=false;
   //  if (t.nsm>0) then delete.Enabled:=true;
end;

procedure Ttok_FD_Form.deleteClick(Sender: TObject);
begin
     if t.nsm>0 then
     begin
         t.nsm:=t.nsm-1;
         tok_M.Ttok_Form(Main_Form.ActiveMDIChild).isChanged:=True;
         Main_Form.T_Save_TBtn.Enabled:=true;
         tok_M.Ttok_Form(Main_Form.ActiveMDIChild).sn:=t.nsm;
         Main_Form.SetFocus;
         tok_FD_Form.showD(t);
     end;
//     if (t.nsm<3) then add.Enabled:=true;
 //    if (t.nsm<1) then delete.Enabled:=false;
end;

end.
