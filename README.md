# zmk-corne

splitkb.com Aurora Corne ZMK Config with nice!nano and nice!view

## Flashing

```shell
hub api -H "Accept: application/vnd.github+json" /repos/kakkoyun/zmk-corne/actions/artifacts |jq ".artifacts[0].archive_download_url" | xargs hub api > firmware.zip
```

---

<img src="img/splitkb_aurora_corne.svg" alt="keymap layout graphical representation" width="100%" />

> Drawn with [Keymap Drawer](/caksoylar/keymap-drawer)
