<p align="center">
  <img src="assets/readme-banner.png" alt="SOLARPUNK: LAST LIGHT — Banner" width="100%" />
</p>

<h1 align="center">☀️ SOLARPUNK: LAST LIGHT</h1>

<p align="center">
  <strong>A 3D browser-based solarpunk survival-management game</strong><br/>
  <em>Defend the last dome city on Earth. Balance energy, ecosystem, and economy — or watch the light die.</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Engine-Three.js-049EF4?style=for-the-badge&logo=three.js&logoColor=white" />
  <img src="https://img.shields.io/badge/Build-Vite-646CFF?style=for-the-badge&logo=vite&logoColor=white" />
  <img src="https://img.shields.io/badge/Language-JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black" />
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" />
</p>

---

## 🌍 The Story

> *The year is 2187. Climate collapse has ravaged the planet. You are the guardian of humanity's final refuge — a solar-powered biodome sheltering the last ecosystem on Earth. By day you build, heal, and grow. By night, raiders come for what you protect.*

**Solarpunk: Last Light** is a 3D survival-management game that runs entirely in your browser. Built with **Three.js** and served via **Vite**, it blends real-time combat, base building, and resource management inside a beautifully rendered dome world.

---

## ✨ Features

| Feature | Description |
|---|---|
| 🎮 **Dual Camera Modes** | Switch between **First Person (FPS)** for immersive combat and **Third Person (RPG)** for strategic overview |
| 🌗 **Dynamic Day-Night Cycle** | Four phases — Dawn, Day, Dusk, Night — each with distinct gameplay and atmosphere |
| ⚔️ **Wave-Based Combat** | Defend against escalating waves of Grunts and Runners that attack at nightfall |
| 🏗️ **Base Building** | Construct **Power Plants**, **Defense Mechs**, and **Heal Zones** to fortify your dome |
| 🌳 **Ecosystem Management** | Heal damaged and dead trees to restore the ecosystem — let it collapse and it's game over |
| ⚡ **Energy Economy** | Manage energy generation vs. consumption; factories drain power while power plants restore it |
| 💰 **Credits System** | Earn credits by defeating enemies; spend them on buildings and upgrades |
| 🗺️ **Live Minimap** | Real-time minimap showing player position, trees, enemies, factories, and structures |
| 🔮 **Goddess Narrator** | A mysterious AI guide that whispers warnings and encouragement throughout your journey |
| 🎬 **Cinematic Intro** | Full video intro cutscene and animated main menu with live 3D preview |
| 🏔️ **Custom Terrain** | Blender-crafted GLB terrain with mountains, walkable surfaces, and collision detection |

---

## 🎮 Controls

| Key | Action |
|-----|--------|
| `W A S D` | Move |
| `Shift` | Sprint |
| `Space` | Jump |
| `E` | Toggle FPS mode / Hold to heal trees |
| `Escape` | Exit FPS mode / Cancel build |
| `1` | Select Power Plant |
| `2` | Select Defense Mech |
| `3` | Select Heal Zone |
| `Left Click` | Attack / Place building |

---

## 🚀 Getting Started

### Prerequisites

- [Node.js](https://nodejs.org/) (v18 or higher recommended)
- A modern browser with WebGL support (Chrome, Firefox, Edge)

### Installation

```bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/solarpunk-last-light.git
cd solarpunk-last-light

# Install dependencies
npm install

# Start the dev server
npm run dev
```

The game will be available at `http://localhost:5173/`

### Quick Start (Windows)

Double-click **`START-GAME.bat`** — it launches the Node server and opens the game in your default browser automatically.

---

## 🏗️ Project Structure

```
solarpunk-last-light/
├── index.html              # Main game page with HUD, menus, and overlays
├── style.css               # Complete UI stylesheet (glassmorphism, animations)
├── server.mjs              # Lightweight Node.js static file server
├── vite.config.js          # Vite build configuration
├── START-GAME.bat          # One-click Windows launcher
│
├── js/
│   ├── main.js             # Game entry point — SolarpunkGame class
│   └── game/
│       ├── GameState.js    # Central game state (energy, ecosystem, credits, waves)
│       ├── World.js        # 3D world generation (dome, terrain, structures, lighting)
│       ├── Player.js       # Player controller (movement, physics, combat)
│       ├── Camera.js       # Dual camera system (FPS + RPG modes)
│       ├── EnemySystem.js  # Enemy spawning, AI pathfinding, and wave management
│       ├── BuildSystem.js  # Building placement (power plants, mechs, heal zones)
│       ├── TreeSystem.js   # Tree ecosystem (health states, healing, visuals)
│       ├── EnergySystem.js # Energy generation and consumption
│       ├── EconomySystem.js# Credit economy and ecosystem decay
│       ├── DayNightSystem.js# Day-night cycle with phase transitions
│       ├── GoddessSystem.js# Narrative system — goddess whispers
│       └── UI.js           # HUD manager (bars, minimap, prompts, overlays)
│
├── assets/
│   ├── terrain/            # Blender terrain models (.blend, .glb)
│   ├── environment/        # City, factory, and mountain models
│   ├── intro/              # Intro cutscene video
│   ├── main-menu-bg.mp4   # Main menu background video
│   ├── main-menu-audio.mpeg# Menu ambient soundtrack
│   ├── mode-fps.jpeg       # FPS mode preview image
│   └── mode-tpp.jpeg       # TPP mode preview image
│
└── loading.mp4             # Loading screen background video
```

---

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| **[Three.js](https://threejs.org/)** `v0.160` | 3D rendering engine — scene, lighting, shadows, materials |
| **[Vite](https://vitejs.dev/)** `v5` | Lightning-fast dev server and build tool |
| **Vanilla JavaScript** | ES modules, zero framework overhead |
| **Blender** | Custom terrain and environment modeling |
| **HTML5 / CSS3** | Glassmorphic HUD with backdrop-filter, CSS animations, and custom fonts |

---

## 🎯 Game Mechanics

### Day Phase (Build & Heal)
- Explore the dome and repair damaged trees by holding **E**
- Construct Power Plants to restore energy generation
- Deploy Defense Mechs to auto-attack enemies during raids
- Plant Heal Zones to mass-restore nearby trees

### Night Phase (Defend)
- Enemy waves spawn from outside the dome perimeter
- **Grunts** — slow, tanky raiders that target energy stations
- **Runners** — fast, fragile attackers that rush the dome core
- Defeat enemies in melee combat to earn credits
- Mechs provide automated support fire

### Game Over Conditions
- ⚡ **Energy** drops to zero — the dome loses power
- 🌿 **Ecosystem** collapses — all plant life dies
- 🏭 **Factories** overrun — pollution overwhelms the dome

---

## 📸 Screenshots

> *Coming soon — gameplay screenshots and GIFs will be added here.*

---

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. **Fork** the repository
2. Create a **feature branch** (`git checkout -b feature/amazing-feature`)
3. **Commit** your changes (`git commit -m 'Add amazing feature'`)
4. **Push** to the branch (`git push origin feature/amazing-feature`)
5. Open a **Pull Request**

### Ideas for Contributions
- 🎨 New building types and upgrade trees
- 🎵 Sound effects and dynamic music system
- 🌐 Multiplayer co-op mode
- 📱 Mobile touch controls
- 🏆 Achievement and progression system

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

<p align="center">
  <strong>🌱 Protect the dome. Heal the world. Keep the last light alive. 🌱</strong>
</p>
