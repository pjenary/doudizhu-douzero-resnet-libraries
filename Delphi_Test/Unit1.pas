// Author: QQ 1720191365
// Email: dnns@foxmail.com
// Website: www.dnns.vip
// Created Time:2023-04
unit Unit1;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;
type
  TForm1 = class(TForm)
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);

type
   TFunc_getWinrate =function(types:integer;myCards:AnsiString):pchar;stdcall;
   TFunc_initCard =function(id:integer;play:integer;myCards:AnsiString;threeCards:AnsiString;passWord:AnsiString):pchar;stdcall;
   TFunc_getCard =function(id:integer;nextCards:AnsiString;prevCards:AnsiString):pchar;stdcall;

var
  Th:Thandle;
  Tp_getWinrate:TFarProc;
  Tp_initCard:TFarProc;
  Tp_getCard:TFarProc;

  getWinrate:TFunc_getWinrate;
  initCard:TFunc_initCard;
  getCard:TFunc_getCard;

  res:pchar;

begin
  Memo1.Clear();
  Th :=LoadLibrary('../Dnn.dll');

  if(Th >0 ) then
    begin
    Tp_getWinrate :=GetProcAddress(Th,PChar('getWinrate'));
    Tp_initCard :=GetProcAddress(Th,PChar('initCard'));
    Tp_getCard :=GetProcAddress(Th,PChar('getCard'));

    getWinrate :=TFunc_getWinrate(Tp_getWinrate);
    initCard :=TFunc_initCard(Tp_initCard);
    getCard :=TFunc_getCard(Tp_getCard);
    
    res :=getWinrate(4, '345566689TTJQKAA222X');
    Memo1.Lines.Add('Winrate:' + res);

    res :=initCard(0, 0, '345566689TTJQKAA222X','46T','');
    Memo1.Lines.Add('AI: ' + res);

    res :=getCard(0,'-','-');
    Memo1.Lines.Add('AI: ' + res);

    res :=getCard(0,'0','A');
    Memo1.Lines.Add('0    A   AI: ' + res);
    
    res :=getCard(0,'0','0');
    Memo1.Lines.Add('0    0   AI: ' + res);
    
    res :=getCard(0,'0','JJ');
    Memo1.Lines.Add('0    JJ  AI: ' + res);
    
    res :=getCard(0,'0','0');
    Memo1.Lines.Add('0    0   AI: ' + res);
    
    res :=getCard(0,'9TJQKA','0');
    Memo1.Lines.Add('9TJQKA   0   AI: ' + res);
    
    res :=getCard(0,'3','8');
    Memo1.Lines.Add('3    8   AI: ' + res);
    
    res :=getCard(0,'0','D');
    Memo1.Lines.Add('0    D   AI: ' + res);
    
    res :=getCard(0,'0','77');
    Memo1.Lines.Add('0    77  AI: ' + res);
    end;
end;

end.
