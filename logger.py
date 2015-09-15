#!/usr/bin/env python

import logging

logfile = 'program.log'
logger = logging.getLogger()

# Root logger
logger.setLevel(logging.NOTSET)

# Console log handler
console = logging.StreamHandler()
console.setLevel(logging.INFO)
formatter = logging.Formatter(
    '%(asctime)s %(levelname)s %(message)s',
    "%Y-%m-%d-%H:%M:%s"    
)
console.setFormatter(formatter)
logger.addHandler(console)

# File log handler
file = logging.FileHandler(logfile)
file.setLevel(logging.DEBUG)
formatter = logging.Formatter(
    '%(asctime)s %(levelname)s %(message)s',
    "%Y-%m-%d-%H:%M:%s"    
)
file.setFormatter(formatter)
logger.addHandler(file)

logging.info("Info message goes to file and screen")
logging.debug("Debug message goes only to the file")
