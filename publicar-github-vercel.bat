@echo off
setlocal

REM Edite estas linhas antes de rodar
set "GIT_NAME=Roberto Inacio"
set "GIT_EMAIL=roberto.inacio136@gmail.com"
set "GITHUB_USER=robertoinacio-pcp"
set "REPO_NAME=prompt-builder-operacional"

if "%GITHUB_USER%"=="SEU_USUARIO" (
  echo Edite o arquivo e preencha GITHUB_USER antes de rodar.
  pause
  exit /b 1
)

if "%GIT_EMAIL%"=="seu-email@exemplo.com" (
  echo Edite o arquivo e preencha GIT_EMAIL antes de rodar.
  pause
  exit /b 1
)

git config user.name "%GIT_NAME%"
git config user.email "%GIT_EMAIL%"

echo ==^> Status atual
git status --short

echo ==^> Adicionando e tentando commitar
git add .
git commit -m "Initial web version of Prompt Builder Operacional"

echo ==^> Configurando remote origin
git remote get-url origin >nul 2>nul
if errorlevel 1 (
  git remote add origin https://github.com/%GITHUB_USER%/%REPO_NAME%.git
) else (
  git remote set-url origin https://github.com/%GITHUB_USER%/%REPO_NAME%.git
)

echo.
echo Proximos passos manuais:
echo 1. Criar no GitHub o repositorio %REPO_NAME%
echo 2. Rodar: git push -u origin main
echo 3. Publicar na Vercel importando esse repositorio
echo.
pause
