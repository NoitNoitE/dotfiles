return {
	'vyfor/cord.nvim',
	---@type CordConfig
	opts = {
		text = {
		editing = function(opts)
			return string.format('Editing %s', opts.filename)
		end,
		},
	}
}
