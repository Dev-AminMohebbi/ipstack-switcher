# 🌐 IPStack Switcher - Global Edition

> A powerful, cross-distribution IPv4/IPv6 network stack management tool for Linux systems.

![Shell](https://img.shields.io/badge/Shell-Bash-blue)
![Status](https://img.shields.io/badge/status-active-success)
![Platform](https://img.shields.io/badge/platform-Linux-lightgrey)
![Version](https://img.shields.io/badge/version-1.0.1-green)

---

## 📦 What is IPStack Switcher?

**IPStack Switcher** is a comprehensive, enterprise-grade shell tool designed for system administrators, developers, and network engineers who need to manage IPv4/IPv6 network stacks across different Linux distributions.

### 🎯 Core Purpose
- **Network Stack Management**: Switch between IPv4-only, IPv6-only, or dual-stack configurations
- **Cross-Distribution Support**: Works seamlessly across Ubuntu, Debian, CentOS, RHEL, Fedora, Arch Linux, openSUSE, and Alpine
- **Production Ready**: Built with enterprise-level error handling, logging, and safety checks
- **System Integration**: Automatic detection of network managers, service systems, and distribution-specific configurations

### 🔧 Technical Architecture
The tool operates at the kernel level using `sysctl` parameters and integrates with various Linux network management systems:
- **Kernel Configuration**: Modifies `/proc/sys/net/ipv6/` parameters
- **Persistent Settings**: Creates distribution-specific configuration files in `/etc/sysctl.d/`
- **Service Integration**: Automatically detects and works with NetworkManager, systemd-networkd, and traditional networking services
- **Safety First**: Comprehensive validation, rollback capabilities, and non-destructive operations

---

## ⚙️ Features

### 🚀 Core Functionality
- **🔄 IPv4/IPv6 Stack Switching**: Seamlessly toggle between network stack configurations
- **🎛️ Interactive & CLI Modes**: Both guided interactive menu and command-line interface
- **🔍 Real-time Status Monitoring**: Live network stack analysis with detailed reporting
- **📊 System Information Display**: Comprehensive system and network configuration overview
- **🔧 Automatic Service Management**: Intelligent network service restart handling

### 🛡️ Advanced Features
- **🏗️ Cross-Distribution Architecture**: Universal compatibility across major Linux distributions
- **📝 Comprehensive Logging**: Timestamped logs with multiple severity levels
- **🔐 Security Hardening**: IPv6 security settings with sensible defaults
- **⚡ Zero Dependencies**: No external packages required beyond standard Linux utilities
- **🎨 Rich UI/UX**: Color-coded output with Unicode symbols for better readability

### 🌍 Distribution Support Matrix

| Distribution | Package Manager | Service Manager | Network Manager | Status |
|-------------|----------------|-----------------|-----------------|--------|
| Ubuntu 18.04+ | APT | systemd | NetworkManager | ✅ Fully Supported |
| Debian 9+ | APT | systemd | networking/NM | ✅ Fully Supported |
| CentOS 7+ | YUM/DNF | systemd | NetworkManager | ✅ Fully Supported |
| RHEL 7+ | YUM/DNF | systemd | NetworkManager | ✅ Fully Supported |
| Fedora 30+ | DNF | systemd | NetworkManager | ✅ Fully Supported |
| Arch Linux | Pacman | systemd | systemd-networkd | ✅ Fully Supported |
| openSUSE | Zypper | systemd | NetworkManager | ✅ Fully Supported |
| Alpine Linux | APK | OpenRC | networking | ✅ Fully Supported |

---

## 🧩 Installation

### 📥 Quick Install (Recommended)
```bash
# Clone the repository
git clone https://github.com/Dev-AminMohebbi/ipstack-switcher.git
cd ipstack-switcher

# Make installer executable and run
chmod +x install.sh
sudo ./install.sh
```

### 🔧 Manual Installation
```bash
# Download the script
wget https://raw.githubusercontent.com/Dev-AminMohebbi/ipstack-switcher/main/ipstack-switcher.sh

# Make executable
chmod +x ipstack-switcher.sh

# Install to system path
sudo cp ipstack-switcher.sh /usr/local/bin/ipstack-switcher

# Verify installation
ipstack-switcher version
```

### 📋 System Requirements
- **Operating System**: Linux (any major distribution)
- **Privileges**: Root/sudo access required
- **Dependencies**: bash, sysctl, ip (iproute2)
- **Disk Space**: < 1MB
- **RAM**: Minimal footprint

---

## 🚀 Usage

### 🎮 Interactive Mode (Recommended for Beginners)
```bash
sudo ipstack-switcher
```

**Interactive Menu Options:**
1. **IPv4 Only** - Disable IPv6 completely (recommended for legacy applications)
2. **Dual Stack** - Enable both IPv4 and IPv6 (modern standard)
3. **Reset to System Default** - Remove all custom configurations
4. **Refresh Status** - Reload current network state
5. **System Information** - Display detailed system diagnostics

### ⚡ Command Line Interface (Advanced Users)

#### Basic Operations
```bash
# Switch to IPv4-only mode
sudo ipstack-switcher ipv4-only

# Enable dual-stack (IPv4 + IPv6)
sudo ipstack-switcher dual-stack

# Reset to system defaults
sudo ipstack-switcher reset

# Check current status
sudo ipstack-switcher status
```

#### System Information & Diagnostics
```bash
# Show detailed system information
sudo ipstack-switcher info

# Display version information
sudo ipstack-switcher version

# Show help and usage
sudo ipstack-switcher help
```

#### Alternative Command Aliases
```bash
# Short commands
sudo ipstack-switcher v4      # IPv4-only mode
sudo ipstack-switcher v46     # Dual-stack mode
sudo ipstack-switcher stat    # Status check
```

### 📊 Understanding the Output

#### Status Display Example
```
═══════════════════════════════════════
 🌐 NETWORK STACK STATUS
═══════════════════════════════════════
 IPv4 Stack: ✓ ENABLED (3 addresses)
 IPv6 Stack: ✗ DISABLED
 Interfaces: 2 (excluding loopback)
 Config File: /etc/sysctl.d/99-disable-ipv6.conf
   └─ Configuration exists
═══════════════════════════════════════
```

#### System Information Display
```
═══════════════════════════════════════════════════════════════
 ℹ DETAILED SYSTEM INFORMATION
═══════════════════════════════════════════════════════════════
Operating System:
  Distribution: Ubuntu
  Version: 20.04
  Kernel: 5.4.0-74-generic
  Architecture: x86_64

System Management:
  Package Manager: apt
  Service Manager: systemd
  Network Manager: NetworkManager

Network Interfaces:
  eth0: UP
  wlan0: DOWN

IPv6 Kernel Parameters:
  disable_ipv6 (all): 1
  disable_ipv6 (default): 1
  disable_ipv6 (loopback): 1
═══════════════════════════════════════════════════════════════
```

---

## 🔧 Advanced Configuration

### 🎛️ Configuration Files Location
The tool creates distribution-specific configuration files:

```bash
# Most distributions (systemd-based)
/etc/sysctl.d/99-disable-ipv6.conf

# Manual verification
sudo sysctl net.ipv6.conf.all.disable_ipv6
```

### 🔐 Security Considerations

#### IPv6 Disabled Configuration
```ini
# IPv6 disabled by IPStack Switcher
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1

# Additional hardening options
net.ipv6.conf.all.accept_ra = 0
net.ipv6.conf.default.accept_ra = 0
net.ipv6.conf.all.accept_redirects = 0
net.ipv6.conf.default.accept_redirects = 0
```

#### IPv6 Enabled Configuration
```ini
# IPv6 enabled by IPStack Switcher
net.ipv6.conf.all.disable_ipv6 = 0
net.ipv6.conf.default.disable_ipv6 = 0
net.ipv6.conf.lo.disable_ipv6 = 0

# Security settings
net.ipv6.conf.all.accept_ra = 1
net.ipv6.conf.default.accept_ra = 1
net.ipv6.conf.all.accept_redirects = 0
net.ipv6.conf.default.accept_redirects = 0
net.ipv6.conf.all.forwarding = 0
net.ipv6.conf.default.forwarding = 0
```

### 🔄 Service Management
The tool automatically handles network service restarts based on your system:

- **NetworkManager**: `systemctl restart NetworkManager`
- **systemd-networkd**: `systemctl restart systemd-networkd`
- **Traditional networking**: `systemctl restart networking`

---

## 🛠️ Troubleshooting

### ❗ Common Issues

#### Issue: "Permission denied" error
**Solution:**
```bash
# Ensure you're running with sudo
sudo ipstack-switcher status
```

#### Issue: Changes don't take effect immediately
**Solution:**
```bash
# Some changes may require a reboot
sudo reboot

# Or try restarting network services manually
sudo systemctl restart NetworkManager
```

#### Issue: IPv6 still shows as enabled after disabling
**Cause:** Some applications cache network settings
**Solution:**
```bash
# Clear DNS cache and restart network
sudo systemctl flush-dns
sudo systemctl restart systemd-resolved
```

### 🔍 Debug Mode
Enable debug logging for troubleshooting:
```bash
DEBUG=1 sudo ipstack-switcher status
```

### 📝 Log Analysis
Check system logs for network-related issues:
```bash
# Check systemd journal
sudo journalctl -u NetworkManager -f

# Check sysctl parameters
sudo sysctl -a | grep ipv6
```

---

## 🧹 Uninstallation

### 🗑️ Complete Removal
```bash
# Run the uninstaller
sudo ./uninstall.sh

# Manual cleanup if needed
sudo rm -f /usr/local/bin/ipstack-switcher
sudo rm -f /etc/sysctl.d/99-disable-ipv6.conf
```

### 🔄 Reset to System Defaults
```bash
# Reset configuration without uninstalling
sudo ipstack-switcher reset
```

---

## 🌐 Internationalization & Localization

This project supports multiple languages for global accessibility:

### Available Languages
- **🇺🇸 English** - [README.en.md](languages/README.en.md)
- **🇮🇷 فارسی (Persian)** - [README.fa.md](languages/README.fa.md)
- **🇨🇳 中文 (Chinese)** - [README.zh.md](languages/README.zh.md)
- **🇯🇵 日本語 (Japanese)** - [README.ja.md](languages/README.ja.md)
- **🇷🇺 Русский (Russian)** - [README.ru.md](languages/README.ru.md)
- **🇰🇷 한국어 (Korean)** - [README.ko.md](languages/README.ko.md)

### Contributing Translations
We welcome community contributions for additional languages. Please follow our [Translation Guidelines](CONTRIBUTING.md#translations).

---

## 🛡️ License & Legal

**IPStack Switcher** is released under the [MIT License](LICENSE).

```
MIT License

Copyright (c) 2025 MohammadAmin Mohebbi Nourulddin Vand

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the “Software”), to deal
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in  
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE  
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER  
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,  
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN  
THE SOFTWARE.
```

---

## 🤝 Contributing

We welcome contributions from the community! Here's how you can help:

### 🎯 Areas We Need Help With
- **🌍 Translations**: Additional language support
- **🐧 Distribution Testing**: Verification on more Linux distributions
- **📚 Documentation**: Improvements and additions
- **🐛 Bug Reports**: Issue identification and reproduction
- **✨ Feature Requests**: New functionality suggestions

### 📋 Contribution Process
1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/amazing-feature`)
3. **Commit** your changes (`git commit -m 'Add some amazing feature'`)
4. **Push** to the branch (`git push origin feature/amazing-feature`)
5. **Open** a Pull Request

### 🔧 Development Setup
```bash
# Clone your fork
git clone https://github.com/your-username/ipstack-switcher.git
cd ipstack-switcher

# Create development environment
chmod +x ipstack-switcher.sh

# Test your changes
sudo ./ipstack-switcher.sh status
```

### 📝 Code Style Guidelines
- Follow POSIX shell scripting standards
- Use meaningful variable names
- Add comments for complex logic
- Test on multiple distributions
- Maintain backward compatibility

---

## 📞 Support & Community

### 💬 Getting Help
- **📋 Issues**: [GitHub Issues](https://github.com/Dev-AminMohebbi/ipstack-switcher/issues)
- **💡 Discussions**: [GitHub Discussions](https://github.com/Dev-AminMohebbi/ipstack-switcher/discussions)
- **📧 Email**: dev.aminmohebbi@gmail.com

### 🏷️ Reporting Bugs
When reporting bugs, please include:
- Linux distribution and version
- Kernel version (`uname -r`)
- Network manager type
- Complete error output
- Steps to reproduce

### 💡 Feature Requests
We love hearing your ideas! Please provide:
- Use case description
- Expected behavior
- Current limitations
- Potential implementation approach

---

## 🔮 Roadmap & Future Plans

### 🎯 Version 1.1 (Planned)
- **🖥️ GUI Interface**: GTK-based graphical interface
- **📊 Network Monitoring**: Real-time network statistics
- **🔧 Advanced Configuration**: Custom IPv6 address configuration
- **📱 Mobile Support**: Android Termux compatibility

### 🎯 Version 1.2 (Future)
- **☁️ Cloud Integration**: AWS/Azure network stack management
- **🐳 Container Support**: Docker network configuration
- **🔐 VPN Integration**: Automatic VPN stack switching
- **📈 Analytics**: Network performance metrics

---

## 🎉 Acknowledgments

### 👏 Special Thanks
- **Linux Kernel Team** - For the robust networking subsystem
- **systemd Project** - For modern Linux service management
- **NetworkManager Team** - For simplified network configuration
- **Open Source Community** - For continuous inspiration and support

### 🏆 Recognition
This project is built on the shoulders of giants in the open-source community. We acknowledge all the contributors and maintainers who make Linux networking possible.

---

## 💡 Pro Tips & Best Practices

### 🚀 Performance Optimization
```bash
# Create shell alias for quick access
echo 'alias ips="sudo ipstack-switcher"' >> ~/.bashrc
source ~/.bashrc

# Use it quickly
ips status
ips ipv4-only
```

### 🎯 Use Cases

#### 🔧 Development & Testing
```bash
# Test IPv4-only applications
ips ipv4-only
# Run your tests
ips dual-stack  # Restore when done
```

#### 🛡️ Security Hardening
```bash
# Disable IPv6 for security compliance
ips ipv4-only
ips status  # Verify configuration
```

#### 🌐 Network Troubleshooting
```bash
# Isolate IPv6-related issues
ips ipv4-only
# Test connectivity
ips dual-stack  # Re-enable for comparison
```

### 📚 Learning Resources
- **IPv6 Fundamentals**: [RFC 8200](https://tools.ietf.org/html/rfc8200)
- **Linux Networking**: [Linux Network Administrator's Guide](https://tldp.org/LDP/nag2/index.html)
- **systemd Network**: [systemd.network](https://www.freedesktop.org/software/systemd/man/systemd.network.html)

---

## 🔍 Technical Deep Dive

### 🏗️ Architecture Overview
```
┌─────────────────┐    ┌──────────────────┐    ┌─────────────────┐
│   CLI Interface │────│  Core Engine     │────│  System Layer   │
│                 │    │                  │    │                 │
│ • Interactive   │    │ • Detection      │    │ • sysctl        │
│ • Commands      │    │ • Validation     │    │ • Service Mgmt  │
│ • Help System   │    │ • Configuration  │    │ • File System   │
└─────────────────┘    └──────────────────┘    └─────────────────┘
```

### 🔧 Core Components

#### System Detection Engine
- Distribution identification via `/etc/os-release`
- Package manager detection
- Service manager identification
- Network manager discovery

#### Configuration Management
- Atomic configuration updates
- Rollback capabilities
- Validation and verification
- Cross-distribution compatibility

#### Network Service Integration
- Automatic service detection
- Intelligent restart handling
- State verification
- Error recovery

---

## 📈 Statistics & Impact

### 📊 Project Metrics
- **🎯 Supported Distributions**: 8+ major Linux distributions
- **🔧 Configuration Options**: 15+ network parameters managed
- **🛡️ Safety Checks**: 20+ validation points
- **🌍 Language Support**: 9 languages and growing

### 🎉 Community Impact
- **⭐ GitHub Stars**: Growing community support
- **🍴 Forks**: Active development community
- **🐛 Issues Resolved**: Continuous improvement
- **💡 Feature Requests**: Community-driven development

---

## 🏁 Conclusion

**IPStack Switcher** represents a comprehensive solution for IPv4/IPv6 network stack management across Linux distributions. Whether you're a system administrator managing production servers, a developer testing network-dependent applications, or a security professional implementing compliance requirements, this tool provides the reliability, flexibility, and ease-of-use you need.

### 🎯 Key Takeaways
- **Universal Compatibility**: Works across all major Linux distributions
- **Production Ready**: Enterprise-grade reliability and safety
- **User Friendly**: Both interactive and command-line interfaces
- **Community Driven**: Open source with active community support
- **Future Proof**: Regular updates and new feature development

---

### 🧠 Made with ❤️ for hackers, testers, developers, and system administrators 💻

**Happy Network Stack Switching!** 🌐✨

---

*Last updated: July 2025 | Version 1.0.1*
