return {
  "nvim-treesitter/nvim-treesitter",
--  build = ":TSUpdate",
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "python", "c_sharp", "css", "csv", "dockerfile", "doxygen", "glsl", "go", "json", "markdown", "make", "cmake", "java" },
      sync_install = false,
      auto_install = true,
      -- highlight = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      -- rainbow = {
      --   enable = true,
      -- }
    }
  end
}
