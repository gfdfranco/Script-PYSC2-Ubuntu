# Script-PYSC2-Ubuntu
The purpose of the repository is to optimize the installation of pysc2 (https://github.com/deepmind/pysc2) in Ubuntu 16.04.

## Requirements
  - You need to download and install anaconda distribution, select a python version >=3.5 (https://www.anaconda.com/download).

  - You should upgrade and update the system:
  ```sh
  $ sudo apt-get -y upgrade
  $ sudo apt-get  -y update
  ```

## What does the script do?
If you want you can run the next tasks:
 - Download SC2LE packages:
    - Linux packages 3.16.1
    - Ladder 2017 Season 1
    - Ladder 2017 Season 2
    - Ladder 2017 Season 3
    - Melee
    - Replay packs (3.16.1 - Pack 1)
    - mini games
 - Extract and organize directories.
 - Install sc2deeplearning environment:
    - conda create -n sc2deeplearning python=3.5
 - Packages for deep learning in sc2deeplearning environment
    - conda install numpy
    - conda install pandas
    - conda install scikit-learn
    - conda install matplotlib
    - pip install tensorflow
    - pip install --upgrade tensorflow
    - pip install baselines
    - pip install absl-py
    - pip install pysc2

## Installation
Tutorials: 
   - MyMakeLab: http://www.mymakelab.com/tutoriales/gfdgeras/script-pysc2-ubuntu
   - Youtube: https://youtu.be/wthOA27FX8Q
      
## Run the script
It is necessary that the script can be executable, to ensure that we can run the script, we should put the next command:
```sh
$ sudo chmod u+x sc2-script.sh
```
Now we can run the following command:
```sh
$ ./sc2-script.sh
```
