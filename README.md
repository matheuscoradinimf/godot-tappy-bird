# Tappy - Airplane Game

A Flappy Bird-style game developed in Godot 4, where you control an airplane that must avoid obstacles and score points.

> **Course**: This game was created following the guidance of the Udemy course "Jumpstart to 2D Game Development: Godot 4.4+ for Beginners"

## 🎬 Demo Video

https://github.com/user-attachments/assets/c79a66cf-f01a-4d48-b099-8314e4582abd

## 🎮 How to Play

- **Jump**: Press `SPACE` to make the airplane jump
- **Objective**: Avoid the pipes and score as many points as possible
- **Exit**: Press `ESC` to return to the main menu

## 🚀 Features

- **Scoring System**: Score points by passing through pipes
- **Persistent Highscore**: Your best score is automatically saved
- **Responsive Interface**: UI adapted for mobile devices
- **Transition System**: Smooth animations between screens
- **Sound Effects**: Background audio and sound effects

## 🛠️ Technologies Used

- **Godot 4.4**: Game engine
- **GDScript**: Programming language
- **Resource System**: For data saving
- **Signal System**: Communication between components

## 📁 Project Structure

```
tappy/
├── assets/                 # Game resources
│   ├── audio/             # Sounds and music
│   ├── background/        # Background sprites
│   ├── fonts/             # Game fonts
│   ├── pipes/             # Obstacle sprites
│   └── plane/             # Airplane sprites
├── Classes/               # Custom classes
│   └── HighScoreResource.gd
├── Globals/               # Global scripts
│   ├── GameManager.gd     # Scene manager
│   ├── ScoreManager.gd    # Score manager
│   └── SignalHub.gd       # Signal hub
├── Scenes/                # Game scenes
│   ├── Game/              # Main game scene
│   ├── GameUi/            # User interface
│   ├── Main/              # Main menu
│   ├── Plane/             # Player airplane
│   ├── Pipes/             # Obstacle system
│   └── Transition/        # Transition animations
└── Resources/             # Godot resources
```

## 🎯 Main Components

### Airplane (`Plane`)
- **Physics**: Configurable gravity and jump force
- **Animations**: Animated sprite with rotation on jump
- **Collision**: Collision detection with pipes and ground

### Pipe System (`Pipes`)
- **Generation**: Pipes are generated automatically
- **Movement**: Move from right to left
- **Collision**: Detect when the airplane hits them

### Scoring System (`ScoreManager`)
- **Persistence**: Saves highscore to file
- **Resources**: Uses `HighScoreResource` for structured data
- **Auto-save**: Automatically saves when a new record is achieved

### Interface (`GameUi`)
- **Real-time Score**: Shows current score
- **Game Over**: End game screen with delay
- **Controls**: Restart with SPACE, exit with ESC

## ⚙️ Settings

### Controls
- **Jump**: `SPACE` - Makes the airplane jump
- **Exit**: `ESC` - Returns to main menu

### Physics
- **Gravity**: Configured via `ProjectSettings`
- **Jump Force**: `JUMP_FORCE = 400` (adjustable in `plane.gd`)

### Resolution
- **Screen**: 480x854 (optimized for mobile)
- **Stretch Mode**: Canvas Items

## 🔧 Installation and Execution

1. **Requirements**:
   - Godot 4.4 or higher
   - Windows, Linux or macOS

2. **Execution**:
   - Open the project in Godot
   - Press F5 or click "Play"
   - The main scene will be loaded automatically

3. **Build**:
   - Go to `Project > Export`
   - Configure the desired platform
   - Export the project

## 📊 Save System

The game uses Godot's resource system to save data:

- **File**: `user://tappy.tres`
- **Format**: Godot Resource
- **Data**: Player's highscore
- **Location**: User data directory

## 🎨 Assets

### Sprites
- **Airplane**: Sprite sheet with animations
- **Pipes**: Obstacles with pipe format
- **Background**: Cloud and rock sprites for parallax

### Audio
- **Music**: BGM for menu and game
- **Effects**: Jump, score and game over sounds


## 📝 License

This project is open source and available under the MIT license.
