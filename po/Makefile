PO:=$(wildcard *.po)

all: fr.lang

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
