# This class make sure pathogen is installed and the .vim directories exist
class vim::setup {
  file { ["/Users/${::luser}/.vim",
    	  "/Users/${::luser}/.vim/autoload",
          "/Users/${::luser}/.vim/bundle"]:
    ensure  => directory,
    recurse => true,
  }

  repository { "/Users/${::luser}/.vim/vim-pathogen":
    source => 'tpope/vim-pathogen'
  }

  file { "/Users/${::luser}/.vim/autoload/pathogen.vim":
    target  => "/Users/${::luser}/.vim/vim-pathogen/autoload/pathogen.vim",
    require => [
      File["/Users/${::luser}/.vim"],
      File["/Users/${::luser}/.vim/autoload"],
      File["/Users/${::luser}/.vim/bundle"],
      Repository["/Users/${::luser}/.vim/vim-pathogen"]
    ]
  }
}
