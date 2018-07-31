.PHONY: po mo

po:
	xgettext -Lpython --output=messages.pot animatedbuttons.py libs/uix/kv/basescreen.kv libs/uix/kv/license.kv libs/uix/kv/navdrawer.kv libs/utils/showplugins.py libs/uix/baseclass/basescreen.py
	msgmerge --update --no-fuzzy-matching --backup=off data/locales/po/ru.po messages.pot
	msgmerge --update --no-fuzzy-matching --backup=off data/locales/po/en.po messages.pot

mo:
	mkdir -p data/locales/ru/LC_MESSAGES
	mkdir -p data/locales/en/LC_MESSAGES
	msgfmt -c -o data/locales/ru/LC_MESSAGES/animatedbuttons.mo data/locales/po/ru.po
	msgfmt -c -o data/locales/en/LC_MESSAGES/animatedbuttons.mo data/locales/po/en.po
