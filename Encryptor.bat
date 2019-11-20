@echo off
cls
setlocal
if not exist %1 ( type NUL> movefileshere.zip
  exit
)
echo press e to encrypt, or d to decrypt.
choice /c ed
if %ERRORLEVEL%==1 goto encrypt
if %ERRORLEVEL%==2 goto decrypt
:encrypt
if exist encrypted.crypt (
  type %1> encrypted(1).crypt
  del /f %1
  exit
)
type %1> encrypted.crypt
del /f %1
exit
:decrypt
if exist decrypted.zip (
  type %1> decrypted1.zip
  del /f %1
  exit
)
type %1> decrypted.zip
del /f %1
exit
