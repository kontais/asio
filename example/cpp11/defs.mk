CC     = gcc
CXX    = g++
AS     = gcc -x assembler-with-cpp
AR     = ar
BIN    = bjcopy
RM     = rm -f

CFLAGS    = #-Wno-pointer-to-int-cast 
CXXFLAGS  = #-Wno-pointer-to-int-cast 

ASFLAGS = $(CFLAGS)
LDFLAGS = 
ARFLAGS = rsc

SIZE    = size
READELF = readelf
OBJDUMP = objdump
BIN     = objcopy
NM      = nm

SRCSc =  $(SRCS:.c=.o)
SRCSx =  $(SRCSc:.cpp=.o)
OBJS  =  $(SRCSx:.s=.o)
