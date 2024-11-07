PREFIX=/usr/local
NEXT_YEAR=2038

install:
	install -m0755 bin/sonox $(PREFIX)/bin/sonox

append:
	curl 'https://aa.usno.navy.mil/api/seasons?year=$(NEXT_YEAR)' \
		| ./usno-format \
		>> bin/sonox

.PHONY: install append
