return {
  'epwalsh/obsidian.nvim',
  version = '*',
  lazy = true,
  event = {
    'BufReadPre /Users/pranavsukumaran/Documents/Obsidian Vault/**/*.md',
    'BufNewFile /Users/pranavsukumaran/Documents/Obsidian Vault/**/*.md',
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
    'nvim-telescope/telescope.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  opts = {
    -- Organized Workspaces for Your Vault and Directories
    workspaces = {
      {
        name = 'Obsidian Vault',
        path = '/Users/pranavsukumaran/Documents/Obsidian Vault',
      },
      {
        name = 'Neovim Notes',
        path = '/Users/pranavsukumaran/Documents/Obsidian Vault/Neovim/',
        -- Optional overrides for this specific directory
        overrides = {
          -- Add any specific settings for your Neovim notes directory
        },
      },
      {
        name = 'Cloud Practitioner CLF_C02',
        path = '/Users/pranavsukumaran/Documents/Obsidian Vault/Cloud-Practioner-CLF_C02/',
        -- Optional overrides for this specific directory
        overrides = {
          -- Add any specific settings for your Cloud Practitioner notes directory
        },
      },
      -- Add more workspaces for other directories as needed...
    },
    auto_create_properties = false,

    -- Log Level for Debugging (Optional)
    log_level = vim.log.levels.INFO,

    -- Daily Notes Configuration
    daily_notes = {
      folder = 'Daily Notes',
      date_format = '%Y-%m-%d',
      alias_format = '%A, %B %d, %Y', -- More descriptive alias
      template = 'daily_note_template.md', -- Optional template file
    },

    -- Completion Settings
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },

    -- Key Mappings
    mappings = {
      ['<leader>zn'] = { '<cmd>ObsidianNew<CR>', desc = 'New Note' },
      ['<leader>zt'] = { '<cmd>ObsidianToday<CR>', desc = "Today's Note" },
      ['<leader>zl'] = { '<cmd>ObsidianLinks<CR>', desc = 'List Links in Note' },
      -- ...other default mappings (see full documentation)
    },

    -- UI Enhancements
    ui = {
      enable = true,
      update_debounce = 200,
      max_file_length = 5000,
      checkboxes = {
        [' '] = { char = '☐', hl_group = 'ObsidianTodo' },
        ['x'] = { char = '☑', hl_group = 'ObsidianDone' },
        ['-'] = { char = '❍', hl_group = 'ObsidianPartial' },
      },
      bullets = { char = '•', hl_group = 'ObsidianBullet' },
      external_link_icon = { char = '', hl_group = 'ObsidianExtLinkIcon' }, -- Requires Nerd Fonts
      -- ...other UI options (see full documentation)
    },

    -- Template Customization
    templates = {
      folder = 'templates',
      date_format = '%Y-%m-%d',
      time_format = '%H:%M',
      substitutions = {
        today = function()
          return os.date '%Y-%m-%d'
        end,
        now = function()
          return os.date '%H:%M'
        end,
      },
    },

    -- Other Options
    preferred_link_style = 'wiki',
    disable_frontmatter = false,
    -- ... (More options available in the documentation)
  },
}
