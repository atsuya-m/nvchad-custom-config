---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["0"] = { "^", "beginning of line character", opts = { nowait = true } },
    ["^"] = { "0", "beginning of line", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.GIHTUB = {
  n = {
    ["<Leader>gr"] = { ":OpenInGHRepo<CR>", "Open In Github Repository", opts = { nowait = true } },
    ["<Leader>gf"] = { ":OpenInGHFile<CR>", "Open In Github File", opts = { nowait = true } },
  },
  v = {
    ["<Leader>gl"] = { ":OpenInGHFileLines<CR>", "Open In Github File Lines", opts = { nowait = true } },
  },
}

M.MOTION = {
  i = {
    ["<C-a>"] = { "<Home>", "Beginning of line" },
    ["<C-e>"] = { "<End>", "End of line" },
    ["<C-b>"] = { "<Left>", "Move left" },
    ["<C-f>"] = { "<Right>", "Move right" },
    ["<C-n>"] = { "<Down>", "Move down" },
    ["<C-p>"] = { "<Up>", "Move up" },
    ["<C-h>"] = { "<BS>", "Backspace" },
    ["<C-d>"] = { "<Del>", "Delete" },
  },
  n = {
    ["0"] = { "^", "Beginning of line character", opts = { nowait = true } },
    ["^"] = { "0", "Beginning of line", opts = { nowait = true } },
  },
}

M.BUFFER = {
  n = {
    ["s"] = { "<Nop>", "Nop" },
    ["ss"] = { ":<C-u>sp<CR>", "Split Buffer" },
    ["sv"] = { ":<C-u>vs<CR>", "Split Buffer Vertically" },
    ["sm"] = { "<C-w>_<C-w>|<CR>", "Maximize Current Buffer" },
    ["s="] = { "<C-w>=<CR>", "Equals All Buffer Size" },
    ["sq"] = { ":<C-u>q<CR>", "Quit Current Buffer" },
  },
}

M.FILER = {
  n = {
    ["<Leader>fd"] = { ":NvimTreeToggle<CR>", "Toggle NvimTree" },
  },
}

M.LSP = {
  n = {
    ["<Leader>ld"] = {
      function()
        vim.lsp.buf.definition()
      end,
      "Definition",
    },

    ["<Leader>lh"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "Hover",
    },

    ["<Leader>li"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      "Implementation",
    },

    ["<leader>lt"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      "Definition type",
    },

    ["<leader>ln"] = {
      function()
        require("nvchad.renamer").open()
      end,
      "Rename",
    },

    ["<leader>la"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "Code Action",
    },

    ["<Leader>lr"] = {
      function()
        vim.lsp.buf.references()
      end,
      "References",
    },
  },
}

M.lspconfig = { plugin = false }
M.blankline = { plugin = false }
M.nvterm = { plugin = false }

M.disabled = {
  n = {
    ["<leader>v"] = "",
    ["<A-i>"] = "",
    ["<A-h>"] = "",
    ["<A-v>"] = "",
    ["<C-a>"] = "",
    ["[d"] = { "" },
    ["]d"] = { "" },
    ["gD"] = { "" },
    ["gd"] = { "" },
    ["K"] = { "" },
    ["gi"] = { "" },
    ["gr"] = { "" },
    ["<leader>ca"] = { "" },
    ["<leader>ls"] = { "" },
    ["<leader>ra"] = { "" },
    ["<leader>D"] = { "" },
    ["<leader>wr"] = { "" },
    ["<leader>wa"] = { "" },
    ["<leader>lf"] = { "" },
    ["<leader>q"] = { "" },
    ["<leader>wl"] = { "" },
    ["<C-n>"] = { "" },
    ["<leader>e"] = { "" },
    ["<leader>cc"] = { "" },
  },
  v = {
    ["<leader>ca"] = { "" },
  },
}

return M
