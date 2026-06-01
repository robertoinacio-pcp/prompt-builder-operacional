# Prompt Builder Operacional — Web

Versão web estática do gerador de prompts operacionais.

Objetivo:
- funcionar no navegador em Windows, Mac e Linux
- não depender de `.bat`, pasta local do Windows ou backend
- permitir montar, editar, salvar e reutilizar prompts

## Arquivos principais
- `index.html` — app completo
- `vercel.json` — configuração mínima para deploy na Vercel
- `netlify.toml` — configuração mínima para deploy na Netlify

## Recursos da versão web
- presets prontos
- importação de prompt completo
- limpeza automática de bullets e numeração duplicada
- edição campo por campo
- preview final do prompt
- exportação em `.json` e `.md`
- recentes salvos no `localStorage` do navegador

## Como usar localmente
Basta abrir `index.html` no navegador.

## Como publicar na Vercel
1. Criar um repositório com esta pasta
2. Subir os arquivos para o GitHub
3. Entrar na Vercel
4. Importar o repositório
5. Framework preset: `Other`
6. Build command: deixar vazio
7. Output directory: deixar vazio
8. Deploy
9. Testar a URL final no Windows e no Mac

## Passo a passo recomendado (GitHub + Vercel)
1. Criar um repositório chamado `prompt-builder-operacional`
2. Copiar para a raiz do repositório estes arquivos:
   - `index.html`
   - `README.md`
   - `vercel.json`
   - `netlify.toml`
   - `.gitignore`
3. Fazer o primeiro commit
4. Publicar no GitHub
5. Conectar o repositório na Vercel
6. Publicar
7. Compartilhar a URL com o Luis

## Como publicar na Netlify
1. Criar um repositório com esta pasta
2. Subir os arquivos para o GitHub
3. Entrar na Netlify
4. Add new site > Import from Git
5. Build command: vazio
6. Publish directory: `.`
7. Deploy

## Como publicar no GitHub Pages
Opção simples:
1. Criar repositório
2. Enviar os arquivos desta pasta para a raiz do repositório
3. Em Settings > Pages
4. Source: `Deploy from a branch`
5. Branch: `main` / root
6. Salvar

## Observação importante
Os prompts em “Recentes” ficam no navegador de cada pessoa.
Para compartilhar prompts entre Roberto e Luis:
- exportar `.json`
- enviar o arquivo
- importar no app

## Próximos passos possíveis
- biblioteca compartilhada online
- favoritos
- tags
- login simples
- sincronização entre usuários
