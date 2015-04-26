FILES = \
    Addons.xcu \
    description.xml \
    META-INF/manifest.xml \
    descriptions/en.txt \
	Arastar/script.xlb \
    Arastar/dialog.xlb \
	Arastar/Testing.xba \

EXT = Arastar.oxt

$(EXT): $(FILES)
	zip $@ $^

.PHONY: clean add remove

clean:
	rm -f $(EXT)

add:
	unopkg add $(EXT)
	
remove:
	unopkg remove $(EXT)

