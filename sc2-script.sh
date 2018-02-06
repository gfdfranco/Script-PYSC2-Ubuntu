#!/bin/bash
#DOWNLOADS
echo "Universidad Politécnica de SLP"
read -p "Do you want to download SC2 packages?: yes, please (y) / no, I already have them (n): " flag
if test "$flag" = "y"
then
  echo “Downloading: Linux packages 3.16.1”
  wget http://blzdistsc2-a.akamaihd.net/Linux/SC2.3.16.1.zip
  echo "Linux packages were downloaded successfully"
  echo “Downloading: Ladder 2017 Season 1”
  wget http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season1.zip
  echo "Map Packs season 1 were downloaded successfully"
  echo “Downloading: Ladder 2017 Season 2”
  wget http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season2.zip
  echo "Map Packs season 2 were downloaded successfully"
  echo “Downloading: Ladder 2017 Season 3”
  wget http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season3.zip
  echo "Map Packs season 3 were downloaded successfully"
  echo “Downloading: Melee”
  wget http://blzdistsc2-a.akamaihd.net/MapPacks/Melee.zip
  echo "Map Packs melee were downloaded successfully"
  echo “Downloading: Replay packs - 3.16.1 - pack 1”
  wget http://blzdistsc2-a.akamaihd.net/ReplayPacks/3.16.1-Pack_1-fix.zip
  echo "Replay packs (3.16.1 - Pack 1) were downloaded successfully"
  echo “Downloading: mini games”
  wget https://github.com/deepmind/pysc2/releases/download/v1.2/mini_games.zip
  echo "mini games were downloaded successfully"
else
  read -p "Are you already in the directory where the files are located?: yes(y)/no(n): " flag
  if test "$flag" = "n"
  then
    exit 1
  else
    echo "OK."
  fi
fi
#ORGANIZE
read -p "Do you want to install SC2LE packages?: yes, please (y) / no, I already have them (n): " flag
if test "$flag" = "y"
then
  #UNZIP
  echo “Unzip: mini_games.zip”
  unzip mini_games.zip
  echo “Unzip: Ladder2017Season1.zip”
  unzip -P iagreetotheeula Ladder2017Season1.zip
  echo “Unzip: Ladder2017Season2.zip”
  unzip -P iagreetotheeula Ladder2017Season2.zip
  echo “Unzip: Ladder2017Season3.zip”
  unzip -P iagreetotheeula Ladder2017Season3.zip
  echo “Unzip: Melee.zip”
  unzip -P iagreetotheeula Melee.zip
  echo “Unzip: 3.16.1-Pack_1-fix.zip”
  unzip -P iagreetotheeula 3.16.1-Pack_1-fix.zip
  echo “Unzip: SC2.3.16.1.zip”
  unzip -P iagreetotheeula SC2.3.16.1.zip
  #MOVE
  echo "move cache directory"
  mv Battle.net/Cache StarCraftII/Battle.net/
  echo "move Ladder2017Season1 directory"
  mv Ladder2017Season1 StarCraftII/Maps/
  echo "move Ladder2017Season2 directory"
  mv Ladder2017Season2 StarCraftII/Maps/
  echo "move Ladder2017Season3 directory"
  mv Ladder2017Season3 StarCraftII/Maps/
  echo "move Melee directory"
  mv Melee StarCraftII/Maps/
  echo "move mini_games directory"
  mv mini_games StarCraftII/Maps/
  echo "move Replays directory"
  mv Replays StarCraftII/
  echo "delete Battle.net directory"
  rm -R Battle.net/
  echo "move StarCraftII to home"
  mv StarCraftII/ ~
else
  echo "OK."
fi
#DELETE zip
read -p "Do you want to delete all .ZIP files?: yes, please (y) / no (n): " flag
if test "$flag" = "y"
then
  echo "delete zip directories"
  rm mini_games.zip
  rm 3.16.1-Pack_1-fix.zip
  rm Ladder2017Season1.zip
  rm Ladder2017Season2.zip
  rm Ladder2017Season3.zip
  rm Melee.zip
  rm SC2.3.16.1.zip
else
  echo "OK."
fi
#sc2deeplearning ENVIRONMENT
read -p "Do you want to install sc2deeplearning environment(recommended)?: yes, please (y) / no (n): " flag
if test "$flag" = "y"
then
  conda create -n sc2deeplearning python=3.5
else
  echo "OK."
fi

read -p "Are you in sc2deeplearning environment?, Do you want to install the packages in sc2deeplearning?: yes, please (y) / no (n): " flag
if test "$flag" = "y"
then
  conda install numpy
  conda install pandas
  conda install scikit-learn
  conda install matplotlib
  pip install tensorflow
  pip install --upgrade tensorflow
  pip install baselines
  pip install absl-py
  pip install pysc2
else
  echo "OK."
fi
echo "finished successfully"
