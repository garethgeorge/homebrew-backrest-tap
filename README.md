## Backrest Homebrew Tap

This repository hosts a [homebrew tap](https://docs.brew.sh/Taps) for [Backrest](https://github.com/garethgeorge/backrest).

To make use of this brew tap add it to your taps e.g.

```sh
brew tap garethgeorge/homebrew-backrest-tap
```

You can then install the latest version of Backrest by running

```sh
brew install backrest
```

This tap uses [Brew services](https://github.com/Homebrew/homebrew-services) to launch and manage Backrest's lifecycle. Backrest will launch on startup and run on port ':9898` by default.
