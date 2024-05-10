# Wireshark is a program used for packet sniffing and analysis.
# See https://www.wireshark.org/
# IMPORTANT: Wireshark requires the WinPCAP driver for 2.x and NPCAP driver for 3.x to be installed. This driver an NOT be installed automatically except for the paid OEM/enterprise version. This installation routine only installs Wireshar, not the required driver (!)
# Npcap: https://nmap.org/npcap/
# AAG - Latest Wireshark and only AMD64/win64 support.

wireshark:
  latest:
    full_name: 'Wireshark'
    installer:   'https://www.wireshark.org/download/win64/Wireshark-latest-x64.msi'
    uninstaller: 'https://www.wireshark.org/download/win64/Wireshark-latest-x64.msi'
    install_flags:   '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
