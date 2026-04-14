
   <h1>COSMIC & Pop!_OS Custom Setup</h1>
    <p>Script de automação para substituir os aplicativos padrão do sistema por alternativas mais robustas e produtivas.</p>
    <h2>🚀 O que este projeto faz?</h2>
    <ul>
        <li>Define o <strong>Nemo</strong> como gerenciador de arquivos padrão.</li>
        <li>Define o <strong>Ark</strong> como utilitário de compressão padrão.</li>
        <li>Corrige associações MIME que o ambiente COSMIC costuma ignorar.</li>
    </ul>
    <h2>💻 Script de Instalação</h2>
    <p>Copie o código abaixo e salve como <code>setup.sh</code>:</p>
    <pre>

  #!/bin/bash
# Definindo Nemo e Ark como padrão
sudo apt update && sudo apt install -y nemo ark
xdg-mime default nemo.desktop inode/directory
xdg-mime default org.kde.ark.desktop application/zip application/x-rar
echo "✅ Apps configurados!"
    </pre>

   <h2>🎨 Biblioteca de Ícones (Papirus)</h2>
    <p>Para o Nemo e o Ark ficarem com um visual moderno, instale o tema de ícones Papirus:</p>
    <div class="icon-box">
        <code>sudo add-apt-repository ppa:papirus/papirus</code><br>
        <code>sudo apt update && sudo apt install papirus-icon-theme</code>
    </div>

   <h2>🛠 Como Aplicar</h2>
    <ol>
        <li>Abra as <strong>Configurações do COSMIC</strong> ou <strong>Gnome Tweaks</strong>.</li>
        <li>Vá até a aba <strong>Aparência</strong>.</li>
        <li>Em <strong>Ícones</strong>, selecione <strong>Papirus</strong>.</li>
        <li>Desafixe o gerenciador de arquivos antigo da Dock e fixe o Nemo.</li>
    </ol>

   <a href="#" class="btn">⭐ Star no GitHub</a>
</div>

</body>
</html>
