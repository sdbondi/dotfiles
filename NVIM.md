# Neovim key bindings

Config: `~/.config/nvim/init.lua`. **Leader is `<Space>`** (and `<Space>` alone does nothing).

## Running Rust tests

| Key | Mode | Action |
| --- | --- | --- |
| `<leader>rt` | n | Run `cargo test` for the **current file's module** (rust-analyzer runnable, module-level) |
| `<leader>rn` | n | Run only the **test under the cursor** (`--exact`) |

Both open a 15-line terminal split below the current window and run the real `cargo` command
that rust-analyzer's `experimental/runnables` reports. If nothing matches you get a
`No cargo runnables found` / `No matching test runnable found` notification.
Only available in LSP-attached buffers (i.e. rust-analyzer running).

Related Rust workflow:

- Format-on-save is automatic for any LSP that supports formatting. In `~/tari/dan` rustfmt is
  pinned to `nightly-2025-12-05` so it matches the project's `cargo +nightly fmt`.
- `<leader>f` — format the buffer manually (async).

## Essentials

| Key | Mode | Action |
| --- | --- | --- |
| `<leader>w` | n | Quick save |
| `;` | n | `:` (no shift needed) |
| `<C-j>` / `<C-k>` | all | Esc (every mode: n, i, v, s, x, c, o, l, t) |
| `<C-h>` | n, v | `:nohlsearch` — stop highlighting the search |
| `<F1>` | n, i | Esc (you meant Esc) |
| `<leader><leader>` | n | Toggle to the alternate buffer (`<C-^>`) |
| `<leader>o` | n | `:e` prefilled with the current file's directory |
| `<leader>,` | n | Toggle visible whitespace (`:set invlist`) |
| `<leader>m` | n | Change up to the next `_` (`ct_`) — for variable names |

## Movement

| Key | Mode | Action |
| --- | --- | --- |
| `H` / `L` | all | Start / end of line (`^` / `$`) |
| `j` / `k` | n | Move by *visual* line (`gj` / `gk`) |
| `<left>` / `<right>` | n | Previous / next buffer (`:bp` / `:bn`) |
| `<up>` / `<down>` | n | Disabled |
| `<up>` `<down>` `<left>` `<right>` | i | Disabled — use the home row |
| `gs` | n, x, o | leap.nvim jump (`s`/`S` keep vanilla substitute) |
| `gS` | n | leap across windows |
| `%` | n | vim-matchup; off-screen match shown in a popup |

## Search

| Key | Mode | Action |
| --- | --- | --- |
| `/` and `?` | n | Search with "very magic" regex (`\v` prepended) |
| `n` `N` `*` `#` `g*` | n | As usual, but always centre the screen (`zz`) |
| `%s/` | c | Expands to `%sm/` |

## Files, grep, tree

| Key | Mode | Action |
| --- | --- | --- |
| `<C-p>` | all | fzf file open, proximity-sorted to the current file |
| `<leader>s` | n | Live grep the project (fzf-lua) |
| `<leader>S` | n | Grep the word under the cursor |
| `<leader>;` | n | Switch buffer (fzf-lua, paths only) |
| `<leader>n` | n | Toggle the nvim-tree sidebar |
| `<leader>N` | n | Reveal the current file in the tree |
| `<leader>ff` | n | Reveal the current file in the tree (alias) |

fzf windows open as a 10-line (20 for greps) split below, preview hidden.

## LSP (buffer-local, once a server attaches)

| Key | Mode | Action |
| --- | --- | --- |
| `gd` | n | Go to definition |
| `gD` | n | Go to declaration |
| `gi` | n | Go to implementation |
| `gr` | n | References (fzf picker) |
| `gR` | n | **Incoming calls only** — callers via the call hierarchy |
| `K` | n | Hover docs |
| `<C-k>` | n | Signature help (**overrides the Esc mapping in LSP buffers**) |
| `<leader>r` | n | Rename symbol |
| `<leader>a` | n, v | Code action |
| `<leader>f` | n | Format buffer (async) |
| `<leader>wa` / `<leader>wr` | n | Add / remove workspace folder |
| `<leader>wl` | n | List workspace folders |
| `<C-x><C-o>` | i | Omni-completion via LSP |

Inlay hints and semantic-token highlighting are deliberately off.

## Diagnostics

| Key | Mode | Action |
| --- | --- | --- |
| `<leader>e` | n | Open the diagnostic float for the line |
| `[d` / `]d` | n | Previous / next diagnostic |
| `<leader>q` | n | Send diagnostics to the location list |

## Completion (nvim-cmp, insert mode)

| Key | Action |
| --- | --- |
| `<CR>` | Accept the selected item |
| `<C-Space>` | Trigger completion |
| `<C-e>` | Abort |
| `<C-b>` / `<C-f>` | Scroll the docs window up / down |

Plus cmp's `preset.insert` defaults (`<C-n>`/`<C-p>` to cycle items). Ghost text is on.
Path completion also works on the `:` command line.

## Clipboard (X11, via `xclip`)

| Key | Mode | Action |
| --- | --- | --- |
| `<leader>p` | n | Paste the system clipboard into the buffer |
| `<leader>c` | n | Copy the **whole buffer** to the system clipboard |
| `<leader>y` | n | Copy the current file's **absolute** path |
| `<leader>Y` | n | Copy the current file's path **relative to cwd** |

## Writing mode

| Key | Mode | Action |
| --- | --- | --- |
| `<leader>t` | all | No-Neck-Pain: centre the editor and switch to prose settings (soft wrap, no autoindent). Also remaps `0`, `^`, `$` to their `g`-prefixed visual-line versions. |

## Multi-cursor (vim-visual-multi defaults)

| Key | Action |
| --- | --- |
| `<C-n>` | Select the word under the cursor / add the next occurrence |
| `n` / `N` | Next / previous occurrence |
| `q` | Skip this occurrence |
| `Q` | Remove the current cursor |

## Not a key binding, but good to know

- Relative line numbers are on (absolute on the current line), so `5j` / `12k` are cheap.
- Folding is disabled everywhere.
- Undo is persistent, in `~/.local/state/nvim/undo/`.
- Opening a file jumps to your last edit position (except in git commit messages).
- `text`, `markdown`, `mail`, `gitcommit` get spell check and `tw=72`; `tex` gets `tw=80`.
