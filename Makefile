# only really known to work on ubuntu, if you're using anything else, hopefully
# it should at least give you a clue how to install it by hand
# TODO: parameterize this and the xml file (maybe scons?)
install:
	mkdir -p /usr/share/ibus-uniemoji /etc/xdg/uniemoji
	cp uniemoji.py engine.py uniemoji.svg /usr/share/ibus-uniemoji
	chmod a+x /usr/share/ibus-uniemoji/uniemoji.py /usr/share/ibus-uniemoji/engine.py
	cp uniemoji.xml /usr/share/ibus/component

uninstall:
	rm -rf /usr/share/ibus-uniemoji
	rm -rf /etc/xdg/uniemoji
	rm -f /usr/share/ibus/component/uniemoji.xml
