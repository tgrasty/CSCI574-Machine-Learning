#!/usr/bin/env python
import sys, os

def usage():
    print "Usage: python run.py [notebooks]"
    sys.exit(1)

if __name__ == "__main__":
    
    # check for usage
    if len(sys.argv) > 2:
        usage()

    # run notebooks, the default if no action specified
    if len(sys.argv) == 1 or sys.argv[1] == 'notebooks':
        cmd = 'jupyter notebooks'
        os.system(cmd)
    else:
        usage()
