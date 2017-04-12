test: flow.phony build/tests/sample-types_test.js build/src/sample-types.js
	mocha build/tests/sample-types_test.js --color

build/%.js: %.js
	babel --out-dir build $<

flow.phony:
	flow
