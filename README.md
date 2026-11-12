# SiftMac on Homebrew

[SiftMac](https://siftmac.com) is the Mac cleaner that explains every file before it goes: does it come back?
Anything that can't rebuild waits 7 days on the Undo Shelf. Pay once, no subscription.

```sh
brew install --cask mohit-nippanikar78/tap/siftmac
```

The download is notarized by Apple. SiftMac updates itself, so `brew upgrade` isn't needed.
Scanning is free, and so is the first 2 GB of cleaning; a licence is $12 once for the first 100 buyers, then $19.

To remove SiftMac and everything it keeps: `brew uninstall --zap --cask siftmac`.
