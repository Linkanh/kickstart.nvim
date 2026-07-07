return {
  -- Seamless Ctrl-h/j/k/l between nvim splits and tmux panes
  { 'christoomey/vim-tmux-navigator' },

  -- Git: fugitive + side-by-side diff/PR review
  { 'tpope/vim-fugitive' },
  { 'sindrets/diffview.nvim', cmd = { 'DiffviewOpen', 'DiffviewFileHistory' } },

  -- Helm filetype detection so templates aren't parsed as broken YAML
  { 'towolf/vim-helm', ft = 'helm' },

  -- Project-wide diagnostics list
  { 'folke/trouble.nvim', opts = {}, cmd = 'Trouble' },

  -- Claude Code integration (native diff-accept, selection context)
  {
    'coder/claudecode.nvim',
    dependencies = { 'folke/snacks.nvim' },
    config = true,
    keys = {
      { '<leader>ac', '<cmd>ClaudeCode<cr>', desc = 'Toggle Claude Code' },
    },
  },
}
