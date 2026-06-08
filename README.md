# tree-sitter-masterbelt

The [tree-sitter](https://tree-sitter.github.io/) grammar for the
[masterbelt](https://github.com/masterbelt/masterbelt) language.

> **This repository is a generated mirror — do not edit it here.** The source is
> `toolchain/grammars/tree-sitter-masterbelt` in the masterbelt monorepo; this
> tree is assembled and published from there (`build/publish-tree-sitter.sh`).
> Cut from masterbelt commit `6f2116d600c773f346fe78c0e677ce97c3adfead`.

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
