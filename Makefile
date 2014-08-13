CFLAGS = -O2 -Wall
HIDAPI = hidraw
LDFLAGS = -lhidapi-$(HIDAPI)

all: usbrelay

clean:
	rm -f usbrelay

install: usbrelay
	install -d $(DESTDIR)/usr/bin
	install -m 0755 usbrelay $(DESTDIR)/usr/bin

.PHONY: all clean install
