#!/usr/bin/python3
import re
import sys

f_file = sys.argv[1]
#f_in = open(f_file,"r")
#f_out = open("out.txt","w")

groupes = {}
with open(f_file,'r') as f_in:
    for line in f_in:
        cur_group = re.search(r'..-(.*?)-[0-9]',line)
        if cur_group:
            current = cur_group.group(1)
            if groupes.get(current) is None:
                groupes.update({current:[]})
            (groupes[current]).append(line.strip())
    for key in groupes:
        print(f"[{key}]")
        for val in groupes[key]:
            print(f"{val}")


