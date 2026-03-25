> Tools, engines, scripting languages; key technical features (AI, physics, etc.); startup flow (logos, legal, title screen); menu systems (options, save/load, accessibility); loading screens and attract mode.

# Target Platforms

The initial beta release of Path of the Immortals is PC-first (Windows), with controller support included from the start so the project can transition to console later with minimal redesign.

- Primary platform: PC (keyboard/mouse and controller support)
- Planned future platforms: Xbox and PlayStation
- Future R&D platform: Mobile (not in current launch scope)

PC is prioritized first to stabilize combat feel, loading behavior, animation timing, and collision handling before moving into stricter console certification constraints.

Platform notes:
- Platform support and release policy align with [Legal, ethics and marketing (GDD)](https://github.com/CardiffMetGames/GDV4000_Olympia/wiki/Legal,-ethics-and-marketing-(GDD))
- Gameplay implementation aligns with [Gameplay and Mechanics (GDD)](https://github.com/CardiffMetGames/GDV4000_Olympia/wiki/Gameplay-and-Mechanics-(GDD))

Locked PC specification profile (beta):

| Category | Minimum Spec | Recommended Spec |
|---|---|---|
| Operating System | Windows 10 (64-bit) | Windows 11 (64-bit) |
| CPU | Dual-core 2.3 GHz | Quad-core 3.0 GHz |
| RAM | 8 GB | 16 GB |
| GPU | DirectX 10 compatible GPU | DirectX 12 compatible GPU |
| VRAM | 2 GB | 4 GB |
| Storage | 6 GB available space | 10 GB available space (SSD preferred) |
| Display Resolution | 1280x720 | 1920x1080 |
| Performance Target | 60 FPS at low/medium settings | 60 FPS at high settings |

(Valve Corporation, 2026)

Specification baseline informed by Steam hardware trends and compatibility priorities for a PC-first launch: Valve Corporation (2026), Steam Hardware & Software Survey – February 2026.

# Technical Requirements

## Engine support
- Engine: Unity (Personal Plan for current project scope)
- Language: C#
- Game type: 2D pixel-art fighting game
- Physics: Unity 2D physics for collisions, knockback, destructible objects, and hazards

## Pipeline
- Art pipeline: ASEprite sprite sheets exported to PNG, imported into Unity with pixel-perfect settings
- Audio pipeline: MP3 assets (licensed references from Pixabay) imported into Unity AudioSource system, separated into background music, ambience, and sound effects channels to match established game-audio categories (Andersen et al., 2021, p. 223)
- Data pipeline: Character stats, combo values, and economy values stored in configurable data assets (ScriptableObjects/JSON)
- Build pipeline: PC build first, then controller parity and platform abstraction for console ports

## Version control
- Recommended: Git-based workflow (branch-per-feature)
- Suggested branch naming: `feature/<system-name>`, `fix/<issue-name>`
- Suggested baseline branches: `main` (stable), `dev` (integration)
- LFS should be enabled if large binary art/audio files increase repository size

## Key technical systems
- Input System: keyboard + controller mappings, fully rebindable controls
- Combat System: light/heavy/ranged attacks, cooldowns, combo buffering, parry/block resolution
- Environment System: destructible arena elements and hazard triggers
- UI/HUD System: health bars, timer, combo state, hazard indicators, round results, Arena shop UI
- Audio System: character-based SFX, map themes, ambience layers, menu/UI feedback sounds, and event-state cues prioritised around action feedback because sound effects have the strongest reported gameplay influence (Andersen et al., 2021, p. 231)
- Save System: local persistence for coins, unlocks, and match stats

## Technological requirements and constraints
- Target performance: stable 60 FPS gameplay during 1v1 combat
- Input responsiveness: low-latency attack/parry feedback
- Memory strategy: compressed assets and streamed audio where needed
- Offline-first runtime: no mandatory online services for core gameplay loop
- Accessibility requirements: remappable controls, readable HUD, color-access options, subtitles/toggles where applicable, and separate master/music/SFX controls to prevent unsuitable or overpowering music from reducing usability (Andersen et al., 2021, p. 229)
- Sudden-death tuning: 1.5x damage multiplier when timer expires on a tied round

## AI scope
AI opponents are not required for initial local multiplayer focus. AI/training bots can be introduced as a post-beta feature.

***

# UIs

## Main Menu
- Primary buttons: Play, Options, Credits, Exit
- Clear arcade-style navigation designed for both keyboard and controller
- Quick path into character select and map select

## Loading Screens
- Display selected map/character context while assets initialize
- Include gameplay tips (combos, parry timing, environmental risk cues)
- Keep visual style consistent with pixel-art identity and mythological theme

## Character Section
- Character selection cards for Hermes and Zeus
- Present concise stats/identity summary (speed/power/playstyle)
- Confirm selection before moving to map section
- Future-ready structure for adding Hades and expanded roster

## Map Section
- Map selection between current arena set (e.g., coliseum/heavens)
- Optional preview image/theme cue before loading match
- Confirm map selection, then proceed to loading screen

## HUD system - UI for shop stuff
- In-match HUD:
	- Health bars for both players
	- Round timer
	- Combo/cooldown indicators
	- Hazard/destruction indicators when needed
- Post-round UI:
	- Damage dealt/received
	- Combo performance
	- Coins/XP/medal rewards
- Arena shop UI:
	- Post-round upgrade/combination purchase panel
	- Coin cost visibility and confirm/cancel action

***

# Game Front End

## Credit screens on startup
- Startup order: Publisher/Team logo -> Engine credit -> Legal/rating notice -> Title screen
- Engine and licensed asset acknowledgements are required on first launch and skippable on subsequent launches

## Title / Start Screen
- Title screen contains the main Play entry point
- Player selects Play to move directly into Main Menu flow
- Background should communicate game tone (Greek mythology + fast arcade combat)

## Player Options
- Video options: resolution/fullscreen/brightness (baseline)
- Audio options: master/music/SFX levels with independent balancing and mute toggles so players can tune suitability by context (Andersen et al., 2021, p. 229)
- Input options: keyboard + controller rebinding
- Accessibility options: color readability options, UI legibility settings, subtitle/indicator toggles where implemented

## How game saves are done
- Local save storage for:
	- Coins and progression unlocks
	- Character combo unlock status
	- Cosmetic unlocks
	- Basic match statistics
- Save trigger: end of round/end of match and on safe menu transition
- Data/privacy behavior should follow [Legal, ethics and marketing (GDD)](https://github.com/CardiffMetGames/GDV4000_Olympia/wiki/Technical-&-Front%E2%80%90End-(GDD))
- No server dependency is required for core offline progression in current scope