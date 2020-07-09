#!/usr/bin/env python
"""
Project wide configuration variables and constants.
"""
import os.path
from pathlib import Path

# A little magic to find the root of this project
ROOT_DIR = os.path.dirname(os.path.abspath(__file__))
ROOT_DIR = os.path.normpath(os.path.join(ROOT_DIR, '../..'))

# The location of the data directory, how do we find this as an absolute path?
DATA_DIR = os.path.join(ROOT_DIR, 'data')


