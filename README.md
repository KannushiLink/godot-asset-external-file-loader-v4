# External File Loader (for Godot 4 Beta 2)
(original: external-file-loader-godot by Codecrafter14@GitHub)

This tool allows you to load assets outside res://, like mp3, ogg, wav, png and jpg in Godot Game Engine
It only works on Godot 4 Beta 2

## Installation
1. Download it via Godot asset library
2. Activate it in the Project -> Project Settings... -> Plugins
3. Enjoy it


## How to use
It adds a new autoload script to your Project, named Loader. It provides different functions.
You can call it in all your Scripts using Loader.[function-name(file-path)]


### Available source types this addon can load

1. MP3
2. WAV

### Source types this addon might no be able to load/test

3. OGG (due to change in Godot 4 alpha, it's impossible to load OGG data like other sounds)
4. PNG (not test yet)
5. JPG (not test yet)

(More file types are coming soon)


## This repo is current under testing, everything might change without fore-warning
