.PHONY: download
download:
	gh api -H "Accept: application/vnd.github+json" /repos/kakkoyun/zmk-corne/actions/artifacts | jq ".artifacts[0].archive_download_url" | xargs gh api > dist/firmware.zip

.PHONY: unzip
unzip:
	unzip -o dist/firmware.zip -d dist

.PHONY: latest
latest: download unzip
