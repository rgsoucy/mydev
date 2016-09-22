#!/bin/python

import os
os.chdir('/mnt/c/Users/rsoucy/testDir')

for filename in os.listdir('/mnt/c/Users/rsoucy/testDir'):
    if filename.endswith('.txt'):
        #os.unlink(filename)
        testfile = open('/mnt/c/Users/rsoucy/Desktop/testfile.txt', 'a')
        testfile.write('%s \n' % (filename))
        testfile.close()
