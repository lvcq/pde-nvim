-- packer.nvim
--
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.api.nvim_command('packadd packer.nvim')
end

return require('packer').startup(function(use)
	-- Packer itself
	use 'wbthomason/packer.nvim'
	-- color theme
	use 'cocopon/iceberg.vim'
  use {'neoclide/coc.nvim', branch='release'}
  use {
    'nvim-tree/nvim-tree.lua',
    require={
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' --optional, updated every week.
  }
end)


