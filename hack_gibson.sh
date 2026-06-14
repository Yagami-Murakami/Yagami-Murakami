#!/bin/bash
# Hack the Gibson - Interactive 90s Hacker Simulation (Extended Edition)
# Inspired by the movie Hackers (1995) + Retro Arcade Easter Eggs

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
sleep 0.8
echo -e "ESTABLISHING SECURE TUNNEL OVER DIAL-UP (14.4k Baud)..."
sleep 1
echo -e "CONNECTING TO: 127.0.0.1:23..."
sleep 0.5
echo -e "CARRIER DETECTED. HANDSHAKE SUCCESSFUL.${NC}"
sleep 0.5

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
sleep 0.8

type_text "yagami@gibson:~$ ./bypass_firewall.sh"
sleep 0.3
type_text "[*] Injecting payload into Ellingson Database..." 0.03
type_text "[*] Intercepting data garbage collection..." 0.03
type_text "[*] Flooding port 80 with SYN requests..." 0.02

# PAC-MAN Progress bar
for i in {1..20}; do
    pct=$((i * 5))
    bar=""
    for ((j=1; j<i; j++)); do bar="${bar}="; done
    
    if [ $pct -lt 100 ]; then
        if [ $((i % 2)) -eq 0 ]; then
            bar="${bar}ᗧ" # Pacman mouth open
        else
            bar="${bar}o" # Pacman mouth closed
        fi
    else
        bar="${bar}█"
    fi
    
    for ((j=i; j<20; j++)); do bar="${bar}•"; done
    echo -ne "Bypassing: [${bar}] ${pct}%\r"
    sleep 0.1
done
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
    echo -n -e "${AMBER}Enter command to stop Cookie Monster (Tip: Give him what he wants): ${NC}"
    read -r user_input
    user_input_lower=$(echo "$user_input" | tr '[:upper:]' '[:lower:]')
    if [ "$user_input_lower" = "cookie" ]; then
        echo -e "${BRIGHT_GREEN}BINGO! Cookie Monster Pacified. Proceeding...${NC}"
        sleep 1
        break
    else
        echo -e "${RED}ERR: Cookie Monster is eating your files! Try again.${NC}"
        sleep 0.5
    fi
done

# Hacker Crew Sync up
clear
echo -e "${CYAN}========================================================"
echo -e "         OPERATING SYSTEM OVERRIDE - COHORT SYNC-UP     "
echo -e "========================================================${NC}"
sleep 0.5
type_text "[+] Syncing cyberdecks with network cohort..." 0.02
sleep 0.3
echo -e "${GREEN}[OK] Cereal Killer:${NC} Sniffing telephone switches..."
sleep 0.4
echo -e "${GREEN}[OK] Lord Nikon:${NC} Recording memory locations (3D Gibson stack)..."
sleep 0.4
echo -e "${GREEN}[OK] Phantom Phreak:${NC} Phreaking telephone trunk lines..."
sleep 0.4
echo -e "${GREEN}[OK] Acid Burn:${NC} Injecting custom rootkit payload..."
sleep 0.6
echo -e "${BRIGHT_GREEN}[+] ALL OPERATORS ALIGNED. PREPARING FOR FINAL EXPLOIT...${NC}"
sleep 1.2

# Da Vinci Ballast challenge
clear
echo -e "${BRIGHT_RED}"
cat << "EOF"
 ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️
 ☣️                                                         ☣️
 ☣️        DA VINCI VIRUS DETECTED IN MAIN TANKER HUB       ☣️
 ☣️            FLOODING BALLAST TANKS ACTIVE                ☣️
 ☣️                                                         ☣️
 ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️
EOF
echo -e "${NC}"
sleep 0.5
type_text "WARNING: The Da Vinci virus is capsizing the oil tankers!" 0.03
type_text "You must VENT the ballast relief valves to stabilize the fleet!" 0.03
echo ""

tilt=12
while [ $tilt -lt 45 ]; do
    echo -e "${RED}[!] Tanker tilt angle: ${tilt}° [WARNING: Capsizes at 45°]${NC}"
    echo -n -e "${AMBER}Type 'VENT' to open relief valves: ${NC}"
    read -r user_command
    user_command_upper=$(echo "$user_command" | tr '[:lower:]' '[:upper:]')
    if [ "$user_command_upper" = "VENT" ]; then
        echo -e "${BRIGHT_GREEN}Venting ballast tanks... Successfully stabilized!${NC}"
        sleep 1
        break
    else
        tilt=$((tilt + 11))
        echo -e "${RED}Bypass failed! Tilt angle increasing...${NC}"
        sleep 0.5
    fi
done

if [ $tilt -ge 45 ]; then
    echo -e "${BRIGHT_RED}\n[-] CRITICAL FAILURE: TANKER CAPSIZED. OIL SPILL DETECTED."
    echo -e "Gibson locked down. Connection severed.${NC}"
    exit 1
fi

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
                [+] System Access: ROOT (GIBSON MAINFRAME)
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
