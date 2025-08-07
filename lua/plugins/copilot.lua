return {
  "zbirenbaum/copilot.lua",
  -- cmd = "Copilot",
  -- build = ":Copilot auth",
  -- event = "BufReadPost",
  opts = {
    suggestion = {
      auto_trigger = true,
      keymap = {
        accept = false, -- handled by completion engine
      },
    },
    filetypes = {
      ["*"] = false, -- Disable by default
      lua = true, -- Explicitly enable others
      python = true,
      javascript = true,
      typescript = true,
      markdown = true,
      gitcommit = true,
      gitrebase = true,
      yaml = true,
      json = true,
      toml = true,
      ruby = true,
      help = false,
    },
  },

  keys = {
    { "<leader>Oa", "<cmd>Copilot auth<CR>", desc = "Copilot: Authenticate" },
    { "<leader>Od", "<cmd>Copilot disable<CR>", desc = "Copilot: Disable" },
    { "<leader>Oe", "<cmd>Copilot enable<CR>", desc = "Copilot: Enable" },
    { "<leader>Op", "<cmd>Copilot panel<CR>", desc = "Copilot: Panel" },
    { "<leader>Or", "<cmd>Copilot reload<CR>", desc = "Copilot: Reload" },
    { "<leader>Os", "<cmd>Copilot panel<CR>", desc = "Copilot: Show Panel" },
    { "<leader>Ot", "<cmd>Copilot toggle<CR>", desc = "Copilot: Toggle" },
  },

  config = function(_, opts)
    require("copilot").setup(opts)

    -- Register the group name with which-key
    require("which-key").add {
      { "<leader>O", group = "Copilot" },
    }
  end,

  -- Uncomment the following to integrate with AstroNvim's `ai_accept` function
  -- specs = {
  --   {
  --     "AstroNvim/astrocore",
  --     opts = {
  --       options = {
  --         g = {
  --           -- set the ai_accept function
  --           ai_accept = function()
  --             if require("copilot.suggestion").is_visible() then
  --               require("copilot.suggestion").accept()
  --               return true
  --             end
  --           end,
  --         },
  --       },
  --     },
  --   },
  -- },
}
