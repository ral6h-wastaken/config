return {
  {
    "FabijanZulj/blame.nvim",
    lazy = false,
    config = function()
      require('blame').setup {
        focus_blame = false,
      }
    end,
  },
}
