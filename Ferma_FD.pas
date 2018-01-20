unit Ferma_FD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Ferma_M, Ferm_Dat, Grids, DBGrids,
  Buttons, Menus,Buffer;

type
  TFerma_FD_Form = class(TForm)
    PageControl_FD: TPageControl;
    Region_TabSheet: TTabSheet;
    Pivot_TabSheet: TTabSheet;
    Bevel1: TBevel;
    Label_NNode: TLabel;
    Label1: TLabel;
    Zakr_TabSheet: TTabSheet;
    Topology_Grd_FD: TStringGrid;
    Node_TabSheet: TTabSheet;
    Coord_Grd_FD: TStringGrid;
    Zakr_Grd_FD: TStringGrid;
    Zakr_ComboBox_FD: TComboBox;
    Nagr_TabSheet: TTabSheet;
    Edit_NNode: TEdit;
    Edit_NPivot: TEdit;
    Tol_TabSheet: TTabSheet;
    Tol_Grd_FD: TStringGrid;
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
    DopNapr_Edit: TEdit;
    Label7: TLabel;
    Bevel5: TBevel;
    Tol_NPivot_Edit: TEdit;
    Label8: TLabel;
    ModUpr_Label: TLabel;
    DopNapr_Label: TLabel;
    Bevel6: TBevel;
    FermaSizeSBtn: TSpeedButton;
    Bevel7: TBevel;
    Plus_Mat: TSpeedButton;
    Minus_Mat: TSpeedButton;
    Nagr_PM: TPopupMenu;
    Plus_Nagr: TMenuItem;
    Minus_Nagr: TMenuItem;
    Node_PM: TPopupMenu;
    Plus_Node: TMenuItem;
    Minus_Node: TMenuItem;
    Coord_Node: TMenuItem;
    Pivot_PM: TPopupMenu;
    Plus_Pivot: TMenuItem;
    Minus_Pivot: TMenuItem;
    Minus_PivotNode: TMenuItem;
    Topology_Pivot: TMenuItem;
    N3: TMenuItem;
    N1: TMenuItem;
    Nagr_Grd_FD: TStringGrid;
    add: TButton;
    delete: TButton;
    Label12: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label13: TLabel;
    Button3: TButton;
    Button4: TButton;
    Label11: TLabel;
    Ok_Btn: TBitBtn;
    Plotn_Edit: TEdit;
    Pltn_label: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure ShowD(Ferm: TFerm);
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
    procedure FermaSizeBtnClick(Sender: TObject);
    procedure FermaSizeSBtnClick(Sender: TObject);
    procedure Minus_MatClick(Sender: TObject);
    procedure CreateS_Num(Sender: TObject);

    procedure Plus_MatClick(Sender: TObject);
//    procedure Nagr_Grd_FDMouseDown(Sender: TObject; Button: TMouseButton;
//      Shift: TShiftState; X, Y: Integer);
    procedure Coord_Grd_FDMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Topology_Grd_FDMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Plus_NagrClick(Sender: TObject);
    procedure Minus_NagrClick(Sender: TObject);
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
    procedure Tol_Grd_FDEnter(Sender: TObject);
    procedure Tol_Grd_FDExit(Sender: TObject);
    procedure Tol_Grd_FDKeyPress(Sender: TObject; var Key: Char);
    procedure Tol_Grd_FDGetEditText(Sender: TObject; ACol, ARow: Integer;
      var Value: String);
    procedure Tol_Grd_FDSelectCell(Sender: TObject; Col, Row: Integer;
      var CanSelect: Boolean);
    procedure Tol_Grd_FDSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: String);
    procedure Plus_NodeClick(Sender: TObject);
    procedure Coord_NodeClick(Sender: TObject);
    procedure Minus_NodeClick(Sender: TObject);
    procedure Plus_PivotClick(Sender: TObject);
    procedure Minus_PivotClick(Sender: TObject);
    procedure Minus_PivotNodeClick(Sender: TObject);
    procedure Nagr_PMPopup(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Nagr_Grd_FDMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Ok_BtnClick(Sender: TObject);
    procedure HighLightPivot(Sender:  TObject; PivNum: Integer);
    procedure HighLightNode(Sender:  TObject; NodeNum: Integer);
    procedure Topology_Grd_FDSelectCell(Sender: TObject; ACol,
      ARow: Integer; var CanSelect: Boolean);


  private
    { Private declarations }

  public
    { Public declarations }
    first_show_FD_form:boolean;
    procedure DeletePivot(i_pivot: integer);
    procedure Recursia(Sender: TObject);
    procedure RecursiaPivot(Node: integer);


end;

function isNumber(s:string):boolean;
function isRealNumber(s:string):boolean;

var
  Ferma_FD_Form: TFerma_FD_Form;
  {���������� ��������� ���� �����}
      f: TFerm;
      Phi_Table_File : file of Phi_Table;
  {���������� ���������� ��� ������� ��������� �����}
      Coord_Grd_Value:string; // C��������� ������������� ������
      Coord_Grd_Key:char;     // ������� ��������� �������
      Coord_Grd_Acol,Coord_Grd_Arow:integer;
      Coord_Grd_SetEdit:Boolean;
      Coord_Node_Pm:integer;
  {���������� ���������� ��� ������� �������� (���������)}
      PivotNum_Pm:integer;
      Node1, Node2:integer;
  {���������� ���������� ��� ������� ���������� �����}
      Nagr_Grd_Value:string; // C��������� ������������� ������
      Nagr_Grd_Key:char;     // ������� ��������� �������
      Nagr_Grd_Acol,Nagr_Grd_Arow:integer;
      Nagr_Grd_SetEdit:Boolean;
      Nagr_Grd_ACol_Hint,Nagr_Grd_ARow_Hint:integer;
  {���������� ���������� ��� ������� ������ ��������}
      Tol_Grd_Key:char;     // ������� ��������� �������
      Tol_Grd_SetEdit:Boolean;
  {���������� ���������� ��� ������� ����������� �����}
      Zakr_Grd_X,Zakr_Grd_Y:integer;
      Zakr_Grd_Acol,Zakr_Grd_ARow:integer;
      Zakr_Grd_ACol_Hint,Zakr_Grd_ARow_Hint:integer;
  {���������� ���������� ��� �������}
      s_num,pltn_num:extended;
  {�������� �����������}
      l_dimension, f_dimension:string;
      l_factor,f_factor:real;
implementation

uses Main, FermaRegionSize, FermaNewMat, NewNode, CoordNode, FermaNewPivot,numberST,
  NumberNode;

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
begin
  Result:=true;
  try
    StrToFloat(s);
  except
    Result:=false;
  end;

//        val(s,x,e); // ferma 4  ��� �� ������ ��������
//        Result:=(e=0);
end;

procedure TFerma_FD_Form.ShowD(Ferm: Tferm);
var
 i:integer;
 max_x_coord,max_y_coord,a,b,c:extended;
 mat_live:boolean;
begin
    f:=Ferm;

    //�������
    for i:=0 to 2 do
     if LineMeasure_ComboBox.Items[i]=Ferm.s_lin then LineMeasure_ComboBox.ItemIndex:=i;

    for i:=0 to 1 do
     if ForceMeasure_ComboBox.Items[i]=Ferm.s_for then ForceMeasure_ComboBox.ItemIndex:=i;

    X_Label.Caption:='������ �� X  ['+Ferm.s_lin+']';
    Y_Label.Caption:='������ �� Y  ['+Ferm.s_lin+']';
    Region_X_Edit.Text:=FloatToStr(Ferm.Region_X);
    Region_Y_Edit.Text:=FloatToStr(Ferm.Region_Y);
    max_x_coord:=0;
    max_y_coord:=0;
    l_dimension:=f.s_lin;
    f_dimension:=f.s_for;
    for i:=1 to f.nyz1 do
     begin
      if f.corn[i,1]>=max_x_coord then max_x_coord:=f.corn[i,1];
      if f.corn[i,2]>=max_y_coord then max_y_coord:=f.corn[i,2];
     end;
    if (max_y_coord=9999.99) and (max_x_coord=9999.99) then
     begin
      FermaSizeSBtn.Enabled:=False;
      Main_Form.Size_ToolButton.Enabled:=False;
     end
    else
     begin
      FermaSizeSBtn.Enabled:=True;
      Main_Form.Size_ToolButton.Enabled:=True;
     end;
       // ��������
     CreateS_Num(Self);

    Material_ComboBox.Items.Clear;
    //ShowMessage(inttostr(Material_ComboBox.Items.Count));
    for i:=1 to 2+Main_Form.Ferma_num_mat do
      Material_ComboBox.Items.Add(Main_Form.Ferma_MMaterials[i].MName);
      {Material_ComboBox.Items[i-1]:=Main_Form.Ferma_MMaterials[i].MName;} //����� ��� �������
     Mat_Live:=false;

    for i:=1 to 2+Main_Form.Ferma_num_mat do
     begin
     a:=Main_Form.Ferma_MMaterials[i].MModUpr*s_num;
     b:=Main_Form.Ferma_MMaterials[i].MDopNapr*s_num;
     c:=Main_Form.Ferma_MMaterials[i].Mplotn*pltn_num;
      if (FloatToStr(Ferm.e1)=FloatToStr(a)) and (FloatToStr(Ferm.sd1)=FloatToStr(b)) then
             begin
              Mat_Live:=True;
              Material_ComboBox.ItemIndex:=i-1;
              break;
             end
      else
           Mat_Live:=False;
      end;

       if not Mat_live then
        begin
           Material_ComboBox.Items[3+Main_Form.Ferma_num_mat-1]:='<������>';
           Material_ComboBox.ItemIndex:=3+Main_Form.Ferma_num_mat-1;
           Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Other_MModUpr:=ferm.e1/s_num;
           Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Other_MDopNapr:=ferm.sd1/s_num;
        end;

    if (Material_ComboBox.ItemIndex<=1) or (Material_ComboBox.Items.Count>Main_Form.Ferma_num_mat+2)  then minus_mat.Enabled:=False
     else minus_mat.Enabled:=True;

    ModUpr_Label.Caption:='������ ��������� ['+Ferm.s_for+'/'+Ferm.s_lin+'**2]';
    DopNapr_Label.Caption:='����������� ���������� ['+Ferm.s_for+'/'+Ferm.s_lin+'**2]';
    pltn_label.Caption:='��������� ��������� ['+ '��' +'/'+Ferm.s_lin+'**3]';
    ModUpr_Edit.Text:=FloatToStr(Ferm.e1);
    DopNapr_Edit.Text:=FloatToStr(Ferm.sd1);
    Plotn_edit.Text:=FloatToStr(Ferm.pltn);
        // ��������� (�������)
    Edit_NNode.text:=IntToStr(Ferm.nyz1);
    Edit_NPivot.text:=IntToStr(Ferm.nst1);

    Topology_Grd_FD.Cells[0,0]:='���.';
    Topology_Grd_FD.Cells[1,0]:='���. ��.';
    Topology_Grd_FD.Cells[2,0]:='���. ��.';
    Topology_Grd_FD.Cells[3,0]:='����� �������['+F.s_lin+']';
    Topology_Grd_FD.RowCount:=Ferm.nst1+1;
    if Ferm.nst1 >= 1 then
    begin
     Topology_Grd_FD.FixedRows:=1;
     Topology_Grd_FD.FixedCols:=1;
//     Topology_Grd_FD.Options:=[goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goEditing];
    end
   else
    begin
     Topology_Grd_FD.FixedCols:=0;
     Topology_Grd_FD.FixedRows:=0;
//     Topology_Grd_FD.Options:=[goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine];
    end;
    Topology_Grd_FD.Height:=(Ferm.nst1)*18+22;
    for i:=1 to Ferm.nst1 do Topology_Grd_FD.Cells[0,i]:=' '+IntToStr(i);
    if Ferm.iTopN[1,1]<>0 then
    begin
      for i:=1 to Ferm.nst1 do
        begin
          Topology_Grd_FD.Cells[1,i]:=IntToStr(Ferm.iTopN[i,1]);
          Topology_Grd_FD.Cells[2,i]:=IntToStr(Ferm.iTopN[i,2]);
          Topology_Grd_FD.Cells[3,i]:=FormatFloat('0.##',

          sqrt(  (Ferm.corn[Ferm.iTopN[i,1],1]-Ferm.corn[Ferm.iTopN[i,2],1])*(Ferm.corn[Ferm.iTopN[i,1],1]-Ferm.corn[Ferm.iTopN[i,2],1])
          +(Ferm.corn[Ferm.iTopN[i,1],2]-Ferm.corn[Ferm.iTopN[i,2],2])*(Ferm.corn[Ferm.iTopN[i,1],2]-Ferm.corn[Ferm.iTopN[i,2],2])  )
           );
        end;
    end;

   //���������� ����� (����)

   Coord_Edit_NNode.Text:=IntToStr(Ferm.nyz1);
   Coord_Grd_FD.Cells[0,0]:='� ����';
   Coord_Grd_FD.Cells[1,0]:='�����. X  ['+F.s_lin+']';
   Coord_Grd_FD.Cells[2,0]:='�����. Y  ['+F.s_lin+']';
   Coord_Grd_FD.RowCount:=Ferm.nyz1+1;
   if Ferm.nyz1 > 0 then
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
   Coord_Grd_FD.Height:=(Ferm.nyz1)*18+22;
   for i:=1 to Ferm.nyz1 do Coord_Grd_FD.Cells[0,i]:=' '+IntToStr(i);

   for i:=1 to Ferm.nyz1 do
        begin
         Coord_Grd_FD.Cells[1,i]:=FormatFloat('0.##',Ferm.corn[i,1]);
         Coord_Grd_FD.Cells[2,i]:=FormatFloat('0.##',Ferm.corn[i,2]);
//         Coord_Grd_FD.Cells[1,i]:=FloatToStr(Ferm.corn[i,1]);
//         Coord_Grd_FD.Cells[2,i]:=FloatToStr(Ferm.corn[i,2]);
        end;


   //����������� �����
   Zakr_Edit_NNode.text:=IntToStr(Ferm.nyz1);
   Zakr_Edit_ZNNode.text:=IntToStr(Ferm.ny1);
   Zakr_Grd_FD.RowHeights[0]:=17;
   Zakr_Grd_FD.Cells[0,0]:='� ����';
   Zakr_Grd_FD.Cells[3,0]:='��� �����������';
   Zakr_Grd_FD.Cells[1,0]:='�����. X ['+F.s_lin+']';
   Zakr_Grd_FD.Cells[2,0]:='�����. Y ['+F.s_lin+']';
   Zakr_Grd_FD.RowCount:=Ferm.nyz1+1;
   if Ferm.nyz1 > 0 then
    begin
     Zakr_Grd_FD.Enabled:=True;
     Zakr_Grd_FD.FixedRows:=1;
     Zakr_Grd_FD.FixedCols:=3;
     Zakr_Grd_FD.RowHeights[0]:=17;
    end
   else
    begin
     Zakr_Grd_FD.FixedCols:=0;
     Zakr_Grd_FD.FixedRows:=0;
     Zakr_Grd_FD.Enabled:=False;
    end;
   Zakr_Grd_FD.Height:=(Ferm.nyz1)*22+22;
   for i:=1 to Ferm.nyz1 do Zakr_Grd_FD.Cells[0,i]:=' '+IntToStr(i);
   for i:=1 to Ferm.nyz1 do
        begin
         Zakr_Grd_FD.Cells[1,i]:=FormatFloat('0.##',Ferm.corn[i,1]);
         Zakr_Grd_FD.Cells[2,i]:=FormatFloat('0.##',Ferm.corn[i,2]);
        end;

   for i:=1 to Ferm.nyz1 do
    begin
     Zakr_Grd_FD.Cells[3,i]:='�� ���������';
     if (Ferm.msn[i,1]=1) and (Ferm.msn[i,2]=1) then Zakr_Grd_FD.Cells[3,i]:='��������� �� X � Y';
     if (Ferm.msn[i,1]=1) and (Ferm.msn[i,2]=0) then Zakr_Grd_FD.Cells[3,i]:='��������� �� X';
     if (Ferm.msn[i,1]=0) and (Ferm.msn[i,2]=1) then Zakr_Grd_FD.Cells[3,i]:='��������� �� Y';
    end;

   //���������� (����������� ����)
   NNagr_Edit.Text:=IntToStr(Ferm.nsn1);
   Nagr_Nagr_ComboBox.Items.Clear;
   for i:=1 to ferm.nsn1 do
    begin
       Nagr_Nagr_ComboBox.Items.Add(IntToStr(i));
    end;
   Nagr_Nagr_ComboBox.ItemIndex:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Tag-1;
   if Ferm.nsn1=1 then Nagr_Nagr_ComboBox.Enabled:=False
    else Nagr_Nagr_ComboBox.Enabled:=True;

   Nagr_Grd_FD.Cells[0,0]:='� ����';
   Nagr_Grd_FD.Cells[1,0]:='�����. X ['+F.s_lin+']';
   Nagr_Grd_FD.Cells[2,0]:='�����. Y ['+F.s_lin+']';
   Nagr_Grd_FD.Cells[3,0]:='���� �� X ['+Ferm.s_for+']';
   Nagr_Grd_FD.Cells[4,0]:='���� �� Y ['+Ferm.s_for+']';
   Nagr_Grd_FD.RowCount:=Ferm.nyz1+1;
   if Ferm.nyz1 > 0 then
    begin
     Nagr_Grd_FD.FixedRows:=1;
     Nagr_Grd_FD.FixedCols:=3;
     Nagr_Grd_FD.Options:=[goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goEditing]
    end
   else
    begin
     Nagr_Grd_FD.FixedCols:=0;
     Nagr_Grd_FD.FixedRows:=0;
     Nagr_Grd_FD.Options:=[goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine]
    end;
   Nagr_Grd_FD.Height:=(Ferm.nyz1)*18+22;
   for i:=1 to Ferm.nyz1 do Nagr_Grd_FD.Cells[0,i]:=' '+IntToStr(i);
    for i:=1 to Ferm.nyz1 do
        begin
         Nagr_Grd_FD.Cells[1,i]:=FormatFloat('0.##',Ferm.corn[i,1]);
         Nagr_Grd_FD.Cells[2,i]:=FormatFloat('0.##',Ferm.corn[i,2]);
        end;
   for i:=1 to Ferm.nyz1 do
        begin
          Nagr_Grd_FD.Cells[3,i]:=FloatToStr({FormatFloat('0.######',}Ferm.Pn[i*2-1,Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Tag]);
          Nagr_Grd_FD.Cells[4,i]:=FloatToStr({FormatFloat('0.######',}Ferm.Pn[i*2,Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Tag]);
        end;
   if F.nsn1=3 then
     add.Enabled:= False
   else
     add.Enabled:= True;
   if F.nsn1=1 then
     delete.Enabled:= False
   else
     delete.Enabled:= True;
   //������� (������� �������)
   Tol_NPivot_Edit.Text:=IntToStr(Ferm.nst1);
   Tol_Grd_FD.Cells[0,0]:='� �������';
   Tol_Grd_FD.Cells[1,0]:='������� c������ ['+Ferm.s_lin+'**2]';
   Tol_Grd_FD.RowCount:=Ferm.nst1+1;
   if Ferm.nst1 >= 1 then
    begin
     Tol_Grd_FD.FixedRows:=1;
     Tol_Grd_FD.FixedCols:=1;
     Tol_Grd_FD.Enabled:=True;
    end
   else
    begin
     Tol_Grd_FD.FixedCols:=0;
     Tol_Grd_FD.FixedRows:=0;
     Tol_Grd_FD.Enabled:=False;
    end;
   Tol_Grd_FD.Height:=(Ferm.nst1)*18+22;
   for i:=1 to Ferm.nst1 do Tol_Grd_FD.Cells[0,i]:=' '+IntToStr(i);
   for i:=1 to Ferm.nst1 do
    begin
     Tol_Grd_FD.Cells[1,i]:=FloatToStr({FormatFloat('0.######',}Ferm.Fn[i]);
    end;

Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).GraphPanelRepaint(Self);
end;



procedure TFerma_FD_Form.Form_FD_Exit(Sender: TObject);
begin
if Main_Form.ActiveMDIChild is TFerma_Form then
 begin
  Main_Form.FermaKonButton.Down := False;
  Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).ViewConstr_Mnu.Checked := False;
  Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).RePaint;
 end;
end;



procedure TFerma_FD_Form.Coord_Grd_FDSetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: String);
var
x,y,i:integer;
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
       ferma_FD_form.showD(f);
      end
     else if ((ACol=1)and(StrToFloat(Value)>F.region_x))or((ACol=2)and(StrToFloat(Value)>F.region_y)) then
      begin
       Beep;
       Main_Form.StatusBar1.Panels[1].Text :='������ ����� ���������� ����';
       Main_Form.StatusBar1.Panels[2].Text :='���� ������� �������� ��� �������';
       ferma_FD_form.showD(f);
      end
     else
      begin
       error:=False;
       if ACol=1 then begin X:=0;Y:=1; end else begin X:=-1;Y:=0; end;
       for i:=1 to f.nyz1 do
        begin
         if (Coord_Grd_FD.Cells[Coord_Grd_ACol+X,Coord_Grd_ARow]=FloatToStr(F.Corn[i,1])) and
            (Coord_Grd_FD.Cells[Coord_Grd_ACol+Y,Coord_Grd_ARow]=FloatToStr(F.Corn[i,2])) and
            (i<>ARow) then
            begin
              error:=True
            end;
        end;
       if error then
        begin
         Beep;
         Main_Form.StatusBar1.Panels[1].Text :='���� � ������� ������������ ��� ����������';
         Main_Form.StatusBar1.Panels[2].Text :='������� ������ �������� [���������� ����]';
         ferma_FD_form.showD(f);
        end
       else
        begin
         Coord_Grd_FD.Cells[Coord_Grd_ACol,Coord_Grd_ARow]:=FormatFloat('0.##',StrToFloat(Coord_Grd_FD.Cells[Coord_Grd_ACol,Coord_Grd_ARow]));
         f.corn[Coord_Grd_ARow,Coord_Grd_Acol]:=StrToFloat(Coord_Grd_FD.Cells[Coord_Grd_ACol,Coord_Grd_ARow]);
         Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).isChanged:=true;
         ferma_M.TFerma_Form(Main_Form.ActiveMdiChild).Caption:=concat('*',Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).real_fname);
         Main_Form.F_Save_TBtn.Enabled:=True;
         Main_Form.StatusBar1.Panels[1].Text :='';
         Main_Form.StatusBar1.Panels[2].Text :='';
         Main.Main_Form.ActiveMDIChild.Repaint;
         Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).Buf.Add(Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).Ferm);
         Coord_Grd_SetEdit:=True;
        end;
      end;
    end
  else
   begin
    Beep;
    Main_Form.StatusBar1.Panels[1].Text :='������ ����� ���������� ����';
    Main_Form.StatusBar1.Panels[2].Text :='���� ������� �� �����';
    ferma_FD_form.showD(f);
   end
 end;

end;



procedure TFerma_FD_Form.Coord_Grd_FDGetEditText(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
begin
 Coord_Grd_Value:=Value;
 Coord_Grd_ACol:=ACol;
 Coord_Grd_ARow:=ARow;
 Coord_Grd_SetEdit:=False;
end;



procedure TFerma_FD_Form.Coord_Grd_FDKeyPress(Sender: TObject;
  var Key: Char);
begin
 Coord_Grd_Key:=Key;
end;



procedure TFerma_FD_Form.Coord_Grd_FDSelectCell(Sender: TObject; Col,
  Row: Integer; var CanSelect: Boolean);
begin
  HighLightNode(Sender,Row);
  if not Coord_Grd_SetEdit then
   begin
    ferma_FD_form.showD(f);
    Coord_Grd_SetEdit:=True;
   end;
end;



procedure TFerma_FD_Form.Coord_Grd_FDEnter(Sender: TObject);
begin
 Coord_Grd_SetEdit:=True;
end;



procedure TFerma_FD_Form.Coord_Grd_FDExit(Sender: TObject);
begin
ferma_FD_form.showD(f);
end;



procedure TFerma_FD_Form.FormDeactivate(Sender: TObject);
begin
 Coord_Grd_FD.EditorMode:=False;
 Zakr_Combobox_FD.Visible:=False;
end;



procedure TFerma_FD_Form.Zakr_Grd_FDMouseDown(Sender: TObject;
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
  if (ACol>2) and (ARow>0) then
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


procedure TFerma_FD_Form.Zakr_ComboBox_FDChange(Sender: TObject);
var
i:integer;
begin
 Zakr_Grd_FD.Cells[Zakr_Grd_ACol, Zakr_Grd_ARow]:=Zakr_ComboBox_FD.items[Zakr_ComboBox_FD.ItemIndex];

 if Zakr_Grd_FD.Cells[Zakr_Grd_ACol,Zakr_Grd_ARow]='�� ���������' then begin f.msn[Zakr_Grd_ARow,1]:=0;f.msn[Zakr_Grd_ARow,2]:=0; end;
 if Zakr_Grd_FD.Cells[Zakr_Grd_ACol,Zakr_Grd_ARow]='��������� �� X' then begin f.msn[Zakr_Grd_ARow,1]:=1;f.msn[Zakr_Grd_ARow,2]:=0; end;
 if Zakr_Grd_FD.Cells[Zakr_Grd_ACol,Zakr_Grd_ARow]='��������� �� Y' then begin f.msn[Zakr_Grd_ARow,1]:=0;f.msn[Zakr_Grd_ARow,2]:=1; end;
 if Zakr_Grd_FD.Cells[Zakr_Grd_ACol,Zakr_Grd_ARow]='��������� �� X � Y' then begin f.msn[Zakr_Grd_ARow,1]:=1;f.msn[Zakr_Grd_ARow,2]:=1; end;
 f.ny1:=0;
 for i:=1 to f.nyz1 do
    if (f.msn[i,1] or f.msn[i,2])<>0 then inc(f.ny1);
 Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).isChanged:=true;
 ferma_M.TFerma_Form(Main_Form.ActiveMdiChild).Caption:=concat('*',Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).real_fname);
 Main_Form.F_Save_TBtn.Enabled:=True;
 ferma_FD_form.showD(f);
 Main_Form.ActiveMDIChild.RePaint;
 Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).Buf.Add(Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).Ferm);
end;



procedure TFerma_FD_Form.Zakr_Grd_FDMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
Acol,ARow:Integer;
begin

Zakr_Grd_FD.MouseToCell(X,Y,ACol,ARow);

if (ARow<>Zakr_Grd_ARow_Hint) or (ACol<>Zakr_Grd_ACol_Hint) then
 begin
  Zakr_Grd_FD.ShowHint:=True;
  Application.CancelHint;
 end;
if (ARow>0) and (ACol=0) then Zakr_Grd_FD.Hint:='['+FormatFloat('0.##',F.corn[ARow,1])+' : '+FormatFloat('0.##',F.corn[ARow,2])+']'
 else if (ARow=0) and (ACol=0) then Zakr_Grd_FD.Hint:='����� ���� �����'
 else Zakr_Grd_FD.ShowHint:=False;
Zakr_Grd_ACol_Hint:=ACol;
Zakr_Grd_ARow_Hint:=ARow;
end;

procedure TFerma_FD_Form.Nagr_Nagr_ComboBoxChange(Sender: TObject);
begin
 Main_Form.Sn_CBx.ItemIndex:=Nagr_Nagr_ComboBox.ItemIndex;
 Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Tag:=Nagr_Nagr_ComboBox.ItemIndex+1;
 ferma_FD_form.showD(f);
 Main_Form.ActiveMDIChild.RePaint;
end;

procedure TFerma_FD_Form.CreateS_Num(Sender: TObject);

begin
 if f.s_lin='��' then
  begin
    s_num:=0.01;
    pltn_num:=0.001;
    if l_dimension='��' then
      l_factor:=10
    else if l_dimension='M' then
      l_factor:=1000
    else
      l_factor:=1;
  end
 else if f.s_lin='��' then
  begin
    s_num:=1;
    pltn_num:=1;
    if l_dimension='��' then
      l_factor:=0.1;
    if l_dimension='M' then
      l_factor:=100;
    if l_dimension='��' then
      l_factor:=1;
  end
 else
  begin
   s_num:=10000;
   pltn_num:=1000000;
   if l_dimension='��' then
      l_factor:=0.001
    else if l_dimension='��' then
      l_factor:=0.01
    else
      l_factor:=1;
  end;

  if f.s_for='�' then
   begin
    s_num:=s_num*1;
    if f_dimension='��' then
      f_factor:=10;
    if f_dimension='�' then
      f_factor:=1;
   end
  else
    begin
    s_num:=s_num*0.1;
    if f_dimension='�' then
      f_factor:=0.1;
    if f_dimension='��' then
      f_factor:=1;
   end
end;


procedure TFerma_FD_Form.LineMeasure_ComboBoxChange(Sender: TObject);
var
i,j:integer;
begin

 if F.s_lin<>LineMeasure_ComboBox.Items[LineMeasure_ComboBox.ItemIndex] then
  begin
   Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).isChanged:=true;
   ferma_M.TFerma_Form(Main_Form.ActiveMdiChild).Caption:=concat('*',Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).real_fname);
   Main_Form.F_Save_TBtn.Enabled:=True;
   F.s_lin:=LineMeasure_ComboBox.Items[LineMeasure_ComboBox.ItemIndex];
   CreateS_Num(Self);
   begin
      Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.Region_X:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.Region_X*l_factor;
      Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.Region_Y:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.Region_Y*l_factor;
      j:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.nyz1;
      for i:=1 to f.nyz1 do
      begin
        Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[i,1]:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[i,1]*l_factor;
        Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[i,2]:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[i,2]*l_factor;
      end;
      for i:=1 to f.nst1 do
      begin
        Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.Fn[i]:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.Fn[i]*l_factor*l_factor;
      end;

    end;
   if Material_ComboBox.ItemIndex<=Main_Form.Ferma_num_mat+1 then
    begin
     F.e1:= Main_Form.Ferma_MMaterials[Material_ComboBox.ItemIndex+1].MModUpr*s_num;
     F.sd1:= Main_Form.Ferma_MMaterials[Material_ComboBox.ItemIndex+1].MDopNapr*s_num;
     F.pltn:= Main_Form.Ferma_MMaterials[Material_ComboBox.ItemIndex+1].Mplotn*pltn_num;
    end
   else
    begin
     F.e1:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Other_MModUpr*s_num;
     F.sd1:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Other_MDopNapr*s_num;
    end;
   ferma_FD_form.showD(f);
   Main_Form.ActiveMDIChild.RePaint;
   Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).Buf.Add(Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).Ferm);
  end;

end;


procedure TFerma_FD_Form.ForceMeasure_ComboBoxChange(Sender: TObject);
var
i,j:integer;
begin

 if F.s_for<>ForceMeasure_ComboBox.Items[ForceMeasure_ComboBox.ItemIndex] then
  begin
   Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).isChanged:=true;
   ferma_M.TFerma_Form(Main_Form.ActiveMdiChild).Caption:=concat('*',Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).real_fname);
   Main_Form.F_Save_TBtn.Enabled:=True;
   F.s_for:=ForceMeasure_ComboBox.Items[ForceMeasure_ComboBox.ItemIndex];
   CreateS_Num(Self);
   if Material_ComboBox.ItemIndex<=Main_Form.Ferma_num_mat+1 then
    begin
     F.e1:=Main_Form.Ferma_MMaterials[Material_ComboBox.ItemIndex+1].MModUpr*s_num;
     F.sd1:=Main_Form.Ferma_MMaterials[Material_ComboBox.ItemIndex+1].MDopNapr*s_num;
     F.pltn:=Main_Form.Ferma_MMaterials[Material_ComboBox.ItemIndex+1].MPlotn*pltn_num;
    end
   else
    begin
     F.e1:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Other_MModUpr*s_num;
     F.sd1:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Other_MDopNapr*s_num;

    end;
    for i:=1 to Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.nsn1 do
          for j:=1 to Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.nyz1*2 do
            Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.pn[j,i]:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.pn[j,i]*f_factor;
   ferma_FD_form.showD(f);
   Main_Form.ActiveMDIChild.RePaint;
   Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).Buf.Add(Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).Ferm);
  end;

end;

procedure TFerma_FD_Form.PageControl_FDChange(Sender: TObject);
begin
Zakr_ComboBox_FD.Visible:=False;
Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).RePaint;
end;

procedure TFerma_FD_Form.Material_ComboBoxChange(Sender: TObject);
begin

 if Material_ComboBox.Items[Material_ComboBox.ItemIndex]<>'<������>' then
  begin
   ModUpr_Edit.Text:=FloatToStr(Main_Form.Ferma_MMaterials[Material_ComboBox.ItemIndex+1].MModUpr*s_num);
   DopNapr_Edit.Text:=FloatToStr(Main_Form.Ferma_MMaterials[Material_ComboBox.ItemIndex+1].MDopNapr*s_num);
   Plotn_edit.Text:= FloatToStr(Main_Form.Ferma_MMaterials[Material_ComboBox.ItemIndex+1].MPlotn*pltn_num);
   if Material_ComboBox.ItemIndex<=1 then Minus_Mat.Enabled:=False
    else Minus_Mat.Enabled:=True;
  end
 else
  begin
   ModUpr_Edit.Text:=FloatToStr(Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Other_MModUpr*s_num);
   DopNapr_Edit.Text:=FloatToStr(Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Other_MDopNapr*s_num);
   Minus_Mat.Enabled:=False;

  end;

  Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).isChanged:=True;
  ferma_M.TFerma_Form(Main_Form.ActiveMdiChild).Caption:=concat('*',Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).real_fname);
  Main_Form.F_Save_TBtn.Enabled:=True;
  f.e1:=StrToFloat(ModUpr_Edit.Text);
  f.sd1:=StrToFloat(DopNapr_Edit.Text);
  f.pltn:=StrToFloat(Plotn_edit.text);
end;



procedure TFerma_FD_Form.FermaSizeBtnClick(Sender: TObject);
var
 i:integer;
 max_x_coord, max_y_coord:extended;
begin
 FermaRegionSizeForm.SizeLabel.Caption:='������ �������  ['+F.S_lin+']';
 max_x_coord:=0;
 max_y_coord:=0;
 for i:=1 to f.nyz1 do
  begin
   if f.corn[i,1]>=max_x_coord then max_x_coord:=f.corn[i,1];
   if f.corn[i,2]>=max_y_coord then max_y_coord:=f.corn[i,2];
  end;
 FermaRegionSizeForm.MinX_L.Caption:=FormatFloat('0.##',max_x_coord)+' <=';
 FermaRegionSizeForm.MinY_L.Caption:=FormatFloat('0.##',max_y_coord)+' <=';
 FermaRegionSizeForm.XSize.Text:=Region_X_Edit.Text;
 FermaRegionSizeForm.YSize.Text:=Region_Y_Edit.Text;
 FermaRegionSizeForm.ShowModal;
end;


procedure TFerma_FD_Form.FermaSizeSBtnClick(Sender: TObject);
var
 i:integer;
 max_x_coord, max_y_coord:extended;
begin
 FermaRegionSizeForm.SizeLabel.Caption:='������ �������  ['+F.S_lin+']';
 max_x_coord:=0;
 max_y_coord:=0;
 for i:=1 to f.nyz1 do
  begin
   if f.corn[i,1]>=max_x_coord then max_x_coord:=f.corn[i,1];
   if f.corn[i,2]>=max_y_coord then max_y_coord:=f.corn[i,2];
  end;
 FermaRegionSizeForm.MinX_L.Caption:=FormatFloat('0.##',max_x_coord)+' <=';
 FermaRegionSizeForm.MinY_L.Caption:=FormatFloat('0.##',max_y_coord)+' <=';
 if  max_x_coord=0 then FermaRegionSizeForm.MinX_L.Caption:=FormatFloat('0.##',max_x_coord)+' <';
 if  max_y_coord=0 then FermaRegionSizeForm.MinY_L.Caption:=FormatFloat('0.##',max_y_coord)+' <';
 FermaRegionSizeForm.XSize.Text:=Region_X_Edit.Text;
 FermaRegionSizeForm.YSize.Text:=Region_Y_Edit.Text;
 FermaRegionSizeForm.ShowModal;

end;


procedure TFerma_FD_Form.Minus_MatClick(Sender: TObject);
var
 I_Del,i:integer;
begin

  I_Del:=Material_ComboBox.ItemIndex+1;
  Material_ComboBox.Items.Delete(Material_ComboBox.ItemIndex);
  Material_ComboBox.ItemIndex:=0;
  ModUpr_Edit.Text:=FloatToStr(Main_Form.Ferma_MMaterials[1].MModUpr*s_num);
  DopNapr_Edit.Text:=FloatToStr(Main_Form.Ferma_MMaterials[1].MDopNapr*s_num);
  plotn_edit.text:= FloatToStr(Main_Form.Ferma_MMaterials[1].Mplotn*pltn_num);
  f.e1:=StrToFloat(ModUpr_Edit.Text);
  f.sd1:=StrToFloat(DopNapr_Edit.Text);
  f.pltn:= StrToFloat(plotn_edit.text);
  for i:=I_Del+1 to Main_Form.Ferma_num_mat+2 do
   begin
    Main_Form.Ferma_MMaterials[i-1].MName:=Main_Form.Ferma_MMaterials[i].MName;
    Main_Form.Ferma_MMaterials[i-1].MDopNapr:=Main_Form.Ferma_MMaterials[i].MDopNapr;
    Main_Form.Ferma_MMaterials[i-1].MModUpr:=Main_Form.Ferma_MMaterials[i].MModUpr;
    Main_Form.Ferma_MMaterials[i-1].MPlotn:=Main_Form.Ferma_MMaterials[i].MPlotn;
   end;
  Main_Form.Ferma_num_mat:=Main_Form.Ferma_num_mat-1;
  Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).isChanged:=True;
  ferma_M.TFerma_Form(Main_Form.ActiveMdiChild).Caption:=concat('*',Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).real_fname);
  Main_Form.F_Save_TBtn.Enabled:=True;
  ferma_FD_form.showD(f);

end;


procedure TFerma_FD_Form.Plus_MatClick(Sender: TObject);
begin
 FermaNewMatForm.ShowModal;
end;


{procedure TFerma_FD_Form.Nagr_Grd_FDMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//================ ������������ PopUp ���� ====================
 If (Shift=[ssRight]) and (f.nsn1=1) then
   Nagr_PM.Items[1].Enabled:=False
  else Nagr_PM.Items[1].Enabled:=True;
 If (Shift=[ssRight]) and (f.nsn1=3) then
   Nagr_PM.Items[0].Enabled:=False
  else Nagr_PM.Items[0].Enabled:=True;
//=============================================================
end; }


procedure TFerma_FD_Form.Coord_Grd_FDMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
 ACol,ARow:integer;
 M:TPoint;
begin
//================ ������ ����������� PopUp ���� =================
 if Shift=[ssRight] then
  begin
   Coord_Grd_FD.MouseToCell(X,Y,ACol,ARow);
   Coord_Node_Pm:=ARow;
   if F.nyz1=0 then
    begin
     Node_PM.Items[0].Enabled:=True;
     Node_PM.Items[0].Caption:='�������� ����  [� '+IntToStr(F.nyz1+1)+']';
     Node_PM.Items[2].Enabled:=False;
     Node_PM.Items[2].Caption:='������� ����';
     Node_PM.Items[3].Enabled:=False;
     Node_PM.Items[3].Caption:='���������� ����';
    end
   else if F.nyz1=9 then
    begin
     Node_PM.Items[0].Enabled:=False;
     Node_PM.Items[0].Caption:='�������� ����';
     if ARow<>0 then
      begin
       Node_PM.Items[2].Enabled:=True;
       Node_PM.Items[2].Caption:='������� ����    [� '+IntToStr(ARow)+']';
       Node_PM.Items[3].Enabled:=True;
       Node_PM.Items[3].Caption:='���������� ����  ['+FloatToStr(F.corn[ARow,1])+' : '+FloatToStr(F.corn[ARow,2])+']';
      end
     else
      begin
       Node_PM.Items[2].Enabled:=False;
       Node_PM.Items[2].Caption:='������� ����';
       Node_PM.Items[3].Enabled:=False;
       Node_PM.Items[3].Caption:='���������� ����';
      end;
    end
   else
    begin
     if ARow<>0 then
      begin
       Node_PM.Items[0].Enabled:=True;
       Node_PM.Items[0].Caption:='�������� ����  [� '+IntToStr(F.nyz1+1)+']';
       Node_PM.Items[2].Enabled:=True;
       Node_PM.Items[2].Caption:='������� ����    [� '+IntToStr(ARow)+']';
       Node_PM.Items[3].Enabled:=True;
       Node_PM.Items[3].Caption:='���������� ����  ['+FloatToStr(F.corn[ARow,1])+' : '+FloatToStr(F.corn[ARow,2])+']';
      end
     else
      begin
       Node_PM.Items[0].Enabled:=True;
       Node_PM.Items[0].Caption:='�������� ����  [� '+IntToStr(F.nyz1+1)+']';
       Node_PM.Items[2].Enabled:=False;
       Node_PM.Items[2].Caption:='������� ����';
       Node_PM.Items[3].Enabled:=False;
       Node_PM.Items[3].Caption:='���������� ����';
      end;
    end;
   M.x:=X+6;
   M.y:=Y+74;
   Node_PM.Popup(ClientToScreen(M).X,ClientToScreen(M).Y);
  end;

//================================================================
end;


procedure TFerma_FD_Form.Topology_Grd_FDMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
 ACol,ARow,i:integer;
 Node1Ok,Node2Ok:boolean;
begin
//================ ������ ����������� PopUp ���� =================
 if shift=[ssRight] then
  begin
   Topology_Grd_FD.MouseToCell(X,Y,ACol,ARow);
   PivotNum_Pm:=ARow;
   Node1:=-1;
   Node2:=-1;
   Node1Ok:=False;
   Node2Ok:=False;
   if ARow<>0 then
    begin
     Node1:=F.iTopN[ARow,1];
     Node2:=F.iTopN[ARow,2];
     Node1Ok:=True;
     Node2Ok:=True;
     for i:=1 to F.nst1 do
      begin
       if i<>AROW then
        begin
         if (F.iTopN[i,1]=Node1) or (F.iTopN[i,2]=Node1) then
          Node1Ok:=False;
         if (F.iTopN[i,1]=Node2) or (F.iTopN[i,2]=Node2) then
          Node2Ok:=False;
        end;
      end;
    end;


   if ((F.nst1=Round((F.nyz1-1)*F.nyz1/2)) or (F.nst1=15))then
    begin
     Pivot_PM.Items[0].Enabled:=False;
     Pivot_PM.Items[0].Caption:='�������� ��������';
     if ARow<>0 then
      begin
       Pivot_PM.Items[2].Enabled:=True;
       Pivot_PM.Items[2].Caption:='������� �������� [� '+IntToStr(ARow)+']';
       Pivot_PM.Items[3].Enabled:=True;
       if Node1Ok and Node2Ok then
        Pivot_PM.Items[3].Caption:='������� �������� [� '+IntToStr(ARow)+']'+ ' + ���� [� '+IntToStr(Node1)+', � '+IntToStr(Node2)+']'
       else if Node1Ok and not Node2Ok then begin
        Pivot_PM.Items[3].Caption:='������� �������� [� '+IntToStr(ARow)+']'+ ' + ���� [� '+IntToStr(Node1)+']';
        Node2:=-1;
                                            end
       else if not Node1Ok and Node2Ok then begin
        Pivot_PM.Items[3].Caption:='������� �������� [� '+IntToStr(ARow)+']'+ ' + ���� [� '+IntToStr(Node2)+']';
        Node1:=-1;
                                            end
       else
        begin
         Pivot_PM.Items[3].Caption:='������� �������� + ����';
         Pivot_PM.Items[3].Enabled:=False;
        end;
      end
     else
      begin
       Pivot_PM.Items[2].Enabled:=False;
       Pivot_PM.Items[2].Caption:='������� ��������';
       Pivot_PM.Items[3].Enabled:=False;
       Pivot_PM.Items[3].Caption:='������� �������� + ����';
      end;
     if F.nst1=0 then
      begin
       Pivot_PM.Items[2].Enabled:=False;
       Pivot_PM.Items[3].Caption:='������� ��������';
       Pivot_PM.Items[3].Enabled:=False;
       Pivot_PM.Items[3].Caption:='������� �������� + ����';
      end;
    end
   else if F.nst1=0 then
    begin
     Pivot_PM.Items[0].Enabled:=True;
     Pivot_PM.Items[0].Caption:='�������� �������� [� '+IntToStr(F.nst1+1)+']';
     Pivot_PM.Items[2].Enabled:=False;
     Pivot_PM.Items[2].Caption:='������� ��������';
     Pivot_PM.Items[3].Enabled:=False;
     Pivot_PM.Items[3].Caption:='������� �������� + ����';
    end
   else
    begin
     Pivot_PM.Items[0].Enabled:=True;
     Pivot_PM.Items[0].Caption:='�������� �������� [� '+IntToStr(F.nst1+1)+']';
     if ARow<>0 then
      begin
       Pivot_PM.Items[2].Enabled:=True;
       Pivot_PM.Items[2].Caption:='������� �������� [� '+IntToStr(ARow)+']';
       Pivot_PM.Items[3].Enabled:=True;
       if Node1Ok and Node2Ok then
        Pivot_PM.Items[3].Caption:='������� �������� [� '+IntToStr(ARow)+']'+ ' + ���� [� '+IntToStr(Node1)+', � '+IntToStr(Node2)+']'
       else if Node1Ok and not Node2Ok then begin
        Pivot_PM.Items[3].Caption:='������� �������� [� '+IntToStr(ARow)+']'+ ' + ���� [� '+IntToStr(Node1)+']';
        Node2:=-1;
                                            end
       else if not Node1Ok and Node2Ok then begin
        Pivot_PM.Items[3].Caption:='������� �������� [� '+IntToStr(ARow)+']'+ ' + ���� [� '+IntToStr(Node2)+']';
        Node1:=-1;
                                            end
       else
        begin
         Pivot_PM.Items[3].Caption:='������� �������� + ����';
         Pivot_PM.Items[3].Enabled:=False;
        end;
      end
     else
      begin
       Pivot_PM.Items[2].Enabled:=False;
       Pivot_PM.Items[2].Caption:='������� ��������';
       Pivot_PM.Items[3].Enabled:=False;
       Pivot_PM.Items[3].Caption:='������� �������� + ����';
      end;

    end;

  end;
//================================================================
end;



procedure TFerma_FD_Form.Plus_NagrClick(Sender: TObject);
var
 i:integer;
begin

 Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Tag:=F.nsn1;
 Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).isChanged:=True;
 ferma_M.TFerma_Form(Main_Form.ActiveMdiChild).Caption:=concat('*',Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).real_fname);
 Main_Form.F_Save_TBtn.Enabled:=True;

 F.nsn1:=F.nsn1+1;
 if F.nsn1=3 then add.Enabled:= False;
 if F.nsn1>1 then delete.Enabled:=True;
 
 Main_Form.Sn_Cbx.Items.Clear;
 for i:=1 to F.nsn1 do
  begin
   Main_Form.Sn_Cbx.Items.Add('������ ���������� '+IntToStr(i));
  end;
  if F.nsn1=1 then  Main_Form.Sn_Cbx.Enabled:=False
   else Main_Form.Sn_Cbx.Enabled:=True;

 Nagr_Nagr_ComboBox.Items.Clear;
 for i:=1 to F.nsn1 do
  begin
   Nagr_Nagr_ComboBox.Items.Add(IntToStr(i));
  end;
  if F.nsn1=1 then Nagr_Nagr_ComboBox.Enabled:=False
   else Nagr_Nagr_ComboBox.Enabled:=True;

 Main_Form.Sn_Cbx.ItemIndex:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Tag-1;
 Nagr_Nagr_ComboBox.ItemIndex:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Tag-1;

 ferma_FD_form.showD(f);
 Main_Form.ActiveMDIChild.RePaint;
 Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).Buf.Add(Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).Ferm);
end;



procedure TFerma_FD_Form.Minus_NagrClick(Sender: TObject);
var
 i,i_del,j:integer;
begin
 i_del:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Tag;
 Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).isChanged:=True;
 ferma_M.TFerma_Form(Main_Form.ActiveMdiChild).Caption:=concat('*',Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).real_fname);
 Main_Form.F_Save_TBtn.Enabled:=True;

 for i:=i_del+1 to F.nsn1 do
  begin
   for j:=1 to F.nyz1 do
    begin
     F.Pn[j*2-1,i-1]:=F.Pn[j*2-1,i];
     F.Pn[j*2,i-1]:=F.Pn[j*2,i];
    end;
  end;

  for j:=1 to F.nyz1 do
   begin
    F.Pn[j*2-1,F.nsn1]:=0;
    F.Pn[j*2,F.nsn1]:=0;
   end;

 F.nsn1:=F.nsn1-1;
 Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Tag:=1;
 Main_Form.Sn_Cbx.Items.Clear;
 
 for i:=1 to F.nsn1 do
  begin
   Main_Form.Sn_Cbx.Items.Add('������ ���������� '+IntToStr(i));
  end;
  if F.nsn1=1 then  Main_Form.Sn_Cbx.Enabled:=False
   else Main_Form.Sn_Cbx.Enabled:=True;


 Nagr_Nagr_ComboBox.Items.Clear;
 for i:=1 to F.nsn1 do
  begin
   Nagr_Nagr_ComboBox.Items.Add(IntToStr(i));
  end;
  if F.nsn1=1 then Nagr_Nagr_ComboBox.Enabled:=False
   else Nagr_Nagr_ComboBox.Enabled:=True;

 Main_Form.Sn_Cbx.ItemIndex:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Tag-1;
 Nagr_Nagr_ComboBox.ItemIndex:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Tag-1;
 if F.nsn1<3 then add.Enabled:= True;
 if F.nsn1<2 then delete.Enabled:= False;
 ferma_FD_form.showD(f);
 Main_Form.ActiveMDIChild.RePaint;
 Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).Buf.Add(Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).Ferm);
end;


procedure TFerma_FD_Form.Nagr_Grd_FDEnter(Sender: TObject);
begin
 Nagr_Grd_SetEdit:=True;
end;


procedure TFerma_FD_Form.Nagr_Grd_FDExit(Sender: TObject);
begin
ferma_FD_form.showD(f);
end;


procedure TFerma_FD_Form.Nagr_Grd_FDGetEditText(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
begin
 Nagr_Grd_Value:=Value;
 Nagr_Grd_ACol:=ACol;
 Nagr_Grd_ARow:=ARow;
 Nagr_Grd_SetEdit:=False;
end;


procedure TFerma_FD_Form.Nagr_Grd_FDSelectCell(Sender: TObject; Col,
  Row: Integer; var CanSelect: Boolean);
begin
  if not Nagr_Grd_SetEdit then
   begin
    ferma_FD_form.showD(f);
    Nagr_Grd_SetEdit:=True;
   end;
end;


procedure TFerma_FD_Form.Nagr_Grd_FDKeyPress(Sender: TObject;
  var Key: Char);
begin
 Nagr_Grd_Key:=Key;
end;


procedure TFerma_FD_Form.Nagr_Grd_FDSetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: String);
var
 X:integer;
begin
 if  Nagr_GRD_Key=chr(13) then begin
  if isRealNumber(Nagr_Grd_FD.Cells[Nagr_Grd_ACol,Nagr_Grd_ARow]) then
    begin
     if Nagr_Grd_ACol=3 then X:=-1 else X:=0;
     F.Pn[Nagr_Grd_ARow*2+X,Nagr_Nagr_ComboBox.ItemIndex+1]:=StrToFloat(Nagr_Grd_FD.Cells[Nagr_Grd_ACol,Nagr_Grd_ARow]);
     Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).isChanged:=True;
     ferma_M.TFerma_Form(Main_Form.ActiveMdiChild).Caption:=concat('*',Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).real_fname);
     Main_Form.F_Save_TBtn.Enabled:=True;
     Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Repaint;
     Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).Buf.Add(Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).Ferm);
     Nagr_Grd_SetEdit:=True;
     Main_Form.StatusBar1.Panels[1].Text :='';
     Main_Form.StatusBar1.Panels[2].Text :='';
    end
  else
   begin
    Beep;
    Main_Form.StatusBar1.Panels[1].Text :='������ ��� ����� ����';
    Main_Form.StatusBar1.Panels[2].Text :='���� ������� �� �����';
    ferma_FD_form.showD(f);
   end
 end;
end;


procedure TFerma_FD_Form.Nagr_Grd_FDMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
Acol,ARow:Integer;
begin

Nagr_Grd_FD.MouseToCell(X,Y,ACol,ARow);

if (ARow<>Nagr_Grd_ARow_Hint) or (ACol<>Nagr_Grd_ACol_Hint) then
 begin
  Nagr_Grd_FD.ShowHint:=True;
  Application.CancelHint;
 end;
if (ARow>0) and (ACol=0) then Nagr_Grd_FD.Hint:='['+FormatFloat('0.##',F.corn[ARow,1])+' : '+FormatFloat('0.##',F.corn[ARow,2])+']'
 else if (ARow=0) and (ACol=0) then Nagr_Grd_FD.Hint:='����� ���� �����'
 else Nagr_Grd_FD.ShowHint:=False;
Nagr_Grd_ACol_Hint:=ACol;
Nagr_Grd_ARow_Hint:=ARow;

end;


procedure TFerma_FD_Form.Tol_Grd_FDEnter(Sender: TObject);
begin
 Tol_Grd_SetEdit:=True;
end;


procedure TFerma_FD_Form.Tol_Grd_FDExit(Sender: TObject);
begin
 ferma_FD_form.showD(f);
end;


procedure TFerma_FD_Form.Tol_Grd_FDKeyPress(Sender: TObject;
  var Key: Char);
begin
 Tol_Grd_Key:=Key;
end;


procedure TFerma_FD_Form.Tol_Grd_FDGetEditText(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
begin
 //Tol_Grd_SetEdit:=False;
 Tol_Grd_SetEdit:=True;
end;


procedure TFerma_FD_Form.Tol_Grd_FDSelectCell(Sender: TObject; Col,
  Row: Integer; var CanSelect: Boolean);
var
  x1,x2,y1,y2: Integer;
  Node1,Node2: Integer;
begin
  HighLightPivot(Sender,Row);
  if not Tol_Grd_SetEdit then
   begin
    ferma_FD_form.showD(f);
    Tol_Grd_SetEdit:=True;
   end;

end;
procedure TFerma_FD_Form.HighLightPivot(Sender:  TObject; PivNum: Integer);
var
  x1,x2,y1,y2,x_max,y_max, coord_axis_X,coord_axis_Y: Integer;
  max_x_coord,max_y_coord,mas_x,mas_y:extended;
  begin
    Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Repaint;
    Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).PaintBox.Canvas.pen.Mode  :=pmNotXor;
    Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).PaintBox.Canvas.pen.Color :=clBlue;
    Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).PaintBox.Canvas.pen.Width :=3;
    coord_axis_X:=30;
    coord_axis_Y:=15;
    max_x_coord :=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.region_x;
    max_y_coord :=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.region_y;
    begin
       x_max:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).PaintBox.Width;
       y_max:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).PaintBox.Height;
       mas_x:=(x_max-80-coord_axis_X)/max_x_coord; //�������������� ������������
       mas_y:=(y_max-60-coord_axis_Y)/max_y_coord;
       x1   :=50+coord_axis_X+round(mas_x*Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.ITOPn[PivNum,1],1]);
       y1   :=y_max-30-coord_axis_Y-round(mas_y*Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.ITOPn[PivNum,1],2]);
       x2   :=50+coord_axis_X+round(mas_x*Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.ITOPn[PivNum,2],1]);
       y2   :=y_max-30-coord_axis_Y-round(mas_y*Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.ITOPn[PivNum,2],2]);
       Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).PaintBox.Canvas.MoveTo(x1, y1);
       Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).PaintBox.Canvas.LineTo(x2, y2);
       Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).PaintBox.Canvas.pen.Width:=1;
       Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).PaintBox.Canvas.pen.Mode :=pmCopy;
    end;
  end;

procedure TFerma_FD_Form.HighLightNode(Sender:  TObject; NodeNum: Integer);
var
  x,y1,x_max,y_max, coord_axis_X,coord_axis_Y: Integer;
  max_x_coord,max_y_coord,mas_x,mas_y:extended;
  begin
    Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Repaint;
    Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).PaintBox.Canvas.pen.Mode  :=pmCopy;
    Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).PaintBox.Canvas.pen.Color :=clYellow;
    Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).PaintBox.Canvas.pen.Width :=4;
    coord_axis_X:=30;
    coord_axis_Y:=15;
    max_x_coord :=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.region_x;
    max_y_coord :=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.region_y;
    begin
       x_max:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).PaintBox.Width;
       y_max:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).PaintBox.Height;
       mas_x:=(x_max-80-coord_axis_X)/max_x_coord; //�������������� ������������
       mas_y:=(y_max-60-coord_axis_Y)/max_y_coord;
       Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).PaintBox.Canvas.Ellipse(coord_axis_X+50+round(mas_x*Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[NodeNum,1])-3,y_max-30-coord_axis_Y-round(mas_y*Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[NodeNum,2])-3,coord_axis_X+50+round(mas_x*Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[NodeNum,1])+5,y_max-30-coord_axis_Y-round(mas_y*Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.corn[NodeNum,2])+5);
       Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).PaintBox.Canvas.pen.Width:=1;
       Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).PaintBox.Canvas.pen.Mode :=pmCopy;
    end;
  end;
procedure TFerma_FD_Form.Tol_Grd_FDSetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: String);
begin
 if  Tol_GRD_Key=chr(13) then begin
  if (StrToFloat(Value)>0) then
  // �������� ����� �������� ������������ - �� ��� ������� ������� ��� ��������  ������ (����� ������� :) �� �������� ����� ������ ���-�� �������
  // ������� ���� ������� �������� �������� �� ���-�� ��� ������ �� "�������" .
    begin
     if (StrToFloat(Value)>0) then
      begin
       F.Fn[ARow]:=StrToFloat(Value);
       Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).isChanged:=True;
       ferma_M.TFerma_Form(Main_Form.ActiveMdiChild).Caption:=concat('*',Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).real_fname);
       Main_Form.F_Save_TBtn.Enabled:=True;
       Tol_Grd_SetEdit:=True;
       Main_Form.StatusBar1.Panels[1].Text :='';
       Main_Form.StatusBar1.Panels[2].Text :='';
      end
     else
      begin
       Beep;
       Main_Form.StatusBar1.Panels[1].Text :='������ ����� ������� ������� �������';
       Main_Form.StatusBar1.Panels[2].Text :='���� ������� ������������ ��������';
       ferma_FD_form.showD(f);
      end;
    end
  else
   begin
    Beep;
    Main_Form.StatusBar1.Panels[1].Text :='������ ����� ������� ������� �������';
    Main_Form.StatusBar1.Panels[2].Text :='���� ������� �� �����';
    ferma_FD_form.showD(f);
   end
 end;

end;


procedure TFerma_FD_Form.Plus_NodeClick(Sender: TObject);
begin
 FermaNewNode_Form.ShowModal;
end;


procedure TFerma_FD_Form.Coord_NodeClick(Sender: TObject);
begin
 CoordNode_Form.ShowModal;
end;


// ������� �������� �������
procedure TFerma_FD_Form.DeletePivot(i_pivot: integer);
var
 i:integer;
begin

 for i:=i_pivot+1 to F.nst1 do
  begin
     F.iTopN[i-1,1]:=F.iTopN[i,1];
     F.iTopN[i,1]:=0;
     F.iTopN[i-1,2]:=F.iTopN[i,2];
     F.iTopN[i,2]:=0;
  end;
 for i:=i_pivot+1 to F.nst1 do
  begin
     F.Fn[i-1]:=F.Fn[i];
     F.Fn[i]:=0;
  end;

end;


// ����������� ��������� ��� �������� ��������, ��������� �
//   ��������� �����
procedure TFerma_FD_Form.Recursia(Sender: TObject);
var
 i:integer;
begin
  for i:=1 to F.nst1 do
  begin
   if (F.iTopN[i,1]=Coord_Node_Pm) or (F.iTopN[i,2]=Coord_Node_Pm) then
    begin
     DeletePivot(i);
     F.nst1:=F.nst1-1;
     Recursia(self);
     Break;
    end;
  end;
end;


procedure TFerma_FD_Form.RecursiaPivot(Node:integer);
var
 i:integer;
begin
  for i:=1 to F.nst1 do
  begin
   if (F.iTopN[i,1]=Node) or (F.iTopN[i,2]=Node) then
    begin
     DeletePivot(i);
     F.nst1:=F.nst1-1;
     RecursiaPivot(Node);
     Break;
    end;
  end;
end;


// �������� ����
procedure TFerma_FD_Form.Minus_NodeClick(Sender: TObject);
var
 i_node,i,j:integer;
begin
 i_node:=Coord_Node_Pm;

 for i:=i_node+1 to F.nyz1 do
  begin
     F.Corn[i-1,1]:=F.Corn[i,1];
     F.Corn[i,1]:=0;
     F.Corn[i-1,2]:=F.Corn[i,2];
     F.Corn[i,2]:=0;
  end;
 for i:=i_node+1 to F.nyz1 do
  begin
     F.msn[i-1,1]:=F.msn[i,1];
     F.msn[i,1]:=0;
     F.msn[i-1,2]:=F.msn[i,2];
     F.msn[i,2]:=0;
  end;
 for j:=1 to F.nsn1 do
  begin
   for i:=i_node+1 to F.nyz1 do
    begin
     F.Pn[(i-1)*2-1,j]:=F.Pn[i*2-1,j];
     F.Pn[i*2-1,j]:=0;
     F.Pn[(i-1)*2,j]:=F.Pn[i*2,j];
     F.Pn[i*2,j]:=0;
    end;
  end;

 F.nyz1:=F.nyz1-1;

 Recursia(self); // ������� �������, ��������� � ��������� �����

 for i:=1 to F.nst1 do  // ���������������� ���� ��������
  begin
   if F.iTopN[i,1]>i_node then F.iTopN[i,1]:=F.iTopN[i,1]-1;
   if F.iTopN[i,2]>i_node then F.iTopN[i,2]:=F.iTopN[i,2]-1;
  end;

 if F.nyz1=0 then
  begin
     F.msn[1,1]:=0;
     F.msn[1,2]:=0;
     for j:=1 to F.nsn1 do
     begin
      F.Pn[1,j]:=0;
      F.Pn[2,j]:=0;
     end;
  end
  else if (F.nyz1+1)=i_node then
  begin
     F.msn[i_node,1]:=0;
     F.msn[i_node,2]:=0;
     for j:=1 to F.nsn1 do
     begin
      F.Pn[i_node*2-1,j]:=0;
      F.Pn[i_node*2,j]:=0;
     end;
  end;

 Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).isChanged:=True;
 ferma_M.TFerma_Form(Main_Form.ActiveMdiChild).Caption:=concat('*',Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).real_fname);
 Main_Form.F_Save_TBtn.Enabled:=True;
 ferma_FD_form.showD(f);
 Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Repaint;

end;


procedure TFerma_FD_Form.Plus_PivotClick(Sender: TObject);
begin
 FermaNewPivot_Form.ShowModal;
end;


procedure TFerma_FD_Form.Minus_PivotClick(Sender: TObject);
begin
    DeletePivot(PivotNum_PM);
    F.nst1:=F.nst1-1;
    Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).isChanged:=True;
    ferma_M.TFerma_Form(Main_Form.ActiveMdiChild).Caption:=concat('*',Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).real_fname);
    Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Repaint;
    ferma_FD_form.showD(f);
    Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).Buf.Add(Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).Ferm);
end;


procedure TFerma_FD_Form.Minus_PivotNodeClick(Sender: TObject);
var
i_node,i,j:integer;
begin
if Node1<>-1 then
 begin
 i_node:=Node1;

 for i:=i_node+1 to F.nyz1 do
  begin
     F.Corn[i-1,1]:=F.Corn[i,1];
     F.Corn[i,1]:=0;
     F.Corn[i-1,2]:=F.Corn[i,2];
     F.Corn[i,2]:=0;
  end;
 for i:=i_node+1 to F.nyz1 do
  begin
     F.msn[i-1,1]:=F.msn[i,1];
     F.msn[i,1]:=0;
     F.msn[i-1,2]:=F.msn[i,2];
     F.msn[i,2]:=0;
  end;
 for j:=1 to F.nsn1 do
  begin
   for i:=i_node+1 to F.nyz1 do
    begin
     F.Pn[(i-1)*2-1,j]:=F.Pn[i*2-1,j];
     F.Pn[i*2-1,j]:=0;
     F.Pn[(i-1)*2,j]:=F.Pn[i*2,j];
     F.Pn[i*2,j]:=0;
    end;
  end;

 F.nyz1:=F.nyz1-1;

 RecursiaPivot(Node1); // ������� �������, ��������� � ��������� �����

 for i:=1 to F.nst1 do  // ���������������� ���� ��������
  begin
   if F.iTopN[i,1]>i_node then F.iTopN[i,1]:=F.iTopN[i,1]-1;
   if F.iTopN[i,2]>i_node then F.iTopN[i,2]:=F.iTopN[i,2]-1;
  end;

 if F.nyz1=0 then
  begin
     F.msn[1,1]:=0;
     F.msn[1,2]:=0;
     for j:=1 to F.nsn1 do
     begin
      F.Pn[1,j]:=0;
      F.Pn[2,j]:=0;
     end;
  end
  else if (F.nyz1+1)=i_node then
  begin
     F.msn[i_node,1]:=0;
     F.msn[i_node,2]:=0;
     for j:=1 to F.nsn1 do
     begin
      F.Pn[i_node*2-1,j]:=0;
      F.Pn[i_node*2,j]:=0;
     end;
  end;
 end;

if Node2<>-1 then
 begin
 if (Node1<>-1) and (Node1<Node2) then
  i_node:=Node2-1
 else
  i_node:=Node2;

 for i:=i_node+1 to F.nyz1 do
  begin
     F.Corn[i-1,1]:=F.Corn[i,1];
     F.Corn[i,1]:=0;
     F.Corn[i-1,2]:=F.Corn[i,2];
     F.Corn[i,2]:=0;
  end;
 for i:=i_node+1 to F.nyz1 do
  begin
     F.msn[i-1,1]:=F.msn[i,1];
     F.msn[i,1]:=0;
     F.msn[i-1,2]:=F.msn[i,2];
     F.msn[i,2]:=0;
  end;
 for j:=1 to F.nsn1 do
  begin
   for i:=i_node+1 to F.nyz1 do
    begin
     F.Pn[(i-1)*2-1,j]:=F.Pn[i*2-1,j];
     F.Pn[i*2-1,j]:=0;
     F.Pn[(i-1)*2,j]:=F.Pn[i*2,j];
     F.Pn[i*2,j]:=0;
    end;
  end;

 F.nyz1:=F.nyz1-1;

 RecursiaPivot(i_node); // ������� �������, ��������� � ��������� �����

 for i:=1 to F.nst1 do  // ���������������� ���� ��������
  begin
   if F.iTopN[i,1]>i_node then F.iTopN[i,1]:=F.iTopN[i,1]-1;
   if F.iTopN[i,2]>i_node then F.iTopN[i,2]:=F.iTopN[i,2]-1;
  end;

 if F.nyz1=0 then
  begin
     F.msn[1,1]:=0;
     F.msn[1,2]:=0;
     for j:=1 to F.nsn1 do
     begin
      F.Pn[1,j]:=0;
      F.Pn[2,j]:=0;
     end;
  end
  else if (F.nyz1+1)=i_node then
  begin
     F.msn[i_node,1]:=0;
     F.msn[i_node,2]:=0;
     for j:=1 to F.nsn1 do
     begin
      F.Pn[i_node*2-1,j]:=0;
      F.Pn[i_node*2,j]:=0;
     end;
  end;
 end;

 Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).isChanged:=True;
 ferma_M.TFerma_Form(Main_Form.ActiveMdiChild).Caption:=concat('*',Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).real_fname);
 Main_Form.F_Save_TBtn.Enabled:=True;
 Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Repaint;
 Ferma_FD_Form.showD(f);
 Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).Buf.Add(Ferma_M.Tferma_form(Main_Form.ActiveMDIChild).Ferm);
end;


procedure TFerma_FD_Form.Nagr_PMPopup(Sender: TObject);
begin
//================ ������������ PopUp ���� ====================
 If  (f.nsn1=1) then
   Nagr_PM.Items[1].Enabled:=False
  else Nagr_PM.Items[1].Enabled:=True;
 If  (f.nsn1=3) then
   Nagr_PM.Items[0].Enabled:=False
  else Nagr_PM.Items[0].Enabled:=True;
//=============================================================
end;


procedure TFerma_FD_Form.FormCreate(Sender: TObject);
begin
 first_show_FD_form:=true;
end;

procedure TFerma_FD_Form.FormShow(Sender: TObject);
begin
 if first_show_FD_form then
  begin
   Top:=Main_Form.Top+30;
   Left:=Main_Form.Left+Main_Form.Width-Width-8;
   first_show_FD_form:=false;
  end;
end;

procedure TFerma_FD_Form.Nagr_Grd_FDMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
 M:TPoint;
begin
//================ ������ ����������� PopUp ���� =================
 if Shift=[ssRight] then
  begin
   M.x:=X+6;
   M.y:=Y+74;
   Nagr_PM.Popup(ClientToScreen(M).X,ClientToScreen(M).Y);
  end;
end;

procedure TFerma_FD_Form.FormActivate(Sender: TObject);
begin
 if ((Main_form.DeletePivot12_ToolButton.Down) or (Main_form.DeletePivot_ToolButton.Down) or (Main_form.PivotTol_ToolButton.Down)) then
  begin
    Main_Form.ActiveMDIChild.RePaint;
//    Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).PivotIdent:=0;
  end;

 if Main_Form.ActiveMDIChild.Active then
  begin
   Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).PaintBox.Cursor:=crDefault;
   Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).PaintBox.ShowHint:=False;
   Main_Form.Ferma_Graph_Enter_ToolBar.Buttons[0].Down:=True;
   Main_Form.StatusBar1.Panels[0].Text :='';
   Main_Form.StatusBar1.Panels[1].Text :='';
   Main_Form.StatusBar1.Panels[2].Text :='';
  end;

end;

procedure TFerma_FD_Form.Button1Click(Sender: TObject);
begin
     FermaNewPivot_Form.ShowModal;
end;

procedure TFerma_FD_Form.Button2Click(Sender: TObject);
begin
         Form1.ShowModal;
end;

procedure TFerma_FD_Form.Button3Click(Sender: TObject);
begin
   FermaNewNode_Form.ShowModal;
end;

procedure TFerma_FD_Form.Button4Click(Sender: TObject);
begin
        Form2.ShowModal;
end;







procedure TFerma_FD_Form.Ok_BtnClick(Sender: TObject);
var
i :integer;
label  exx;

begin

if strtoint(Tol_NPivot_Edit.text)<2 then
goto exx;

for i:=2 to  strtoint(Tol_NPivot_Edit.text) do
 Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.Fn[i]:=Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm.Fn[1];

ferma_FD_form.showD(Ferma_M.TFerma_Form(Main_Form.ActiveMDIChild).Ferm);

exx:
end;


procedure TFerma_FD_Form.Topology_Grd_FDSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
HighLightPivot(Sender,ARow);
end;


end.
