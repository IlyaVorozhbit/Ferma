unit Utils;

interface

uses Dialogs, Main, Forms, SysUtils;


  procedure mainFormInit(main_form: TMain_Form);
  procedure test();

  implementation
    uses Splash;

    procedure mainFormInit(main_form: TMain_Form);
    begin
      Splash_Form:=Splash.TSplash_Form.Create(main_form);
      Splash_Form.Show;

      while Splash_Form.Visible do Application.ProcessMessages;

      with Screen do
      begin
        main_form.Height_Ratio      := Dev_Height/Height;
        main_form.Width_Ratio       := Dev_Width/Width;
        main_form.Width   := trunc(640*main_form.Width_Ratio);
        main_form.Height  := trunc(480*main_form.Height_Ratio);
      end;


      Application.HelpFile:=ExtractFilePath(Application.ExeName)+Application.HelpFile;

      main_form.Main_Panel.Visible  :=TRUE;

      main_form.Num_Nonamed_Ferma   :=1;
      main_form.Num_Nonamed_Plast   :=1;
      main_form.Num_Nonamed_TOK     :=1;

      main_form.output_order := 1; //прямой порядок вывода
      main_form.sorted:=false;


    end;

    procedure test();
    begin
      ShowMessage('test');
    end;


end.
