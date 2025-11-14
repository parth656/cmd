echo "=== Installing Docker ==="
sudo dnf install -y dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install -y docker-ce docker-compose-plugin
sudo systemctl enable --now docker
sudo usermod -aG docker $USER

echo "=== Enabling RPM Fusion ==="
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

echo "=== Installing Additional Codecs ==="
sudo dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-libav

echo "=== Performance Optimization ==="
echo "vm.swappiness=10" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
# Add Docker (for deployment)
sudo dnf install -y dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install -y docker-ce docker-ce-cli containerd.io
sudo systemctl enable --now docker
sudo usermod -aG docker $USER

# Add RPM Fusion for multimedia
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Add performance tweaks
echo "vm.swappiness=10" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
