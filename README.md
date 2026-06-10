# tree-sitter-masterbelt

The [tree-sitter](https://tree-sitter.github.io/) grammar for the
[masterbelt](https://github.com/masterbelt/masterbelt) language.

> **This repository is a generated mirror — do not edit it here.** The source is
> `toolchain/grammars/tree-sitter-masterbelt` in the masterbelt monorepo; this
> tree is assembled and published from there (`build/publish-tree-sitter.sh`).
> Version `0.1.20260610+fe74342`, cut from masterbelt commit `fe74342c578eda1fa61458414965cf28284bb2cd` — the grammar ships
> under the same version as the language it tracks.

The committed `src/parser.c` means consumers need no tree-sitter CLI — only a C
compiler, which the editors invoke for you.

## Using it

Pin a tag or commit (never a moving branch — a moving reference breaks
reproducibility):

- **Neovim** (nvim-treesitter): register `masterbelt` pointing at this repo's
  URL and a fixed revision, then `:TSInstall masterbelt`.
- **Helix** (`languages.toml`): a `[[grammar]]` with `source.git` = this repo and
  `source.rev` = a fixed revision, plus the matching `[[language]]`.
- **Zed**: a language extension referencing this repo's grammar at a fixed rev.
- **GitHub**: registered through Linguist alongside the `.belt` file type.

The highlight queries live in `queries/highlights.scm` (nvim-treesitter capture
names, which GitHub also reads); `queries/helix` and `queries/zed` hold the
variants whose capture vocabulary differs.
