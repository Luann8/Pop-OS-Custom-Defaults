#!/bin/bash

# =================================================================
# Script de Configuração de Aplicativos Padrão (Nemo & Ark)
# Autor: Luann (via Gemini)
# Descrição: Define Nemo como gerenciador de arquivos e Ark como 
#            gerenciador de arquivos comprimidos no POP!_OS/COSMIC.
# =================================================================

echo "🚀 Iniciando a configuração de aplicativos padrão..."

# 1. Instalação dos pacotes (caso não estejam instalados)
echo "📦 Verificando dependências..."
sudo apt update && sudo apt install -y nemo ark

# 2. Definindo o Nemo como gerenciador de arquivos padrão
echo "📂 Configurando Nemo como gerenciador de arquivos..."
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search

# 3. Definindo o Ark como padrão para arquivos comprimidos
echo "📚 Configurando Ark para arquivos compactados..."
FORMATS=(
    "application/zip"
    "application/x-rar"
    "application/x-7z-compressed"
    "application/x-tar"
    "application/x-bzip2"
    "application/x-gzip"
    "application/x-compressed-tar"
)

for fmt in "${FORMATS[@]}"; do
    xdg-mime default org.kde.ark.desktop "$fmt"
done

# 4. Atualizando o arquivo mimeapps.list manualmente para garantir compatibilidade com COSMIC
MIME_FILE="$HOME/.config/mimeapps.list"

if [ -f "$MIME_FILE" ]; then
    echo "📝 Ajustando $MIME_FILE..."
    # Remove entradas duplicadas para evitar conflitos antes de reinserir
    sed -i '/inode\/directory/d' "$MIME_FILE"
    sed -i '/application\/zip/d' "$MIME_FILE"
    
    # Insere as novas definições no topo da seção [Default Applications]
    sed -i '/\[Default Applications\]/a inode/directory=nemo.desktop\napplication/zip=org.kde.ark.desktop' "$MIME_FILE"
fi

# 5. Atualizando o banco de dados do sistema
echo "🔄 Atualizando banco de dados de atalhos..."
sudo update-desktop-database

echo "✅ Concluído! Reinicie sua sessão ou o gerenciador de arquivos para aplicar todas as mudanças."
echo "💡 Dica: Lembre-se de desafixar o ícone antigo da barra (Dock) e fixar o Nemo manualmente."
