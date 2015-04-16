require 'formula'

class Butler < Formula
  homepage 'https://github.com/michaeldfallen/butler'
  url 'https://github.com/michaeldfallen/butler/archive/0.5.tar.gz'
  sha1 '58ff9c44d5b6faef7128aff5b2804418bca85c05'

  head 'https://github.com/michaeldfallen/butler.git'

  def install
    libexec.install 'butler'
    libexec.install 'butler-base.sh'
    libexec.install 'complete.zsh'
    libexec.install 'complete.bash'
    libexec.install 'init.sh'
    bin.install_symlink libexec/'butler'
  end
end
