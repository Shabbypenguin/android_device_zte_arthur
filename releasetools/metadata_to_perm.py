#!/usr/bin/env python
## Transform set_metadata into set_perm (for recoveries that don't support the former)
# Usage: metadata_to_perm.py file
import sys, re

try:
    file = open(sys.argv[1])
except:
    print('unable to open file')
    exit(1)

buffer = ''

for line in file:
    if (line.startswith('set_metadata')):
        recursive = line.startswith('set_metadata_recursive')
        found = [x.strip() for x in re.search('\\((.+)\\)', line).group(1).split(',')]
        name = found.pop(0)
        keys = {}
        for i in range(len(found)):
            if i % 2 == 0:
                keys[found[i]] = found[i +1]
        out = 'set_perm' + ('_recursive' if recursive else '') + '('
        if recursive:
            for prop in ['"uid"', '"gid"', '"dmode"', '"fmode"']:
                out += keys[prop] + ', '
        else:
            for prop in ['"uid"', '"gid"', '"mode"']:
                out += keys[prop] + ', '
        out += name + ')'
        buffer += out + '\n'
    else:
        buffer += line

file.close()
file = open(sys.argv[1], 'w')
file.write(buffer)
