node_modules:
	yarn

# Start the app in watch mode with REPL support.
# To connect to the repl with vim, first connect to nREPL using the .nrepl-port
# file (or stdout) using :Connect from a cljs buffer, then run :Piggieback :app
# (the build id of the targeted build actually).
start: node_modules
	clj -m shadow.cljs.devtools.cli watch app

clean:
	rm -rf .nrepl-port .shadow-cljs nashorn_code_cache node_modules public/assets

release: node_modules
	clj -m shadow.cljs.devtools.cli release app
