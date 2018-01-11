## Create volume
create:
	@bash -x scripts/create.sh

## Create hidden volume
create-hidden:
	@bash -x scripts/create-hidden.sh

## Mount volume
mount:
	@bash -x scripts/mount-inner.sh

## Mount inner-volume
mount-inner:
	@bash -x scripts/mount-inner.sh

## Mount outer-volume
mount-outer:
	@bash -x scripts/mount-outer.sh


## Build container
build:
	@bash -x scripts/build.sh

## Push container
push:
	@bash -x scripts/push.sh

## Enter a bash shell within container
shell:
	@bash -x scripts/shell.sh

help:
	@printf "Available targets:\n\n"
	@awk '/^[a-zA-Z\-\_0-9%:\\]+:/ { \
	  helpMessage = match(lastLine, /^## (.*)/); \
	  if (helpMessage) { \
	    helpCommand = $$1; \
	    helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
      gsub("\\\\", "", helpCommand); \
      gsub(":+$$", "", helpCommand); \
	    printf "  \x1b[32;01m%-35s\x1b[0m %s\n", helpCommand, helpMessage; \
	  } \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST) | sort -u
	@printf "\n"