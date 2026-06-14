# Hack the Gibson - Interactive 90s Hacker Simulation (PowerShell Version)
# Inspired by the movie Hackers (1995)

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

# Progress bar
for ($i = 0; $i -le 100; $i += 10) {
    $bar = "#" * ($i / 5) + " " * (20 - ($i / 5))
    Write-Host "`rProgress: [$bar] $i%" -NoNewline -ForegroundColor Green
    Start-Sleep -Milliseconds 200
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
        Write-Host "BINGO! Access Granted." -ForegroundColor Green
        Start-Sleep -Seconds 1
        break
    } else {
        Write-Host "ERR: Cookie Monster is eating your files! Try again." -ForegroundColor Red
        Start-Sleep -Seconds 1
    }
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
                [+] System Access: ROOT
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
