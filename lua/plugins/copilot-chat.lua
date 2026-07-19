---@type LazySpec
return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
    },
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    cmd = {
      "CopilotChat",
      "CopilotChatOpen",
      "CopilotChatClose",
      "CopilotChatToggle",
      "CopilotChatReset",
      "CopilotChatModels",
      "CopilotChatPrompts",
    },
    keys = {
      { "<Leader>cc", "<Cmd>CopilotChatToggle<CR>", desc = "CopilotChat Toggle" },
      { "<Leader>ce", "<Cmd>CopilotChatExplain<CR>", mode = "x", desc = "CopilotChat Explain" },
      { "<Leader>cr", "<Cmd>CopilotChatReview<CR>", mode = "x", desc = "CopilotChat Review" },
      { "<Leader>cf", "<Cmd>CopilotChatFix<CR>", mode = "x", desc = "CopilotChat Fix" },
      { "<Leader>co", "<Cmd>CopilotChatOptimize<CR>", mode = "x", desc = "CopilotChat Optimize" },
    },
    opts = {
      model = "gpt-5-mini",
      window = {
        layout = "vertical",
        width = 0.45,
      },
    },
  },
}