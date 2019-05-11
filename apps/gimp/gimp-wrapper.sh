#!/bin/bash
# source: http://askubuntu.com/a/691532
# This wrapper is needed to prevent this error:

# The program 'gimp' received an X Window System error.
# This probably reflects a bug in the program.
# The error was 'BadValue (integer parameter out of range for operation)'.
#   (Details: serial 166 error_code 2 request_code 130 minor_code 3)
#   (Note to programmers: normally, X errors are reported asynchronously;
#    that is, you will receive the error a while after causing it.
#    To debug your program, run it with the --sync command line
#    option to change this behavior. You can then get a meaningful
#    backtrace from your debugger if you break on the gdk_x_error() function.)

export LD_PRELOAD='/usr/lib/x86_64-linux-gnu/libstdc++.so.6'
# export DISPLAY=:0
gimp $@
