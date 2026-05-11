# Escape

Escape is a small 2D platformer made in Godot as a learning and hobby project.

The game is intentionally simple: move through the level, avoid the slime enemies, and reach the goal. Touching a slime triggers a game over state, while reaching the goal triggers a win state.

> Early hobby project. Not a finished or released game yet.

![Escape game screenshot](https://github.com/user-attachments/assets/df8af96f-e85c-4b95-9b50-9b52ed492f6b)

## Status

This project is under active development and currently contains rough edges, temporary code, and simple test levels.

Current gameplay includes:

- Basic 2D platformer movement
- Tile-based level layout
- Slime hazards
- Goal trigger
- Game over screen
- Win screen
- Simple scene-based Godot structure

## Built With

- Godot 4.6.2
- GDScript
- Godot Compatibility renderer

## Controls

Current player movement is based on Godot input actions.

| Action | Key |
| --- | --- |
| Move left | Left / configured input |
| Move right | Right / configured input |
| Jump | Space / configured input |

The project also contains custom input actions for `left`, `right`, and `jump`, but the player script may still be using Godot's default `ui_left`, `ui_right`, and `ui_accept` actions while the project is being developed.

## How to Run

1. Install Godot 4.6 or newer.
2. Clone this repository.
3. Open the project folder in Godot.
4. Run the main scene.

Clone command:

    git clone <repo-url>
    cd escape
    godot

Or open the folder manually from the Godot project manager.

## Project Structure

    actors/                  Actor-related project files
    scenes/                  Godot scenes
      game.tscn              Main game scene
      player.tscn            Player scene
      slime.tscn             Slime enemy scene
      goal.tscn              Goal scene

    scripts/                 GDScript files
      player.gd              Player movement
      slime.gd               Game over trigger
      goal.gd                Win trigger

    platformer-pack-1.1/     External platformer assets
    project.godot            Godot project file

## Main Scenes

The main scene is:

    scenes/game.tscn

The game scene currently contains:

- A `TileMapLayer` for the level
- A player character
- Multiple slime enemies
- A goal object

## Assets

This project uses assets from the included platformer asset pack:

    platformer-pack-1.1/

Asset license information is included here:

    platformer-pack-1.1/License.txt

The project code and third-party assets may have different license terms.

## Development Notes

This project is mainly for learning Godot and experimenting with small platformer mechanics.

The current code is intentionally simple and may be refactored later as the project grows.

Planned or possible improvements:

- Cleaner input handling
- Restart after win or game over
- Better level design
- Sound effects
- Menu screen
- More enemies or hazards
- Improved project structure

## License

No project code license has been selected yet.

Third-party asset licenses are included with the asset files

