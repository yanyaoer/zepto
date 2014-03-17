VERSION=v1.1.3

default: zepto
	@cd $< && git pull && git checkout $(VERSION) && npm install && MODULES="zepto event ajax form ie callbacks deferred" npm run-script dist
	@cp -f $</dist/zepto.js .
	@cp -f $</dist/zepto.min.js .

zepto:
	@git clone https://github.com/madrobby/zepto.git $@

.PHONY: default
