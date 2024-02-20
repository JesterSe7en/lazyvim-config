return {
  {
    "ldelossa/nvim-dap-projects",
    config = function()
      require("nvim-dap-projects").search_project_config()
    end,
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      vim.fn.sign_define("DapStopped", { text = "", texthl = "DiagnosticWarn" })
      vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DiagnosticInfo" })
      vim.fn.sign_define("DapBreakpointRejected", { text = "", texthl = "DiagnosticError" })
      vim.fn.sign_define("DapBreakpointCondition", { text = "", texthl = "DiagnosticInfo" })
      vim.fn.sign_define("DapLogPoint", { text = ".>", texthl = "DiagnosticInfo" })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = "mason.nvim",
    cmd = { "DapInstall", "DapUninstall" },
    opts = {
      -- Makes a best effort to setup the various debuggers with
      -- reasonable debug configurations
      automatic_installation = true,

      -- You can provide additional configuration to the handlers,
      -- see mason-nvim-dap README for more information
      handlers = {},

      -- You'll need to check that you have the required things installed
      -- online, please don't ask me how to install them :)
      ensure_installed = {
        "cppdbg",
        -- Update this to ensure that you have the debuggers for the langs you want
      },
    },
  },
}
