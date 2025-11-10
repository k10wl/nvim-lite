# nvim-lite

```bash
brew install ripgrep fd
```

[llama.vim setup](https://github.com/ggml-org/llama.vim)

## Keymaps

### search (telescope.nvim)
| Key | Action |
|-----|--------|
| `<leader>pf` | Find files |
| `<leader>ps` | Grep |
| `<leader>ls` | Buffers |
| `dd` | Delete buffer |

### language support (nvim-lspconfig)
| Key | Action |
|-----|--------|
| `grd` | Definition |
| `grD` | Declaration |
| `gl` | Diagnostics |

### code formatting (conform.nvim)
| Key | Action |
|-----|--------|
| `<leader>f` | Format buffer |

### ai completion (llama.vim)
| Key | Action |
|-----|--------|
| `<C-f>` | Trigger |
| `<Tab>` | Accept full |
| `<C-e>` | Accept line |
| `<C-j>` | Accept word |

### version control (gitsigns)
| Key | Action |
|-----|--------|
| `]c` | Next hunk |
| `[c` | Prev hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hS` | Stage buffer |
| `<leader>hu` | Undo stage |
| `<leader>hR` | Reset buffer |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Blame line |
| `<leader>tb` | Toggle blame |
| `<leader>hd` | Diff |
| `<leader>hD` | Diff ~ |
| `<leader>td` | Toggle deleted |
| `ih` | Hunk text object |
