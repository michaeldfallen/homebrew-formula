require 'formula'

class Butler < Formula
  homepage 'https://github.com/michaeldfallen/butler'
  url 'https://github.com/michaeldfallen/butler/archive/0.3.tar.gz'
  sha1 '5e91699d4396b864146ac4e3a49be93930663065'

  head 'https://github.com/michaeldfallen/butler.git'

  def install
    libexec.install 'butler'
    libexec.install 'butler-base.sh'
    bin.install_symlink libexec/'butler'
  end
end
