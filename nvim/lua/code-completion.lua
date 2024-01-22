-- comleteoptions is used to manage code suggestion format

vim.opt.completeopt ={ 'menuone', 'noselect', 'noinsert', 'preview' }
vim.opt.shortmess = vim.opt.shortmess + { c = true }

local cmp = require 'cmp'

cmp.setup({
	-- Configurations
	-- sources are installed that can be used for code suggestions
	sources = {
		{ name = 'path' },
		{ name = 'nvim_lsp', keyword_length=3 },
		{ name = 'nvim_lsp_signature_help'},
		{ name = 'nvim_lua', keyword_length=3 },
		{ name = 'buffer', keyword_length=3 },
		{ name = 'vsnip', keyword_length=3 },
	},

	-- Window for styling
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	
	-- fromatting icons
	formatting = {
		fields = {'menu', 'abbr', 'kind'},
		format = function(entry, item)
			local menu_icon = {
				nvim_lsp = 'Ÿ',
				vsip = '∞',
				buffer = 'b',
				path = 'p',
			}
			item.menu = menu_icon[entry.source.name]
			return item
		end,
	},
	
	--Mapping are keyboard shortcuts to execute commands
	mapping = {
		-- SHIFT+TAB go to previous suggest item
		['<S-Tab>'] = cmp.mapping.select_prev_item(),
		-- TAB go to next suggest item
		['<Tab>'] = cmp.mapping.select_next_item(),
		-- CTRL+SPACE to bring up the codecompletion at current cursor
		['<C-Space>']= cmp.mapping.complete(),
		-- CTRL+e closet the suggestion tab
		['<C-e>']= cmp.mapping.close(),
		-- Pressing ENTER or RETURN will Confirm and apply 
		['<CR>']= cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		}),
	},
})

