if true then
  return {
    -- add mason pre-installed plugins
    {
      "williamboman/mason.nvim",
      opts = {
        ensure_installed = {
          "stylua",
          "shellcheck",
          "shfmt",
          "nomicfoundation-solidity-language-server",
          -- "vscode-solidity-server",
          "black",
          "codelldb",
          "astro-language-server",
        },
      },
    },
    -- add formatters
    {
      "stevearc/conform.nvim",
      opts = {
        formatters_by_ft = {
          ["solidity"] = { "forge" },
          ["rust"] = { "leptos_fmt" },
          ["python"] = { "black" },
        },
        formatters = {
          forge = {
            command = "forge",
            args = { "fmt", "$FILENAME" },
            stdin = false,
          },
          leptos_fmt = {
            command = "leptosfmt",
            args = { "$FILENAME" },
            stdin = false,
          },
        },
      },
    },
  }
end
