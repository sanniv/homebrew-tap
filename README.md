# sanniv's Homebrew tap

## sanniv-browserosaurus

Fork of [Browserosaurus](https://github.com/will-stone/browserosaurus) (GPL-3.0, now archived upstream) that fixes the long-standing multiple-desktops/Spaces bug ([upstream issue #595](https://github.com/will-stone/browserosaurus/issues/595)): the browser picker sliding to a random desktop and instantly disappearing.

Source: https://github.com/sanniv/sanniv-browserosaurus (branch `fix/picker-window-spaces`)

```bash
brew tap sanniv/tap
brew install --cask --no-quarantine sanniv-browserosaurus
```

`--no-quarantine` matters: the build is not code-signed, and without it macOS will report the app as "damaged". Apple Silicon only.
