#!/usr/bin/env python3

# This is a somewhat fragile script.
# Refactors are welcome.

import os

notebook_dict = {}
command_ul = '<ul>\n'
command = ''

with os.scandir('notebooks/') as notebooks:
    for nb in notebooks:
        if nb.name[-5:] == '.html':
            notebook_dict[nb.name] = nb.name[:-5].title().replace('_', ' ')

for filename, title in notebook_dict.items():
    command += f'<li><a href="notebooks/{filename}">{title}</a></li>\n'

command_ul += command
command_ul += '</ul>\n'

with open("index.html", "r+") as file:
    contents = file.readlines()
    count = 0
    for index, line in enumerate(contents):
        if '<!-- The converted notebooks go here -->' in line:
            if '<ul>' in contents[index+1]:
                end = contents.index('</ul>\n')
                del contents[index+2:end]
                contents.insert(index + 2, command)
            else:
                contents.insert(index + 1, command_ul)

with open("index.html", "w") as file:
    file.writelines(contents)
