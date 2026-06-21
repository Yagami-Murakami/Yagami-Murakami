# NES Emulator JS Puro v11

Correção focada no bug visual do Super Mario Bros após a fase funcionar.

## Problema corrigido

Na v10 o jogo passou a rodar, mas o HUD/status bar do topo ficou quebrado.

O Super Mario Bros usa **split scroll**:

- topo da tela: HUD parado
- parte inferior: cenário com scroll

Como a PPU ainda é simplificada e não é cycle-accurate, o scroll do cenário estava sendo aplicado também no topo, quebrando o texto do HUD.

## Melhorias da v11

- Trava o scroll das primeiras 32 linhas em jogos Mapper 0/NROM como Super Mario Bros
- Mantém o cenário com scroll normal abaixo do HUD
- Ajusta o fallback de sprite zero hit para começar após a área do HUD
- Mantém:
  - APU v7
  - PPU por scanline
  - controles corrigidos
  - suporte Mapper 0 e Mapper 4/MMC3 experimental

## Como rodar

```bash
python3 -m http.server 8080
```

Abra:

```text
http://localhost:8080
```

Carregue a ROM e clique em **Rodar**.
