<h1>🚀 COSMIC & Pop!_OS Custom Setup</h1>

<p>
Script de automação para substituir os aplicativos padrão do sistema por alternativas mais robustas e produtivas.
</p>

<h2>⚡ O que este projeto faz?</h2>
<ul>
  <li>Define o <strong>Nemo</strong> como gerenciador de arquivos padrão.</li>
  <li>Define o <strong>Ark</strong> como utilitário de compressão padrão.</li>
  <li>Corrige associações MIME ignoradas pelo COSMIC.</li>
  <li>Padroniza comportamento de abertura de diretórios e arquivos compactados.</li>
</ul>

<h2>💻 Script de Instalação</h2>

<p>Crie o arquivo <code>setup.sh</code>:</p>

<pre>
#!/bin/bash

echo "📦 Atualizando sistema..."
sudo apt update

echo "📦 Instalando apps..."
sudo apt install -y nemo ark

echo "⚙️ Configurando Nemo como padrão..."
xdg-mime default nemo.desktop inode/directory
gsettings set org.gnome.desktop.background show-desktop-icons false

echo "⚙️ Configurando Ark como padrão..."
xdg-mime default org.kde.ark.desktop application/zip
xdg-mime default org.kde.ark.desktop application/x-rar

echo "🔄 Reiniciando serviços..."
killall nautilus 2>/dev/null

echo "✅ Setup finalizado com sucesso!"
</pre>

<h2>▶️ Como executar</h2>

<pre>
chmod +x setup.sh
./setup.sh
</pre>

<h2>🎨 Tema de Ícones (Papirus)</h2>

<p>Instale para um visual mais moderno:</p>

<pre>
sudo add-apt-repository ppa:papirus/papirus -y
sudo apt update
sudo apt install papirus-icon-theme -y
</pre>

<h2>🛠 Aplicar visual</h2>

<ol>
  <li>Abrir <strong>Gnome Tweaks</strong></li>
  <li>Ir em <strong>Aparência</strong></li>
  <li>Selecionar <strong>Papirus</strong> em Ícones</li>
</ol>

<h2>📌 Pós-instalação (IMPORTANTE)</h2>

<ul>
  <li>Desafixar o gerenciador antigo da Dock</li>
  <li>Fixar o Nemo manualmente</li>
  <li>Reiniciar sessão (logout/login)</li>
</ul>

<h2>♻️ Como reverter</h2>

<pre>
xdg-mime default org.gnome.Nautilus.desktop inode/directory
xdg-mime default file-roller.desktop application/zip
</pre>

<h2>⚠️ Observações</h2>

<ul>
  <li>O COSMIC pode sobrescrever associações após atualizações</li>
  <li>Recomenda-se rodar o script novamente se necessário</li>
</ul>

<hr>

<p align="center">
  💻 Feito para produtividade no Linux
</p>

<a href="#" class="btn">⭐ Star no GitHub</a>
