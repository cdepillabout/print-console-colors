# print-console-colors

[![Build Status](https://secure.travis-ci.org/cdepillabout/print-console-colors.svg)](http://travis-ci.org/cdepillabout/print-console-colors)
[![Hackage](https://img.shields.io/hackage/v/print-console-colors.svg)](https://hackage.haskell.org/package/print-console-colors)
[![Stackage LTS](http://stackage.org/package/print-console-colors/badge/lts)](http://stackage.org/lts/package/print-console-colors)
[![Stackage Nightly](http://stackage.org/package/print-console-colors/badge/nightly)](http://stackage.org/nightly/package/print-console-colors)
[![BSD3 license](https://img.shields.io/badge/license-BSD3-blue.svg)](./LICENSE)

Print all the ANSI console colors for your terminal.

[![Picture showing how the program looks](./img/example.png)](./img/example.png)

This program is useful when trying to set your terminal emulator colors, for
instance, when configuring [Termonad](https://github.com/cdepillabout/termonad).

## Installation

`print-console-colors` is available on
[Hackage](http://hackage.haskell.org/package/print-console-colors).  You can
install it with [`stack`](https://docs.haskellstack.org/en/stable/README/),
[`cabal`](https://www.haskell.org/cabal/), or [`nix`](https://nixos.org/nix/).

-   **Stack**:

    ```console
    $ stack install print-console-colors
    ```

-   **Cabal**:

    ```console
    $ cabal install print-console-colors
    ```

-   **Nix**:

    ```
    $ nix-env -f '<nixpkgs>' -iA haskellPackages.print-console-colors
    ```

## Usage

After installing it, just run the `print-console-colors` command!
