PO:=$(wildcard *.po)
LANG_=en.lang $(PO:.po=.lang)

all: ../transport.validator.zip

transport_mapcss.pot: ../transport.validator.mapcss
	sed -i "s/^#: .*//" $@
	xgettext --join-existing -cTRANSLATORS \
	  --keyword=tr \
	  --language=C \
	  --force-po --omit-header \
	  --output=$@ $<

%.po: transport_mapcss.pot
	msgmerge --no-fuzzy-matching --update $@ $<

i18n.pl:
	wget https://raw.githubusercontent.com/openstreetmap/svn-archive/main/applications/editors/josm/i18n/i18n.pl

en.lang: $(PO) i18n.pl
	perl i18n.pl --potfile=transport_mapcss.pot $(patsubst %,./%,$(PO))

../transport.validator.zip: ../transport.validator.mapcss en.lang
	rm -f $@
	mkdir -p data
	perl i18n.pl --potfile=transport_mapcss.pot ./fr.po
	mv $(LANG_) data
	zip $@ data/*
	zip -j $@ ../transport.validator.mapcss
	rm -fr data

clean:
	rm -f $(LANG_)
	rm -fr data
	rm -f i18n.pl
	rm -f ../transport.validator.zip
	rm *.po~
