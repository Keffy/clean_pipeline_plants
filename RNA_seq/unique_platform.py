#!/bin/python

with open("meta/platform_by_srrnum.txt", "r") as fn:
    platform_lst = fn.read().splitlines()

unique_plats = list(set([plat.split(",")[1] for plat in platform_lst]))

with open("meta/unique_platforms.txt","w") as fn2:
    fn2.write("\n".join(unique_plats))