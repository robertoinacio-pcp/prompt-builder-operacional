@echo off
setlocal

echo ==========================================
echo  Salvar e publicar atualizacao
echo ==========================================
echo.

cd /d "C:\Users\roberto.inacio\prompt-builder-web"
if errorlevel 1 (
  echo Nao consegui abrir a pasta do projeto.
  pause
  exit /b 1
)

echo Status atual:
git status --short
echo.

set /p COMMIT_MSG=Digite a mensagem do commit: 
if "%COMMIT_MSG%"=="" (
  echo A mensagem do commit nao pode ficar vazia.
  pause
  exit /b 1
)

echo.
echo Adicionando arquivos alterados...
git add .
if errorlevel 1 (
  echo Falha no git add.
  pause
  exit /b 1
)

echo Criando commit...
git commit -m "%COMMIT_MSG%"
if errorlevel 1 (
  echo.
  echo O commit falhou. Pode ser que nao haja mudancas novas ou que exista algum problema no Git.
  pause
  exit /b 1
)

echo.
echo Enviando para o GitHub...
git push origin main
if errorlevel 1 (
  echo.
  echo O push falhou. Revise a mensagem acima.
  pause
  exit /b 1
)

echo.
echo Publicacao concluida com sucesso.
echo O GitHub recebeu a atualizacao e a Vercel deve republicar automaticamente em instantes.
pause
