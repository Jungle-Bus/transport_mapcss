PO:=$(wildcard *.po)
LANG_=$(PO:.po=.lang)

all: ../transport.validator.zip

transport_mapcss.pot: ../transport.validator.mapcss
	sed -i "s/^#: .*//" $@
	LANG=C xgettext --join-existing -cTRANSLATORS \
	  --keyword=tr \
	  --force-po --omit-header \
	  --output=$@ $<

%.po: transport_mapcss.pot
	msgmerge --update $@ $<

i18n.pl:
	wget https://svn.openstreetmap.org/applications/editors/josm/i18n/i18n.pl

%.lang: %.po i18n.pl
	perl i18n.pl --potfile=transport_mapcss.pot ./$<

../transport.validator.zip: ../transport.validator.mapcss $(LANG_)
	rm -f $@
	zip -j $@ ../transport.validator.mapcss $(LANG_)
