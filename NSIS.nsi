Page
UninstPage
Section "Instraller"
  SetOutPath $INSTDIR

  File
  
ScetionEnd

FUNCTION
  MessageBox 
  ABORT
  
  FUNCTIONEND
  
StrCmp $0 'some value' 0 +3
  MessageBox MB_OK '$$0 is some value'
  Goto done
StrCmp $0 'some other value' 0 +3
  MessageBox MB_OK '$$0 is some other value'
  Goto done
# else
  MessageBox MB_OK '$$0 is "$0"'
done:

  ${If} $0 == 'some value'
  MessageBox MB_OK '$$0 is some value'
${ElseIf} $0 == 'some other value'
  MessageBox MB_OK '$$0 is some other value'
${Else}
  MessageBox MB_OK '$$0 is "$0"'
${EndIf}

  ${Switch} $0
  ${Case} 'some value'
    MessageBox MB_OK '$$0 is some value'
    ${Break}
  ${Case} 'some other value'
    MessageBox MB_OK '$$0 is some other value'
    ${Break}
  ${Default}
    MessageBox MB_OK '$$0 is "$0"'
    ${Break}
${EndSwitch}

  ${If} $0 == ''
${AndIf} $1 == ''
  MessageBox MB_OK|MB_ICONSTOP 'both are empty!'
${EndIf}
  StrCpy $R1 0
${While} $R1 < 5
  IntOp $R1 $R1 + 1
  DetailPrint $R1
${EndWhile}

  
  
