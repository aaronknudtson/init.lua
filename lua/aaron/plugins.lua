local fn = vim.fn

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "rounded" })
        end,
    },
})

-- Install your plugins here
return packer.startup(function(use)
    -- My plugins here

    use("wbthomason/packer.nvim") -- Have packer manage itself
    use("lewis6991/impatient.nvim")

    -- Colorschemes
    use("folke/tokyonight.nvim")
    use("catppuccin/nvim")
    use("ellisonleao/gruvbox.nvim")

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }
    -- -- cmp plugins
    -- use("hrsh7th/nvim-cmp") -- The completion plugin
    -- use("hrsh7th/cmp-buffer") -- buffer completions
    -- use("hrsh7th/cmp-path") -- path completions
    -- use("saadparwaiz1/cmp_luasnip") -- snippet completions
    -- use("hrsh7th/cmp-nvim-lsp")
    -- use("hrsh7th/cmp-nvim-lua")

    -- -- snippets
    -- use("L3MON4D3/LuaSnip") --snippet engine
    -- use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

    -- -- LSP
    -- use("neovim/nvim-lspconfig") -- enable LSP
    -- --[[ use("williamboman/nvim-lsp-installer") -- simple to use language server installer ]]
    -- use("williamboman/mason.nvim")
    -- use("williamboman/mason-lspconfig.nvim")
    -- use("jose-elias-alvarez/null-ls.nvim") -- for formatters and linters
    -- ccls
    --[[ use("ranjithshegde/ccls.nvim") ]]

    -- Telescope
    use("nvim-telescope/telescope.nvim")

    -- Treesitter
    use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
    -- use 'nvim-treesitter/nvim-treesitter-context'
    -- Git
    -- use("lewis6991/gitsigns.nvim")
    use("TimUntersberger/neogit")
    -- Harpoon
    -- use("ThePrimeagen/harpoon")

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
