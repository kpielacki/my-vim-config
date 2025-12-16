return {
    {
      -- Install tree-sitter-cli, gcc (or any C compiler, curl, tar
      -- Run `TSInstall lua` if error "no parser for 'lua' language"
      "nvim-treesitter/nvim-treesitter",
      version = 14,
      opts = {
        ensure_installed = { "c", "lua", "vim", "vimdoc" }, -- Add desired languages here
        highlight = {
          enable = true, -- enables tree-sitter highlighting
        },
        -- ... other configuration
      },
    }, 
    -- {
    --   'b0o/lavi.nvim',
    --   dependencies = { 'rktjmp/lush.nvim' },
    --   config = function()
    --     vim.cmd [[
    --         colorscheme lavi
    --         set number
    --         set colorcolumn=80
    --         set nowrap
    --         set tabpagemax=500
    --         set cursorline
    --         syntax on
    --     ]]
    --   end,
    -- },
    {
      'shaunsingh/moonlight.nvim',
      dependencies = { 'shaunsingh/moonlight.nvim' },
      config = function()
        vim.cmd [[
	    colorscheme moonlight
	    set number
	    set colorcolumn=80
	    set nowrap
            set tabpagemax=500
            set cursorline
            syntax on
	]]
      end,
    },
    {
        "hrsh7th/nvim-cmp",
        version = false, -- last release is way too old
        event = "InsertEnter",
        dependencies = {
          "hrsh7th/cmp-nvim-lsp",
          "hrsh7th/cmp-buffer",
          "hrsh7th/cmp-path",
        },
    },
    -- Uncomment to enable Copilot
    -- :Copilot setup
    -- :Copilot auth
    -- :Copilot status
    -- { "github/copilot.vim" },
    -- {
    --   "zbirenbaum/copilot.lua",
    --   requires = {
    --     "copilotlsp-nvim/copilot-lsp", -- (optional) for NES functionality
    --   },
    --   cmd = "Copilot",
    --   event = "InsertEnter",
    --   config = function()
    --     require("copilot").setup({})
    --   end,
    -- },
    -- {
    --   "zbirenbaum/copilot-cmp",
    --   config = function ()
    --     require("copilot_cmp").setup()
    --   end
    -- },
}
