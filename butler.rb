require 'formula'

class Butler < Formula
  homepage 'https://github.com/michaeldfallen/butler'
  url 'https://github.com/michaeldfallen/butler/archive/0.3.tar.gz'
  sha1 '04bbcfe6df0a6ef7ed5baf9a451d545277930891'

  head 'https://github.com/michaeldfallen/butler.git'

  def install
    libexec.install 'butler'
    libexec.install 'butler-base.sh'
    bin.install_symlink libexec/'butler'
  end
end
