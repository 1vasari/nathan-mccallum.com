---
layout: post
title: My Vim Setup
author: Nathan McCallum
tags: programming
date: 2021-03-13
preview: I use vim bindings to program and write. Here's how I set it up.
permalink: /vim/
---

.vimrc:

```
" Enable syntax highlighting and force colours in the terminal
syntax enable
set termguicolors

" Tabsize of 2, please
set tabstop=2
set softtabstop=2

" Fill tabs with spaces
set expandtab

" Show matching brackets
set showmatch

" Show line numbers
set number

" Jump to the start of the line with shift-h
nnoremap H ^

" Jump to the end of the line with shift-l
nnoremap L $

" Jump down by a paragraph with shift-j
nnoremap J }

" Jump up by a paragraph with shift-k
nnoremap K {

" jk is escape
inoremap jk <esc>

" Use a instead of A to insert at the end of the line
nnoremap a A

" Use s instead of :w to save
nnoremap s :update<cr>

" Keep more lines around the cursor visible on the screen
set scrolloff=5

let macvim_skip_colorscheme=1

if has("gui_running")
  syntax on
  colorscheme desert
  set bs=2
  set ai
  set ruler
  set guifont=Inconsolata:h14
endif
```

Visual Studio Code settings.json:

```json
{
  "vim.insertModeKeyBindings": [
    {
      "before": [
        "j",
        "k"
      ],
      "after": [
        "<Esc>"
      ]
    }
  ],
  "vim.normalModeKeyBindingsNonRecursive": [
    {
      "before": [
        "L"
      ],
      "after": [
        "$"
      ]
    },
    {
      "before": [
        "H"
      ],
      "after": [
        "^"
      ]
    },
    {
      "before": [
        "J"
      ],
      "after": [
        "}"
      ]
    },
    {
      "before": [
        "K"
      ],
      "after": [
        "{"
      ]
    },
    {
      "before": [
        "s"
      ],
      "commands": [
        ":w"
      ]
    },
    {
      "before": [
        "a"
      ],
      "after": [
        "A"
      ]
    }
  ],
  "vim.visualModeKeyBindingsNonRecursive": [
    {
      "before": [
        "L"
      ],
      "after": [
        "$"
      ]
    },
    {
      "before": [
        "H"
      ],
      "after": [
        "^"
      ]
    },
    {
      "before": [
        "J"
      ],
      "after": [
        "}"
      ]
    },
    {
      "before": [
        "K"
      ],
      "after": [
        "{"
      ]
    },
    {
      "before": [
        ">"
      ],
      "commands": [
        "editor.action.indentLines"
      ]
    },
    {
      "before": [
        "<"
      ],
      "commands": [
        "editor.action.outdentLines"
      ]
    },
  ],
  "vim.handleKeys": {
    "<C-f>": false,
    "<C-g>": false,
    "<C-w>": false,
    "<C-a>": false,
    "<C-c>": false,
    "<C-v>": false,
    "<C-n>": false
  },
}
```
