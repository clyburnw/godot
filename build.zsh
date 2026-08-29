#!/bin/zsh
# THESE SCRIPTS NEED TO BE COPIED TO THE GODOT SOURCE FOLDER

. ./export-key.zsh

# ============= BUILD EDITOR =============
# Mac
scons platform=macos target=editor arch=arm64 generate_bundle=yes


# ============= BUILD EXPORT TEMPLATES =============
# This will create .bin/godot_macos.zip
# Move to ~/Library/Application Support/Godot/macos.zip
# OR specify .bin/godot_macos.zip as the custom template location in Godot export settings.

# Mac

scons platform=macos target=template_debug arch=arm64
scons platform=macos target=template_release arch=arm64 generate_bundle=yes

# Web
scons platform=web target=template_release threads=no
