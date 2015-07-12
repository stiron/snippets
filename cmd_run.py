#!/usr/bin/env python

import subprocess

def cmd_run(cmd):
    proc = subprocess.Popen(
        cmd,
        stdout = subprocess.PIPE,
        stderr = subprocess.PIPE
    )
    stdout_value, stderr_value = proc.communicate()
    retval = {
        'stdout': stdout_value,
        'stderr': stderr_value,
    }
    return retval
