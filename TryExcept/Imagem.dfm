object frmImagem: TfrmImagem
  Left = 0
  Top = 0
  Caption = 'frmImagem'
  ClientHeight = 422
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object img1: TImage
    Left = 8
    Top = 8
    Width = 377
    Height = 242
  end
  object sbtnCarregar: TSpeedButton
    Left = 128
    Top = 256
    Width = 169
    Height = 22
    Caption = 'CarregarImagem'
    OnClick = sbtnCarregarClick
  end
end
