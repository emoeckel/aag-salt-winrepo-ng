# Wireshark is a program used for packet sniffing and analysis.
# See https://www.wireshark.org/
# IMPORTANT: Wireshark requires the WinPCAP driver for 2.x and NPCAP driver for 3.x to be installed. This driver an NOT be installed automatically except for the paid OEM/enterprise version. This installation routine only installs Wireshar, not the required driver (!)
# Npcap: https://nmap.org/npcap/
# AAG - Latest Wireshark and only AMD64/win64 support.

{% set source_path = 'https://2.na.dl.wireshark.org/win64/all-versions' %}
{% set msiVersions = [
  '4.2.4',
  '4.1.0',
  '3.2.2', '3.2.1', '3.2.0',
  '3.1.1', '3.1.0',
  '3.0.9', '3.0.8', '3.0.7', '3.0.6', '3.0.5', '3.0.4', '3.0.3', '3.0.2', '3.0.1', '3.0.0',
  '2.9.0',
  '2.6.15', '2.6.14', '2.6.13', '2.6.12', '2.6.11', '2.6.10', '2.6.9', '2.6.8', '2.6.7', '2.6.6', '2.6.5', '2.6.4', '2.6.3', '2.6.2', '2.6.1', '2.6.0',
  '2.5.1', '2.5.0',
  '2.4.16', '2.4.15', '2.4.14', '2.4.13', '2.4.12', '2.4.11', '2.4.10', '2.4.9', '2.4.8', '2.4.7', '2.4.6', '2.4.5', '2.4.4', '2.4.3', '2.4.2', '2.4.1', '2.4.0'
] %}

wireshark:
  {% for version in msiVersions %}
  '{{ version }}.0':
    full_name: 'Wireshark'
    installer:   '{{source_path}}/Wireshark-latest-x64.msi'
    uninstaller: '{{source_path}}/Wireshark-latest-x64.msi'
    install_flags:   '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
