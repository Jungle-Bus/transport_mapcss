PO:=$(wildcard *.po)

all: transport.validator.zip

transport_mapcss.pot: ../transport.validator.mapcss
	sed -i "s/^#: .*//" $@
	LANG=C xgettext --join-existing -cTRANSLATORS \
	  --keyword=tr \
	  --force-po --omit-header \
	  --output=$@ $<

fr.po: transport_mapcss.pot
	msgmerge --update $@ $<

i18n.pl:
	wget https://svn.openstreetmap.org/applications/editors/josm/i18n/i18n.pl

fr.lang: i18n.pl fr.po
	perl i18n.pl --potfile=transport_mapcss.pot ./fr.po

transport.validator.zip: ../transport.validator.mapcss fr.lang
	rm -f transport.validator.zip
	zip -j transport.validator.zip ../transport.validator.mapcss *.lang
