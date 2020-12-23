# For Development purposes & Hot Reload

PID = /tmp/luxe-asset.pid

serve: start
	@fswatch -x -o --event Created --event Updated --event Renamed -r -e '.*' -i '\.go$$'  . | xargs -n1 -I{}  make restart || make kill

kill:
	@kill `cat $(PID)` || true

before:
	@echo "**** Code Change Detected - Recompiling Application ****" | tr ' ' -
	@echo "STOPED" && printf '%*s\n' "40" '' | tr ' ' -

start:
	./scripts/development.sh & echo $$! > $(PID)

restart: kill before start
	@echo "STARTED" && printf '%*s\n' "40" '' | tr ' ' -

.PHONY: serve restart kill before start
