require 'formula'

class Butler < Formula
  homepage 'https://github.com/michaeldfallen/butler'
  url 'https://github.com/michaeldfallen/butler/archive/0.3.tar.gz'
  sha1 '7bf7654fe08e0067fa0e87fd93a5ed4317372088'

  head 'https://github.com/michaeldfallen/butler.git'

  def install
    libexec.install 'butler'
    libexec.install 'butler-base.sh'
    bin.install_symlink libexec/'butler'
  end
end
