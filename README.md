# zmk-corne

splitkb.com Aurora Corne ZMK Config with nice!nano and nice!view

## Builds

### Download the latest firmware

```shell
gh api -H "Accept: application/vnd.github+json" /repos/kakkoyun/zmk-corne/actions/artifacts | jq ".artifacts[0].archive_download_url" | xargs gh api > dist/firmware.zip
# OR
make latest
```

---

<img src="img/splitkb_aurora_corne.svg" alt="keymap layout graphical representation" width="100%" />

> Drawn with [Keymap Drawer](/caksoylar/keymap-drawer)

## Inspiration

- https://github.com/urob/zmk-config
- https://github.com/minusfive/zmk-config
- https://github.com/SethMilliken/swept-corne-zmk
