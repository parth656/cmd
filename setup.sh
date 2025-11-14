cat > setup.sh << 'EOF'
#!/bin/bash

echo "=== Updating System ==="
sudo dnf update -y

echo "=== Installing System Essentials ==="
sudo dnf install -y git curl wget unzip zip gcc gcc-c++ make cmake

echo "=== Installing Terminal Tools ==="
sudo dnf install -y zsh btop fastfetch

echo "=== Installing VS Code (Native) ==="
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf install -y code

echo "=== Installing Flatpak Apps ==="
flatpak install -y flathub org.videolan.VLC
flatpak install -y flathub org.gnome.Extensions
flatpak install -y flathub io.github.notion.Notion
flatpak install -y flathub com.discordapp.Discord
flatpak install -y flathub md.obsidian.Obsidian
flatpak install -y flathub com.usebottles.bottles

echo "=== Installing Oh My Zsh ==="
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo "=== Installing Miniconda ==="
cd ~/Downloads
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda
export PATH="$HOME/miniconda/bin:$PATH"

echo "=== Initializing Conda ==="
$HOME/miniconda/bin/conda init bash
$HOME/miniconda/bin/conda init zsh

echo "=== Creating AI Environment ==="
$HOME/miniconda/bin/conda create -n ai python=3.11 -y

echo "=== Installing Python AI/ML Libraries ==="
$HOME/miniconda/envs/ai/bin/pip install numpy pandas matplotlib seaborn scikit-learn tensorflow torch torchvision torchaudio opencv-python mediapipe dlib transformers datasets librosa pydub ffmpeg-python jupyterlab notebook plotly pygame

echo "=== Installing Whisper + Speech Tools ==="
$HOME/miniconda/envs/ai/bin/pip install openai-whisper SpeechRecognition TTS edge-tts

echo "=== Installing FFmpeg ==="
sudo dnf install -y ffmpeg ffmpeg-devel

echo "=== Installing Web Tools (for Portfolio) ==="
sudo dnf install -y nodejs npm

echo "=== Installing 3D Web Libraries Globally ==="
npm install -g create-next-app

echo "=== Installing AI App UI Tools ==="
$HOME/miniconda/envs/ai/bin/pip install streamlit gradio flask fastapi uvicorn

echo "=== Creating Project Structure ==="
mkdir -p ~/Projects/drowsiness-detection
mkdir -p ~/Projects/speech-ai
mkdir -p ~/Projects/ai-music-recommender
mkdir -p ~/Projects/video-to-gif-ai
mkdir -p ~/Projects/ml-practice
mkdir -p ~/Projects/portfolio/utils

echo "=== Installing Docker ==="
sudo dnf install -y dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo systemctl enable --now docker
sudo usermod -aG docker $USER

echo "=== Enabling RPM Fusion ==="
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo "=== Installing Additional Codecs ==="
sudo dnf install -y gstreamer1-plugins-bad-free gstreamer1-plugins-good gstreamer1-plugins-base gstreamer1-libav

echo "=== Performance Optimization ==="
echo "vm.swappiness=10" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p

echo "=== Setup Completed Successfully! ==="
echo ""
echo "IMPORTANT: Please do the following:"
echo "1. Log out and log back in (or reboot) for Docker group to take effect"
echo "2. Open a new terminal for Zsh and Conda to work"
echo "3. Activate your AI environment with: conda activate ai"
echo "4. Your projects are in ~/Projects/"
echo ""
echo "Happy coding! 🚀"
EOF
