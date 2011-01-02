SOURCES = sqlite-commander.cs

Autobahn.exe: $(SOURCES) Makefile 
	gmcs -debug $(SOURCES) -pkg:mono-curses -r:System.Data.dll -r:Mono.Data.SqliteClient.dll

run: Autobahn.exe
	mono --debug sqlite-commander.exe <SQLITE FILE PATH>.sqlite; stty sane
