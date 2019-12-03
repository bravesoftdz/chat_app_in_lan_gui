object chatForm: TchatForm
  Left = 0
  Top = 0
  Caption = 'Chat Window'
  ClientHeight = 359
  ClientWidth = 711
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 44
    Height = 13
    Caption = 'Chat box'
  end
  object Label2: TLabel
    Left = 455
    Top = 8
    Width = 79
    Height = 13
    Caption = 'List Online Users'
  end
  object Label3: TLabel
    Left = 8
    Top = 277
    Width = 82
    Height = 13
    Caption = 'Say something...'
  end
  object Label4: TLabel
    Left = 456
    Top = 190
    Width = 65
    Height = 13
    Caption = 'Configuration'
  end
  object GroupBox1: TGroupBox
    Left = 456
    Top = 201
    Width = 247
    Height = 154
    TabOrder = 0
    object Label5: TLabel
      Left = 22
      Top = 37
      Width = 52
      Height = 13
      Caption = 'IP Address'
    end
    object Label6: TLabel
      Left = 35
      Top = 77
      Width = 20
      Height = 13
      Caption = 'Port'
    end
    object edtIPAddress: TEdit
      Left = 80
      Top = 29
      Width = 129
      Height = 21
      HelpType = htKeyword
      TabOrder = 0
    end
    object edtPort: TEdit
      Left = 80
      Top = 69
      Width = 129
      Height = 21
      TabOrder = 1
    end
    object btnConnect: TButton
      Left = 104
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Connect'
      TabOrder = 2
      OnClick = btnConnectClick
    end
  end
  object mmChatBox: TMemo
    Left = 8
    Top = 27
    Width = 425
    Height = 238
    Lines.Strings = (
      '')
    ReadOnly = True
    TabOrder = 1
  end
  object ListBox1: TListBox
    Left = 455
    Top = 27
    Width = 248
    Height = 150
    ItemHeight = 13
    TabOrder = 2
  end
  object mmMessage: TMemo
    Left = 8
    Top = 296
    Width = 361
    Height = 59
    TabOrder = 3
  end
  object btnSend: TButton
    Left = 375
    Top = 296
    Width = 75
    Height = 59
    Caption = 'Send'
    TabOrder = 4
    OnClick = btnSendClick
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnConnect = ClientSocketConnect
    OnDisconnect = ClientSocketDisconnect
    OnRead = ClientSocketRead
    Left = 664
    Top = 176
  end
end
