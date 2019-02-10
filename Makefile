HOMEBREW_TAP=$(shell brew --repo)/Library/Taps/mega-mac-slice/homebrew-tap

dev:
	git clone . ${HOMEBREW_TAP}

dev-reset:
	[ -z "${DEV_FORMULA}" ] || \
		git add -u && git commit --amend -m testing && make clean && make dev && brew install ${DEV_FORMULA}

clean:
	rm -rf ${HOMEBREW_TAP}