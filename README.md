Makefile for generating a reduced gem-data package.

Takes the existing gem-data package and strips out everything except the essentials needed for tests.

To use: edit `files.cfg`, comment out files you don't want and uncomment files you want to keep.  Then, run `make`.  You probably don't want to do this within your home directory.
