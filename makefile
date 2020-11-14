ACC = ml
AFLAGS = /c /coff /Zd /Zi /nologo
LINKER = link
LFLAGS = /SUBSYSTEM:CONSOLE /OPT:REF /NOLOGO
INCLUDELIBS = C:/Irvine/Irvine32.Lib c:/Irvine/User32.Lib c:/Irvine/Kernel32.Lib
.PHONY: clean all

# for getting all .asm files
# if need only a single one, must add a target using the following structure:
# <name>: <source file to compile>
# then copy paste compile code into the procedure part
# remember tab spacing etc...

SRCS = $(wildcard *.asm)
PROGS = $(patsubst %.asm, %, $(SRCS))
all: $(PROGS)
%: %.asm
	$(ACC) $(AFLAGS) $<
	$(LINKER) $(LFLAGS) /OUT:$(basename $<).exe $(basename $<).obj $(INCLUDELIBS)
	$(MAKE) clean-no-exe

compile:
	$(ACC) $(AFLAGS) $<
	$(LINKER) $(LFLAGS) /OUT:$(basename $<).exe $(basename $<).obj $(INCLUDELIBS)
	$(MAKE) clean-no-exec

clean:
	del *.obj temp *.exe

clean-no-exe:
	del *.obj temp