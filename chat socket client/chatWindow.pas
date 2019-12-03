unit chatWindow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Win.ScktComp;


type
  TchatForm = class(TForm)
    GroupBox1: TGroupBox;
    mmChatBox: TMemo;
    ListBox1: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    mmMessage: TMemo;
    Label3: TLabel;
    Label4: TLabel;
    edtIPAddress: TEdit;
    edtPort: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    ClientSocket1: TClientSocket;
    btnConnect: TButton;
    btnSend: TButton;
    procedure btnConnectClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure ClientSocketConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocketDisconnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocketRead(Sender: TObject; Socket: TCustomWinSocket);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  chatForm: TchatForm;

implementation

{$R *.dfm}

procedure TchatForm.btnConnectClick(Sender: TObject);
begin
  ClientSocket1.Active := False;
  ClientSocket1.Host := edtIPAddress.Text;
  ClientSocket1.Port := StrToInt(edtPort.Text);
  ClientSocket1.Active := True;
end;

procedure TchatForm.btnSendClick(Sender: TObject);
begin
  ClientSocket1.Socket.SendText(mmMessage.Text);
  mmChatBox.Lines.Add('Me: '+mmMessage.Text);
  mmMessage.Text := '';
end;

procedure TchatForm.ClientSocketConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  ShowMessage('Connect to sever '+Socket.LocalHost+' with address '+Socket.LocalAddress+' using port '+IntToStr(Socket.LocalPort));
  mmChatBox.Lines.Clear;
end;

procedure TchatForm.ClientSocketDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  ShowMessage('Disconnect from server!');
end;

procedure TchatForm.ClientSocketRead(Sender: TObject; Socket: TCustomWinSocket);
begin
  mmChatBox.Lines.Add(ClientSocket1.Socket.ReceiveText);
end;

end.
