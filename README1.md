# 🚀 Fedora 43 AI/ML Development Setup Script

Automated setup script for Fedora 43 tailored for AI/ML development, speech processing, and web development workflows.

## 📋 What It Does

This script transforms a fresh Fedora 43 installation into a complete AI/ML development environment in one command.

### 🛠️ System Essentials
- Updates system packages
- Installs build tools (gcc, cmake, make)
- Sets up Zsh with Oh My Zsh
- Installs terminal utilities (btop, fastfetch)

### 🤖 AI/ML Environment
- **Miniconda** for Python environment management
- **Python 3.11** dedicated AI environment
- **Deep Learning**: TensorFlow, PyTorch (with GPU support)
- **Computer Vision**: OpenCV, MediaPipe, dlib
- **NLP**: Transformers, Hugging Face datasets
- **Audio Processing**: librosa, pydub, FFmpeg
- **Speech AI**: OpenAI Whisper, SpeechRecognition, TTS, edge-tts
- **Data Science**: NumPy, Pandas, Matplotlib, Seaborn, scikit-learn
- **Notebooks**: JupyterLab, Jupyter Notebook
- **Visualization**: Plotly, Pygame

### 🌐 Web Development
- Node.js & npm
- Next.js (create-next-app)
- Three.js for 3D graphics
- React Three Fiber & Drei

### 🎨 Applications (via Flatpak)
- **VS Code** - Code editor (native version)
- **VLC** - Media player
- **Notion** - Note-taking and productivity
- **Obsidian** - Knowledge management
- **Discord** - Communication
- **Bottles** - Windows app compatibility
- **GNOME Extensions** - Desktop customization

### 🐳 DevOps & Containers
- Docker with Docker Compose
- User added to docker group (no sudo required)

### 🎥 Multimedia
- FFmpeg with development libraries
- RPM Fusion repositories (free & nonfree)
- GStreamer plugins for video/audio codecs

### 🖥️ AI App Frameworks
- **Streamlit** - Quick ML app prototypes
- **Gradio** - ML model interfaces
- **Flask** - Lightweight web framework
- **FastAPI** - Modern API framework with Uvicorn

### ⚡ System Optimization
- Reduces swappiness to 10 (better performance on systems with sufficient RAM)
- Configures sysctl for optimal responsiveness

### 📁 Project Structure
Automatically creates organized directories:
```
~/Projects/
├── drowsiness-detection/
├── speech-ai/
├── ai-music-recommender/
├── video-to-gif-ai/
├── ml-practice/
└── portfolio/
    └── utils/
```

## 🚀 Usage

### Quick Start
```bash
# Download the script
wget https://raw.githubusercontent.com/YOUR_USERNAME/fedora-setup/main/setup.sh

# Make it executable
chmod +x setup.sh

# Run it
bash setup.sh
```

### Manual Installation
```bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/fedora-setup.git
cd fedora-setup

# Run the setup script
bash setup.sh
```

## ⚠️ Important Notes

1. **Reboot Required**: After installation, reboot your system for all changes (especially Docker group) to take effect
2. **Terminal Restart**: Open a new terminal for Zsh and Conda to work properly
3. **Activate AI Environment**: Use `conda activate ai` to enter your AI development environment
4. **Internet Connection**: Requires stable internet connection (downloads ~5-8 GB)
5. **Time**: Takes 20-40 minutes depending on internet speed

## 🔧 Post-Installation

### Activate AI Environment
```bash
conda activate ai
```

### Test Your Setup
```bash
# Test Python libraries
python -c "import torch; print(torch.__version__)"
python -c "import tensorflow as tf; print(tf.__version__)"
python -c "import cv2; print(cv2.__version__)"

# Test Docker
docker --version
docker run hello-world

# Test Node.js
node --version
npm --version
```

### Configure VS Code
Install recommended extensions:
- Python
- Pylance
- Jupyter
- Docker
- ESLint
- Prettier

## 📦 Installed Packages Summary

| Category | Tools |
|----------|-------|
| **AI/ML** | TensorFlow, PyTorch, scikit-learn, Transformers |
| **Vision** | OpenCV, MediaPipe, dlib |
| **Audio** | Whisper, librosa, pydub, FFmpeg |
| **Data** | NumPy, Pandas, Matplotlib, Seaborn |
| **Web** | Node.js, Next.js, Three.js |
| **UI** | Streamlit, Gradio, Flask, FastAPI |
| **DevOps** | Docker, Docker Compose |

## 🎯 Use Cases

Perfect for:
- 🧠 Machine Learning & Deep Learning projects
- 🎤 Speech recognition and synthesis applications
- 👁️ Computer vision projects (object detection, face recognition)
- 🎵 Audio processing and music AI
- 🌐 AI-powered web applications
- 📊 Data science and analysis
- 🎮 Game development with AI integration

## 🤝 Contributing

Feel free to fork this repository and customize it for your needs! Pull requests are welcome.

### Customization Ideas
- Add your preferred code editor
- Include additional AI libraries
- Add databases (PostgreSQL, MongoDB)
- Include cloud CLI tools (AWS, GCP, Azure)

## 📝 License

MIT License - Feel free to use and modify!

## 🐛 Troubleshooting

### Docker Permission Denied
```bash
# Add yourself to docker group
sudo usermod -aG docker $USER
# Then log out and log back in
```

### Conda Not Found
```bash
# Restart terminal or source bashrc
source ~/.bashrc
# Or for zsh
source ~/.zshrc
```

### VS Code Can't Find Python
```bash
# In VS Code, press Ctrl+Shift+P
# Type "Python: Select Interpreter"
# Choose the one from ~/miniconda/envs/ai/bin/python
```

## 📞 Support

For issues or questions:
- Open an issue on GitHub
- Check Fedora documentation: https://docs.fedoraproject.org/
- Conda documentation: https://docs.conda.io/

## ⭐ If This Helped You

Give it a star ⭐ and share it with fellow developers!

---

**Made with ❤️ for AI/ML developers on Fedora**
