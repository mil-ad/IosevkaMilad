.PHONY: build-iosevka

build-iosevka:
	git clone --depth 1 https://github.com/be5invis/Iosevka.git repo || true
	isinstalled || yay -S --noconfirm ttfautohint || true
	cp private-build-plans.toml repo || true
	cd repo && npm install
	cd repo && npm run build -- ttf::IosevkaMilad webfont::IosevkaMilad
	rm -r IosevkaMilad
	cp -r repo/dist/IosevkaMilad .

