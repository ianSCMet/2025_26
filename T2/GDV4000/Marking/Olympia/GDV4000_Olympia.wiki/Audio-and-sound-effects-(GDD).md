> **Character, map, menu, and general audio lists and sections**

# Audio and Sound Effects

# Audio and sound effects idea mood board.

<img width="1147" height="642" alt="image" src="https://github.com/user-attachments/assets/566370a9-19a1-4397-8ae2-0d34d7a72b55" />

## Audio Format and Technical Choice

All music and sound effects are formatted as MP3 files due to their smaller file size and strong compatibility with Unity. This compression level supports smooth playback of all game audio (including background tracks) throughout a match without requiring excessive memory.

Unity can stream compressed audio from disk(Unity Technologies, 2020), which helps reduce RAM usage while the game is running. Keeping music, combat cues (for example jump and attack sounds), and UI interaction sounds in the same format also keeps the audio pipeline consistent.

From a production perspective, this format choice also supports a cleaner asset workflow because the team can export, test, and rebalance sounds quickly without repeatedly switching between multiple file standards. It also reduces the chance of mismatched import settings across categories of audio, which helps maintain consistency in playback volume, timing, and perceived quality during gameplay.

Using a single format improves maintainability as the project grows. If additional characters, arenas, or menu states are added later, the same import and playback rules can be reused with minimal setup overhead. This supports iteration speed during testing while still meeting the quality expectations for an arcade-style combat game.

While WAV was considered for its higher fidelity, MP3 was selected because it offers a practical quality-to-performance balance for Path of the Immortals, a small-scale 2D arena fighter.

## Music Direction

Path of the Immortals aims for a classic arcade-fighter atmosphere shaped by Greek mythology. The soundtrack combines intensity and heroism through rhythm-driven battle music, war-inspired percussion, and modern bass elements to maintain a competitive tone.

The musical direction is intended to do more than provide background ambience, it actively supports match pacing and emotional escalation. Early in a round, themes can begin with controlled tension, then gradually layer additional percussion, melody accents, and harmonic pressure as player actions become more aggressive. This progression helps communicate momentum shifts even before major visual events occur.

By merging mythological instrumentation with modern arcade energy, the soundtrack also reinforces the identity of the game world. Rather than sounding historically accurate or purely electronic, the audio language sits between both styles to reflect the project’s hybrid fantasy-combat aesthetic.

Greek-inspired instruments (such as the lyre and war drums) are blended with map-specific themes:

- Zeus map: more aggressive and harsh audio character
- Hermes map: softer but faster music direction

The tone of each map is designed to reinforce match tension and keep players focused.

At a gameplay level, map-linked music helps players immediately recognize where they are fighting and what tone to expect. This subtle contextual cue supports immersion and contributes to each arena feeling distinct, even when core mechanics remain consistent across matches.

## Research Basis: Audio Influence During Game Events

This audio direction is supported by findings from Andersen et al. (2021), who conclude that game audio has three central roles: to inform, entertain, and immerse players (Andersen et al., 2021, p. 223).

The study separates game audio into three core categories that directly match this project’s implementation model:

- Background music for emotional tone and pacing
- Ambient sound for environmental atmosphere and spatial context
- Sound effects for short, action-linked gameplay feedback

Their results also show that mismatched music can reduce suitability and player satisfaction, even when excitement increases, which supports using map and event appropriate tracks rather than one universal combat theme.

In controlled FPS testing, participants generally completed levels faster and with fewer hits when audio was present, indicating that effective audio design can support awareness and performance in addition to atmosphere.

Most importantly for gameplay events, respondents rated sound effects as the strongest positive contributor to enthusiasm, feedback clarity, and immersion, and the authors conclude that sound effects are the most important game-audio element.

For Path of the Immortals, this supports prioritising event linked cues such as attack impacts, movement cues, confirm/cancel UI sounds, round start/end, and game-over signals as the first layer of implementation, then balancing ambience and music around those cues for imersion and readability (Andersen et al., 2021, pp. 229–231).

<img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/6fafdb05-b5f3-4d8a-87e1-9dd5941bceae" />

Harrison Shimazu. 2019. *The top 20 video game soundtracks of all time.* Available at https://splice.com/blog/top-20-video-game-soundtracks/

## Menu Audio

The menu uses a crunchy, pixel-inspired theme that blends Zeus and Hermes motifs while maintaining the game’s arcade-modern feel.

This section of the soundscape is designed to keep players engaged between matches without causing fatigue. The arrangement stays lighter and less intense than combat audio, but it still carries thematic hints of power, speed, and mythology so that the transition into gameplay feels natural.

Menu audio also functions as feedback design. Through controlled tonal contrast and short interaction cues, players can read interface responses quickly, which improves usability while preserving the game’s personality.

- Soft instrumentation (for example lyre tones) supports calm navigation.
- Harsher accents subtly foreshadow combat once a match is selected.
- UI interactions include hover sounds for options such as Play, Settings, and Exit.
- Hovering over Play uses a bone-crush style cue to reinforce the combat-focused tone.

Together, these cues support both atmosphere and clarity: players can navigate calmly, yet they are continuously reminded that the core experience is high-impact competitive combat.

## Character and Arena-Specific Audio

Each playable character has a distinct audio identity linked to their visual style and arena:

- Zeus: thunder-heavy, intimidating, high-impact cues
- Hermes: lighter, upbeat, faster-feeling cues

Character select and map select trigger character-aligned audio motifs. During high-momentum moments (for example when a character gains a strong lead on their associated map), music intensity increases to sustain player focus and immersion.

This identity-based design helps strengthen character fantasy. Zeus communicates force and intimidation through heavier and more dramatic sonic signatures, while Hermes conveys agility and precision through lighter and faster-feeling textures. These differences make each fighter feel unique beyond animations and move sets alone.

In match flow terms, dynamic intensity shifts are intended to reward attention and increase emotional stakes. When players recognize these shifts, they receive a subtle signal that the battle state is changing, which can heighten engagement during decisive moments.

## VFX Direction

The VFX style combines mythology, arcade readability, and modern impact to make hits and health changes feel clear and satisfying.

The visual effects philosophy prioritizes gameplay readability first, then style expression second. Effects should feel dramatic and memorable, but they must still allow players to track spacing, timing, and incoming actions during fast exchanges. This balance is especially important in a competitive arena format where split-second decisions matter.

Color, contrast, and motion are used intentionally to communicate action type and threat level. Heavy attacks, ranged pressure, and speed-focused movement cues each need a recognizable visual profile so that players can interpret situations quickly without overwhelming the screen.

- High-contrast hit bursts match each character palette.
- Zeus effects emphasize bright lightning and stronger contrast.
- Hermes projectiles are less visually pronounced to support his speed-focused gameplay identity.
- Screen shake and rapid hit effects emphasize power and pace.

Overall, the VFX presentation supports a heroic, high-pressure battle atmosphere.

As a complete package, audio and VFX are designed to work together as one feedback system: sound communicates force and timing, while effects communicate direction and impact. This combined approach aims to keep combat feeling responsive, cinematic, and consistently readable.

<img width="1536" height="864" alt="image" src="https://github.com/user-attachments/assets/1741b2fe-818a-46fc-a0b3-b4b7a356498f" />

Jack Type. 2023. *The history of video game music.* Available at https://blog.blips.fm/articles/the-history-of-video-game-music

## Audio Samples

### Beginning of Battle

[freesound_community-game-start-6104.mp3](https://github.com/user-attachments/files/25451634/freesound_community-game-start-6104.mp3)

freesound_community. (2021) *Game Start.* Available at https://pixabay.com/sound-effects/film-special-effects-game-start-6104/

### Attack Sound Effect

[cyberwave-orchestra-fantasy-game-sword-cut-sound-effect-get-more-on-my-patreon-339824.mp3](https://github.com/user-attachments/files/25451565/cyberwave-orchestra-fantasy-game-sword-cut-sound-effect-get-more-on-my-patreon-339824.mp3)

Cyberwave-Orchestra. (2025) *Fantasy Game Sword Cut Sound Effect.* Available at https://pixabay.com/sound-effects/film-special-effects-fantasy-game-sword-cut-sound-effect-get-more-on-my-patreon-339824/

### Game Over

[freesound_community-game-over-arcade-6435.mp3](https://github.com/user-attachments/files/25451616/freesound_community-game-over-arcade-6435.mp3)

freesound_community. (2021) *Game Over Arcade.* Available at https://pixabay.com/sound-effects/film-special-effects-game-over-arcade-6435/

## References

Andersen, F., Danny, King, C.L. and Gunawan, A.A.S. (2021) *Audio influence on game atmosphere during various game events*. Procedia Computer Science, 179, pp. 222–231.

