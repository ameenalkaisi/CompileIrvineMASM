# CompileIrvineMASM
Makefile for MASM with Irvine support so you can keep coding in terminal

Initial Setup:
	Install mingw (download MinGW installation manager from: https://osdn.net/projects/mingw/releases/)
	get package that includes make (mingw32-base-bin from installation manager)
	add to PATH (C:/MinGW/bin/ <- search "Environmental variables", click Environment Variables, click Path, click Edit, then add the location there or browse to it)
	cp C:/MinGW/bin/mingw-make.exe C:/MinGW/bin/mingw.exe (rename into make.exe in the same directory, or
		could also just call mingw-make instead of make in usage)
	download Irvine's library files into C:/Irvine/ (http://asmirvine.com/gettingStartedVS2019/Irvine.zip)
	download masm into a directory (like C:/masm and add the bin/ into PATH link: http://www.masm32.com/download.htm)
  Note: if copy-pasting makefile, make sure to have spacing set to tabs not to spaces (as make only compiles if its tab spaced)

usage:
	make sure to have makefile in same directory as assembly file
	run in cmd/powershell at the location: make
  If you want to keep .obj files, delete first $(MAKE) clean-no-exe line under %: %.asm

only add .inc files, if need new library includes, add it to INCLUDELELIBS in makefile (space, then absolute path of library)

this will make .exe file, execute it by: .\<program name>.exe
