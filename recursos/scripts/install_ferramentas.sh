#!/bin/bash

echo "Escolha um pacote para instalar as ferramentas CTF:"
echo "1. Pacote Básico: Ferramentas leves e essenciais para CTFs simples."
echo "   - nmap: Varredura de rede."
echo "   - sqlmap: Injeção SQL automática."
echo "   - gdb: Depurador para binários."
echo ""
echo "2. Pacote Pesado: Ferramentas robustas e mais complexas."
echo "   - burpsuite: Ferramenta para testes de segurança em aplicações web."
echo "   - metasploit-framework: Framework de testes de penetração."
echo "   - wireshark: Analisador de tráfego de rede."
echo ""
echo "3. Pacote Completo: Inclui todas as ferramentas dos pacotes básico e pesado."
echo ""

read -p "Digite o número do pacote que deseja instalar (1/2/3): " pacote

case $pacote in
    1)
        echo "Instalando Pacote Básico..."
        sudo apt install -y nmap sqlmap gdb
        ;;
    2)
        echo "Instalando Pacote Pesado..."
        sudo apt install -y burpsuite metasploit-framework wireshark
        ;;
    3)
        echo "Instalando Pacote Completo..."
        sudo apt install -y nmap sqlmap gdb burpsuite metasploit-framework wireshark
        ;;
    *)
        echo "Opção inválida! Por favor, escolha 1, 2 ou 3."
        ;;
esac

echo "Instalação concluída!"
##Machine##