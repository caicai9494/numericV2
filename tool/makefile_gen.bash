#!/bin/bash

# $1 FILE name

FILE=makefile.$1

if [ -e ${FILE} ]; then
    echo "makeFILE.$1 exists"
    echo "exiting..."
    exit
fi

echo 'CC=g++ 

LIBS=
LIBS_INC=
LIBS_DIR=

TSK=
SRC=

PTHREAD_ENABLED=#-pthread

CPPFLAGS=$(LIBS_INC:%=-I%) $(LIBS:%=-l%) $(LIBS_DIR:%=-L%) -g -Wall -std=c++11 $(PTHREAD_ENABLED)

all:
	$(CC) $(SRC) $(CPPFLAGS) -o $(TSK) 

clean:
	rm -f *.o $(TSK)' > ${FILE}

