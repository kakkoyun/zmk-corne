.PHONY: download
download:
	gh api -H "Accept: application/vnd.github+json" /repos/kakkoyun/zmk-corne/actions/artifacts | jq ".artifacts[0].archive_download_url" | xargs gh api > dist/firmware.zip

.PHONY: unzip
unzip:
	unzip -o dist/firmware.zip -d dist

.PHONY: latest
latest: download unzip

.PHONY: build
build: left right

left:
	west build -s zmk/app -b "nice_nano_v2" -- -DZMK_CONFIG="${PWD}/config" -DSHIELD="splitkb_aurora_corne_left nice_view_adapter nice_view"

right:
	west build -s zmk/app -b "nice_nano_v2" -- -DZMK_CONFIG="${PWD}/config" -DSHIELD="splitkb_aurora_corne_right nice_view_adapter nice_view"

.PHONY: toolchain
toolchain:
	west update
	west zephyr-export

.PHONY: init
init: .west

.west:
	west init -l config
