#!/bin/bash
# Hack the Gibson - Interactive 90s Hacker Simulation
# Inspired by the movie Hackers (1995)

# Colors
GREEN='\033[0;32m'
BRIGHT_GREEN='\033[1;32m'
RED='\033[0;31m'
BRIGHT_RED='\033[1;31m'
AMBER='\033[0;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

clear

# Typing effect function
type_text() {
    text="$1"
    delay="$2"
    if [ -z "$delay" ]; then
        delay=0.03
    fi
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep $delay
    done
    echo ""
}

# Play sound / blink effect simulation
blink_alert() {
    for i in {1..3}; do
        clear
        echo -e "${BRIGHT_RED}"
        cat << "EOF"
################################################################
!!                      SYSTEM OVERLOAD                       !!
!!                 GIBSON MAINFRAME COMPROMISED               !!
################################################################
EOF
        echo -e "${NC}"
        sleep 0.2
        clear
        sleep 0.1
    done
}

echo -e "${GREEN}INITIATING CONNECTION TO GIBSON MAINFRAME..."
sleep 1
echo -e "ESTABLISHING SECURE TUNNEL OVER DIAL-UP (14.4k Baud)..."
sleep 1.5
echo -e "CONNECTING TO: 127.0.0.1:23..."
sleep 0.8
echo -e "CARRIER DETECTED. HANDSHAKE SUCCESSFUL.${NC}"
sleep 1

# ASCII Art
echo -e "${BRIGHT_GREEN}"
cat << "EOF"
  ________ .___ __________  _________ ________   _______   
 /  _____/ |   |\______   \/   _____/ \_____  \  \      \  
/   \  ___ |   | |    |  _/\_____  \   /   |   \ /   |   \ 
\    \_\  \|   | |    |   \/        \ /    |    /    |    \
 \______  /|___| |______  /_______  / \_______  \____|__  /
        \/              \/        \/          \/        \/ 
                 E L L I N G S O N  M I N E R A L  C O R P
EOF
echo -e "${NC}"
sleep 1

type_text "yagami@gibson:~$ ./bypass_firewall.sh"
sleep 0.5
type_text "[*] Injecting payload into Ellingson Database..." 0.04
type_text "[*] Intercepting data garbage collection..." 0.04
type_text "[*] Flooding port 80 with SYN requests..." 0.02

# Progress bar
echo -ne 'Progress: [░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░] 0%\r'
sleep 0.5
echo -ne 'Progress: [████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░] 20%\r'
sleep 0.4
echo -ne 'Progress: [████████████████████░░░░░░░░░░░░░░░░░░░░] 50%\r'
sleep 0.6
echo -ne 'Progress: [████████████████████████████████░░░░░░░░] 80%\r'
sleep 0.3
echo -ne 'Progress: [████████████████████████████████████████] 100%\r'
echo -ne '\n'
sleep 0.5

# Trigger the Cookie Monster
clear
echo -e "${BRIGHT_RED}"
cat << "EOF"
  =========================================
  !!          COOKIE MONSTER v1.0        !!
  =========================================

         ( \  / )
          ) () (
         (  --  )    I WANT A COOKIE!
          \    /     GIVE ME A COOKIE!
           \  /
            \/
EOF
echo -e "${NC}"

while true; do
    echo -n -e "${AMBER}Enter command to stop Cookie Monster: ${NC}"
    read user_input
    user_input_lower=$(echo "$user_input" | tr '[:upper:]' '[:lower:]')
    if [ "$user_input_lower" = "cookie" ]; then
        echo -e "${BRIGHT_GREEN}BINGO! Access Granted.${NC}"
        sleep 1
        break
    else
        echo -e "${RED}ERR: Cookie Monster is eating your files! Try again. (Tip: Give him what he wants)${NC}"
        sleep 0.5
    fi
done

clear
blink_alert

clear
echo -e "${BRIGHT_GREEN}"
cat << "EOF"
################################################################
#                  H A C K   T H E   P L A N E T               #
################################################################

                 CONNECTED TO USER: YAGAMI-MURAKAMI
                 
                [+] Decryption Keys: VALID
                [+] System Access: ROOT
                [+] Cyberdeck Battery: 100%
                
                OPERATOR PROFILE LOADING...
EOF
echo -e "${NC}"

type_text "========================================================" 0.01
type_text "  NAME: YAGAMI MURAKAMI" 0.02
type_text "  SPECIALTIES: Cyber Security, Kernel Exploits, Fullstack" 0.02
type_text "  STATUS: ACTIVE RUNNER" 0.02
type_text "  WEB: github.com/Yagami-Murakami" 0.02
type_text "========================================================" 0.01

echo ""
echo -e "${AMBER}Press Enter key to disconnect...${NC}"
read -r
echo -e "${GREEN}Goodbye, Operator.${NC}"
