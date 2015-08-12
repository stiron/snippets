#!/usr/bin/env python

import subprocess

cmd = ['ls', '-l']
grepping = ['grep', 'tmolnar']

p1 = subprocess.Popen(cmd, stdout=subprocess.PIPE)
p2 = subprocess.Popen(grepping, stdin=p1.stdout, stdout=subprocess.PIPE)
p1.stdout.close()

output, error_msg = p2.communicate()
