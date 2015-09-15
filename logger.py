#!/usr/bin/env python

import logging

logfile = 'my_log.log'
log_layout_template = logging.Formatter(
    '%(asctime)s %(levelname)s %(message)s',
    "%Y-%m-%d-%H:%M:%s"
)

logger = logging.getLogger()

# Root logger
logger.setLevel(logging.NOTSET)

# Screen log handler
screen = logging.StreamHandler()
screen.setLevel(logging.INFO)
screen.setFormatter(log_layout_template)
logger.addHandler(screen)

# File log handler
file = logging.FileHandler(logfile)
file.setLevel(logging.DEBUG)
file.setFormatter(log_layout_template)
logger.addHandler(file)

logging.info("Info message goes to file and screen")
logging.debug("Debug message goes only to the file")
