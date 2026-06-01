#!/usr/bin/env bash
set -e

# Edite estas 3 linhas antes de rodar
GIT_NAME="Roberto Inacio"
GIT_EMAIL="roberto.inacio136@gmail.com"
GITHUB_USER="robertoinacio-pcp"

REPO_NAME="prompt-builder-operacional"
REPO_URL="https://github.com/${GITHUB_USER}/${REPO_NAME}.git"

if [ "$GITHUB_USER" = "SEU_USUARIO" ]; then
  echo "Edite o arquivo e preencha GITHUB_USER antes de rodar."
  exit 1
fi

if [ "$GIT_EMAIL" = "seu-email@exemplo.com" ]; then
  echo "Edite o arquivo e preencha GIT_EMAIL antes de rodar."
  exit 1
fi

echo "==> Configurando identidade do Git"
git config user.name "$GIT_NAME"
git config user.email "$GIT_EMAIL"

echo "==> Status atual"
git status --short

echo "==> Fazendo commit inicial"
if git diff --cached --quiet && git diff --quiet; then
  echo "Nada para commitar."
else
  git add .
  git commit -m "Initial web version of Prompt Builder Operacional" || true
fi

echo "==> Configurando remote origin"
if git remote get-url origin >/dev/null 2>&1; then
  git remote set-url origin "$REPO_URL"
else
  git remote add origin "$REPO_URL"
fi

echo "==> Remote atual"
git remote -v

echo
cat <<EOF
Próximos passos manuais:
1. Crie no GitHub o repositório: ${REPO_NAME}
2. Depois rode:
   git push -u origin main
3. Em seguida publique na Vercel importando esse repositório.
EOF
