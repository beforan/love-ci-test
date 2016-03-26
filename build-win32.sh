#!/bin/bash

# zip the game folder
cd game
zip -9 -q -r ../game.love .

# download Love-win32
cd ..
wget https://bitbucket.org/rude/love/downloads/love-0.10.1-win32.zip

# unzip it
unzip love-0.10.1-win32.zip

# copy the files over
cp ./love-0.10.1-win32/* ./dist

# make the combined .exe
cat ./dist/love.exe game.love > ./dist/game.exe

# remove the original love.exe
rm ./dist/love.exe

# zip the distributable files
cd dist
zip -r MiniLD66-win32.zip .