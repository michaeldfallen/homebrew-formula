require 'formula'

class Butler < Formula
  homepage 'https://github.com/michaeldfallen/butler'
  url 'https://github.com/michaeldfallen/butler/archive/0.1.tar.gz'
  sha1 '2ae30a468db6abe40db5da4452e6e8e4c7eaa278'

  head 'https://github.com/michaeldfallen/butler.git'

  def install
    libexec.install 'butler'
    libexec.install 'butler-base.sh'
    bin.install_symlink libexec/'butler'
  end
end
