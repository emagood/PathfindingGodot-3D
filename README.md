# Pathfinding Demo in Godot 3D

## Overview

Welcome to the Pathfinding Demo project! This project is a basic implementation of pathfinding in a 3D scene using the Godot Engine. It showcases how to manage multiple NPCs with random paths and a player character that can navigate through the map.

## Features

- **Player Movement**: Control a 3D player character to explore the map.
- **NPC Pathfinding**: Multiple NPCs with random paths, demonstrating basic AI pathfinding.
- **3D Environment**: A fully navigable 3D scene.

## Purpose and Capabilities

### Player Script

The player script is responsible for managing the player's movement and actions within the 3D environment. Key features include:

- **Movement**: The player can move in all directions using the keyboard inputs.
- **Jumping**: The player can jump when on the ground.
- **Gravity Handling**: Gravity is applied to the player when not on the ground.

These capabilities allow the player to explore the 3D environment freely, providing an interactive experience.

### NPC Script

The NPC script handles the behavior of non-playable characters (NPCs) within the scene. Key features include:

- **Random Pathfinding**: NPCs select random destinations within the environment and navigate towards them.
- **Movement Handling**: NPCs move smoothly towards their destination.
- **Pathfinding Logic**: Uses Godot's NavigationAgent3D to find and follow paths to the target positions.

This allows for dynamic and unpredictable NPC movement, enhancing the complexity and realism of the environment.

## Getting Started

### Prerequisites

- [Godot Engine](https://godotengine.org/download) (version 4.4.beta4)

### Installation

1. **Clone the repository:**
    ```bash
    git clone (https://github.com/emagood/PathfindingGodot-3D)
    ```

2. **Open the project in Godot:**
    - Launch Godot Engine.
    - Click on `Import` and navigate to the cloned project folder.
    - Select the `project.godot` file and open the project.

### Usage

- Run the project from the Godot editor to start the demo.
- Use the arrow keys or WASD to control the player.
- Observe the NPCs as they navigate their random paths in the 3D environment.

## Contributing

Feel free to fork this repository and contribute improvements! Pull requests are welcome.

## License

This project is licensed under the MIT License
