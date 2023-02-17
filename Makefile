all: deploy open

.PHONY: deploy
deploy:
	rsync -avz \
		--exclude .DS_Store \
		--exclude .git \
		./ \
		towns.dreamhost.com:~/cubing.net/
	@echo "\nDone deploying. Go to https://cubing.net/\n"

.PHONY: open
open:
	open "https://cubing.net/"
