MARP = marp --html

build: node_modules index.md
	$(MARP) index.md

watch:
	$(MARP) --watch index.md

clean:
	rm -rf index.html

distclean: clean
	rm -rf node_modules

node_modules:
	npm install
