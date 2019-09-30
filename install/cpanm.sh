#!/bin/bash
mkdir -p $HOME/src/.cpanm
ln -sf $HOME/src/.cpanm $HOME/.cpanm
curl -L https://cpanmin.us | perl - App::cpanminus
