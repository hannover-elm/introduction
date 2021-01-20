MARP = marp --html
PREFIX = public

build: node_modules index.md
	$(MARP) index.md

pages: build
	mkdir -p $(PREFIX)
	cp index.html $(PREFIX)/

watch:
	$(MARP) --watch index.md

clean:
	rm -rf index.html

distclean: clean
	rm -rf node_modules

node_modules:
	npm install
