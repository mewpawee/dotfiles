if true then
  return {
    {
      "williamboman/mason.nvim",
      opts = {
        ensure_installed = {
          -- "pyright",
          -- "black",
          "stylua",
          "shellcheck",
          "shfmt",
          "nomicfoundation-solidity-language-server",
        },
      },
    },
    {
      "stevearc/conform.nvim",
      opts = {
        formatters_by_ft = {
          ["solidity"] = { "forge" },
          ["rust"] = { "leptos_fmt" },
          -- ["python"] = { "black" },
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
