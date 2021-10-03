#!/bin/sh -l

cd /github/workspace/

export PATH="/github/home/.local/bin:$PATH"

apt-get update && apt-get install -y pandoc \
    texlive-xetex texlive-fonts-recommended \
    texlive-generic-recommended build-essential \
    python-dev python3-dev graphviz

pip3 install --user --no-cache-dir -r requirements.txt

cd snippets

mkdir -p output/pdf
mkdir -p output/html

jupyter nbconvert --to pdf --execute *.ipynb --output-dir output/pdf
jupyter nbconvert --to html --execute *.ipynb --output-dir output/html
