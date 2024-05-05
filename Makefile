all: deploy open

.PHONY: deploy
deploy:
	bun x @cubing/deploy

.PHONY: open
open:
	open "https://cubing.net/"
