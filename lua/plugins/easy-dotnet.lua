---@type LazySpec
return {
  {
    "GustavEikaas/easy-dotnet.nvim",
    init = function()
      local dotnet_tools = vim.fn.expand "$HOME/.dotnet/tools"
      local path_sep = vim.fn.has("win32") == 1 and ";" or ":"
      if not string.find(vim.env.PATH or "", dotnet_tools, 1, true) then
        vim.env.PATH = dotnet_tools .. path_sep .. (vim.env.PATH or "")
      end
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "mfussenegger/nvim-dap",
      "folke/snacks.nvim",
    },
    cmd = "Dotnet",
    ft = { "cs", "csproj", "fs", "fsproj", "razor", "cshtml", "sln", "slnx" },
    opts = {
      picker = "snacks",
      lsp = {
        enabled = true,
        set_fold_expr = false,
        preload_roslyn = true,
        roslynator_enabled = true,
        easy_dotnet_analyzer_enabled = true,
        razor = {
          enabled = true,
          html = {
            enabled = true,
          },
        },
      },
      debugger = {
        auto_register_dap = true,
        engine = "netcoredbg",
        console = "integratedTerminal",
      },
      test_runner = {
        auto_start_testrunner = true,
        viewmode = "float",
      },
      diagnostics = {
        default_severity = "error",
        setqflist = false,
      },
      auto_bootstrap_namespace = {
        enabled = true,
        type = "block_scoped",
        use_clipboard_json = {
          behavior = "prompt",
          register = "+",
        },
      },
      csproj_mappings = true,
      fsproj_mappings = true,
    },
  },
}