#!/bin/bash
git merge master -m'merge from master'
cd tools
make
cd ..
