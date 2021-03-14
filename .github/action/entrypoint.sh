#!/bin/sh -l

cd /github/workspace/

export PATH="/github/home/.local/bin:$PATH"

apt-get update && apt-get install -y pandoc \
    texlive-xetex texlive-fonts-recommended \
    texlive-generic-recommended

pip3 install --user --no-cache-dir -r requirements.txt

cd snippets

mkdir -p output/pdf
mkdir -p output/html

jupyter nbconvert --to pdf *.ipynb --output-dir output/pdf
jupyter nbconvert --to html *.ipynb --output-dir output/html
