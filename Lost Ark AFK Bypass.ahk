; Copyright (C) 2022-2022 Fuwn <contact@fuwn.me>
; SPDX-License-Identifier: GPL-3.0-only

#NoEnv
#Warn
#MaxThreadsPerHotkey 2

SendMode          Input
SetTitleMatchMode 2

Toggle := false
Exe    := "ahk_exe LOSTARK.exe"
Hwnd   := WinExist(Exe)

; Check if Lost Ark is open
if !Hwnd
{
  ; If Lost Ark is not open: exit
  MsgBox Lost Ark not found, exiting...
  ExitApp
}

; Toggle via F6
F6::
{
  Toggle := !Toggle
  
  ; While toggled: Movement every eight seconds
  While, Toggle
  {
    ControlSend,, {Space}, %Exe% ; Send, {Space}
    Sleep, 8000
  }
}
Return