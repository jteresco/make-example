# Sample Makefile, Jim Teresco, CS432, Fall 2002
# Updated for Siena College CSIS 330, Spring 2012
# Updated for The College of Saint Rose, CSC 507, Spring 2013
# Updated for Siena College CSIS 340, Fall 2019
#
# targets are defined by a word starting in the first column,
# followed by a colon, then a tab, then the dependencies of that target.
# The spaces you see between targets and dependencies and
# before rules (compile commands) MUST be tabs, not spaces.
#
# See make(1) for more details
#
# first target is what's built if we just type "make"
# in this case, we're just saying to build a different target,
# defined below.
#
all:	main

# Define our C compiler
CC=gcc

#
# Now define the list of C files which are part of our project
CFILES=main.c sub.c
#
# From the CFILES, obtain OFILES, a list of objects
OFILES=$(CFILES:.c=.o)

# how to build a .o from a .c (this is actually the same as the default)
# means, use the compiler defined by CC, compile only (no link) and
# $< is the name of the current target
.c.o:
	$(CC) -c $<

# define the link line.  $(OFILES) means the target main depends on the
# things in OFILES.  We'll use the compilers in $(CC) as the linker,
# -o main means call the output "main", $(OFILES) lists the objects
# to link, then -lm means also link with the math library libm.a
main:	$(OFILES)
	$(CC) -o main $(OFILES) -lm

# Additional dependencies - if we change sub.h, we must recompile
# main.c, since it includes sub.h
main.o:		sub.h

# When we just want to clean up all of the object and executable files
# we often provide a "clean" rule.  This rule has no dependencies, and
# the statements are always executed when someone executes "make clean"
clean::
	/bin/rm main main.o sub.o
