require 'formula'

class Butler < Formula
  homepage 'https://github.com/michaeldfallen/butler'
  url 'https://github.com/michaeldfallen/butler/archive/0.2.tar.gz'
  sha1 'b997c07c03588e7e2cbd30f4eb1c6a0af004da41'

  head 'https://github.com/michaeldfallen/butler.git'

  def install
    libexec.install 'butler'
    libexec.install 'butler-base.sh'
    bin.install_symlink libexec/'butler'
  end
end
