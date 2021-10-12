unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Stan.Param,
  FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.UI, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    DBGrid1: TDBGrid;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Button1: TButton;
    LabeledEdit1: TLabeledEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure LabeledEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FDQuery1.Insert;
end;

procedure TForm1.LabeledEdit1Change(Sender: TObject);
begin
    FDQuery1.SQL.Text := 'SELECT * FROM table1 WHERE table1_column1 LIKE "%' + LabeledEdit1.Text + '%";';
    FDQuery1.Open;
    Label1.Caption := LabeledEdit1.Text;
end;

end.
