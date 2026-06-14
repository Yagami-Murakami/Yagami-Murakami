# Hack the Gibson - Interactive 90s Hacker Simulation (Extended PowerShell Edition)
# Inspired by the movie Hackers (1995) + Retro Arcade Easter Eggs

Clear-Host

# Helper for typing effect
function Write-TypeEffect {
    param (
        [string]$Text,
        [int]$Delay = 30
    )
    for ($i = 0; $i -lt $Text.Length; $i++) {
        Write-Host $Text[$i] -NoNewline -ForegroundColor Green
        Start-Sleep -Milliseconds $Delay
    }
    Write-Host ""
}

Write-Host "INITIATING CONNECTION TO GIBSON MAINFRAME..." -ForegroundColor Green
Start-Sleep -Seconds 1
Write-Host "ESTABLISHING SECURE TUNNEL OVER DIAL-UP (14.4k Baud)..." -ForegroundColor Green
Start-Sleep -Seconds 1.5
Write-Host "CONNECTING TO: 127.0.0.1:23..." -ForegroundColor Green
Start-Sleep -Seconds 1
Write-Host "CARRIER DETECTED. HANDSHAKE SUCCESSFUL.`n" -ForegroundColor Green
Start-Sleep -Seconds 1

# ASCII Art
Write-Host @"
  ________ .___ __________  _________ ________   _______   
 /  _____/ |   |\______   \/   _____/ \_____  \  \      \  
/   \  ___ |   | |    |  _/\_____  \   /   |   \ /   |   \ 
\    \_\  \|   | |    |   \/        \ /    |    /    |    \
 \______  /|___| |______  /_______  / \_______  \____|__  /
        \/              \/        \/          \/        \/ 
                 E L L I N G S O N  M I N E R A L  C O R P
"@ -ForegroundColor Green
Start-Sleep -Seconds 1

Write-TypeEffect "yagami@gibson:~$ ./bypass_firewall.sh"
Start-Sleep -Seconds 1
Write-TypeEffect "[*] Injecting payload into Ellingson Database..." 40
Write-TypeEffect "[*] Intercepting data garbage collection..." 40
Write-TypeEffect "[*] Flooding port 80 with SYN requests..." 20

# Pac-Man Progress bar
for ($i = 1; $i -le 20; $i++) {
    $pct = $i * 5
    $eaten = "=" * ($i - 1)
    $pacman = if ($pct -eq 100) { "█" } elseif ($i % 2 -eq 0) { "ᗧ" } else { "o" }
    $dots = "•" * (20 - $i)
    Write-Host "`rBypassing: [$eaten$pacman$dots] $pct%" -NoNewline -ForegroundColor Green
    Start-Sleep -Milliseconds 120
}
Write-Host ""`n
Start-Sleep -Seconds 1

# Trigger the Cookie Monster
Clear-Host
Write-Host @"
  =========================================
  !!          COOKIE MONSTER v1.0        !!
  =========================================

         ( \  / )
          ) () (
         (  --  )    I WANT A COOKIE!
          \    /     GIVE ME A COOKIE!
           \  /
            \/
"@ -ForegroundColor Red

while ($true) {
    $userInput = Read-Host -Prompt "Enter command to stop Cookie Monster (Tip: Give him what he wants)"
    if ($userInput.ToLower() -eq "cookie") {
        Write-Host "BINGO! Cookie Monster Pacified. Proceeding..." -ForegroundColor Green
        Start-Sleep -Seconds 1
        break
    } else {
        Write-Host "ERR: Cookie Monster is eating your files! Try again." -ForegroundColor Red
        Start-Sleep -Seconds 1
    }
}

# Hacker Crew Sync up
Clear-Host
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "         OPERATING SYSTEM OVERRIDE - COHORT SYNC-UP     " -ForegroundColor Cyan
Write-Host "========================================================" -ForegroundColor Cyan
Start-Sleep -Seconds 1
Write-TypeEffect "[+] Syncing cyberdecks with network cohort..." 20
Start-Sleep -Seconds 1
Write-Host "[OK] Cereal Killer: Sniffing telephone switches..." -ForegroundColor Green
Start-Sleep -Milliseconds 400
Write-Host "[OK] Lord Nikon: Recording memory locations (3D Gibson stack)..." -ForegroundColor Green
Start-Sleep -Milliseconds 400
Write-Host "[OK] Phantom Phreak: Phreaking telephone trunk lines..." -ForegroundColor Green
Start-Sleep -Milliseconds 400
Write-Host "[OK] Acid Burn: Injecting custom rootkit payload..." -ForegroundColor Green
Start-Sleep -Milliseconds 600
Write-Host "[+] ALL OPERATORS ALIGNED. PREPARING FOR FINAL EXPLOIT...`n" -ForegroundColor Green
Start-Sleep -Seconds 1.5

# Da Vinci Ballast challenge
Clear-Host
Write-Host @"
 ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️
 ☣️                                                         ☣️
 ☣️        DA VINCI VIRUS DETECTED IN MAIN TANKER HUB       ☣️
 ☣️            FLOODING BALLAST TANKS ACTIVE                ☣️
 ☣️                                                         ☣️
 ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️  ☣️
"@ -ForegroundColor Red
Start-Sleep -Seconds 1
Write-TypeEffect "WARNING: The Da Vinci virus is capsizing the oil tankers!" 30
Write-TypeEffect "You must VENT the ballast relief valves to stabilize the fleet!" 30
Write-Host ""

$tilt = 12
while ($tilt -lt 45) {
    Write-Host "[!] Tanker tilt angle: $tilt° [WARNING: Capsizes at 45°]" -ForegroundColor Red
    $userCommand = Read-Host -Prompt "Type 'VENT' to open relief valves"
    if ($userCommand.ToUpper() -eq "VENT") {
        Write-Host "Venting ballast tanks... Successfully stabilized!" -ForegroundColor Green
        Start-Sleep -Seconds 1
        break
    } else {
        $tilt += 11
        Write-Host "Bypass failed! Tilt angle increasing..." -ForegroundColor Red
        Start-Sleep -Seconds 1
    }
}

if ($tilt -ge 45) {
    Write-Host "`n[-] CRITICAL FAILURE: TANKER CAPSIZED. OIL SPILL DETECTED." -ForegroundColor Red
    Write-Host "Gibson locked down. Connection severed." -ForegroundColor Red
    Exit
}

# Flashing effect
for ($i = 0; $i -lt 3; $i++) {
    Clear-Host
    Write-Host @"
################################################################
!!                      SYSTEM OVERLOAD                       !!
!!                 GIBSON MAINFRAME COMPROMISED               !!
################################################################
"@ -ForegroundColor Red
    Start-Sleep -Milliseconds 200
    Clear-Host
    Start-Sleep -Milliseconds 100
}

Clear-Host
Write-Host @"
################################################################
#                  H A C K   T H E   P L A N E T               #
################################################################

                 CONNECTED TO USER: YAGAMI-MURAKAMI
                 
                [+] Decryption Keys: VALID
                [+] System Access: ROOT (GIBSON MAINFRAME)
                [+] Cyberdeck Battery: 100%
                
                OPERATOR PROFILE LOADING...
"@ -ForegroundColor Green

Write-TypeEffect "========================================================" 10
Write-TypeEffect "  NAME: YAGAMI MURAKAMI" 20
Write-TypeEffect "  SPECIALTIES: Cyber Security, Kernel Exploits, Fullstack" 20
Write-TypeEffect "  STATUS: ACTIVE RUNNER" 20
Write-TypeEffect "  WEB: github.com/Yagami-Murakami" 20
Write-TypeEffect "========================================================" 10

Write-Host ""
Read-Host -Prompt "Press Enter to disconnect..."
Write-Host "Goodbye, Operator." -ForegroundColor Green
