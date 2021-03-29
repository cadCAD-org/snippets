#!/bin/sh -l

cd /github/workspace/

export PATH="/github/home/.local/bin:$PATH"

cp assets/script/write_links.py .

chmod +x write_links.py

./write_links.py
