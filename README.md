<h1>🚀 COSMIC & Pop!_OS Custom Setup</h1>
<p align="left">
  <img src="https://img.shields.io/badge/-Pop!_OS-48B9C7?style=for-the-badge&logo=popos&logoColor=white" />
 <img src="https://img.shields.io/badge/-COSMIC-4B6BFB?style=for-the-badge&logo=system76&logoColor=white" />
  <img src="https://img.shields.io/badge/-Bash-121011?style=for-the-badge&logo=gnubash&logoColor=white" />
  <img src="https://img.shields.io/badge/Linux-000000?style=for-the-badge&logo=linux&logoColor=white" />
</p>

<p>
Automatize a substituição dos aplicativos padrão do sistema por alternativas mais produtivas, com correção de associações MIME e melhoria visual.
</p>

<hr>

<h2>⚡ Funcionalidades</h2>
<ul>
  <li>📁 Define o <strong>Nemo</strong> como gerenciador de arquivos padrão</li>
  <li>📦 Define o <strong>Ark</strong> como utilitário de compactação padrão</li>
  <li>🧩 Corrige associações MIME ignoradas pelo COSMIC</li>
  <li>🎯 Padroniza a abertura de diretórios e arquivos compactados</li>
  <li>🎨 Aplica tema de ícones moderno (<strong>Kora</strong>)</li>
</ul>

<hr>

<h2>💻 Instalação</h2>

<p>Crie o arquivo <code>setup.sh</code>:</p>

<pre>
#!/bin/bash

echo "📦 Atualizando sistema..."
sudo apt update

echo "📦 Instalando aplicações..."
sudo apt install -y nemo ark kora-icon-theme

echo "⚙️ Configurando Nemo como padrão..."
xdg-mime default nemo.desktop inode/directory

echo "⚙️ Configurando Ark como padrão..."
xdg-mime default org.kde.ark.desktop application/zip
xdg-mime default org.kde.ark.desktop application/x-rar

echo "🎨 Tema Kora instalado (aplicar manualmente)"

echo "🔄 Reiniciando serviços..."
killall nautilus 2>/dev/null

echo "✅ Setup finalizado com sucesso!"
</pre>

<hr>

<h2>▶️ Execução</h2>

<pre>
chmod +x setup.sh
./setup.sh
</pre>

<hr>

<h2>🎨 Aplicar tema de ícones (Kora)</h2>

<ol>
  <li>Abrir <strong>Gnome Tweaks</strong></li>
  <li>Acessar <strong>Aparência</strong></li>
  <li>Selecionar <strong>Kora</strong> em Ícones</li>
</ol>

<hr>

<h2>📌 Pós-configuração</h2>

<ul>
  <li>Remover o gerenciador de arquivos antigo da Dock</li>
  <li>Fixar o <strong>Nemo</strong> manualmente</li>
  <li>Reiniciar a sessão (logout/login)</li>
</ul>

<hr>

<h2>♻️ Reversão (opcional)</h2>

<pre>
xdg-mime default org.gnome.Nautilus.desktop inode/directory
xdg-mime default file-roller.desktop application/zip
</pre>

<hr>

<h2>⚠️ Observações</h2>

<ul>
  <li>O COSMIC pode sobrescrever configurações após atualizações</li>
  <li>Recomenda-se reexecutar o script se necessário</li>
</ul>

<hr>

<h2>🎯 Resultado esperado</h2>

<ul>
  <li>Interface mais limpa e consistente</li>
  <li>Melhor experiência com gerenciamento de arquivos</li>
  <li>Integração visual aprimorada com o sistema</li>
</ul>

<hr>

<p align="center">
🐧 Setup focado em Linux
</p>
