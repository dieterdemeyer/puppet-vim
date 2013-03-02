# Wunderlist Puppet Module for Boxen

Install [vim](http://www.vim.org/) among with [vim-pathogen](https://github.com/tpope/vim-pathogen) and an easy way to install vim bundles.

This package won't interfere the puppet-macvim package.

## Usage
The following example will install vim, pathogen and the vim_bundle you specify in your ~/.vim/bundle directory

    include vim
    vim::bundle { 'scrooloose/syntastic': }
    vim::bundle { 'sjl/gundo.vim: }


If you have a custom home directory please specify home_dir

    vim::bundle { 'Github_repository':
      home_dir => '/my/custom_homedir',
    }

## Required Puppet Modules

* `boxen`
