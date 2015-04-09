require 'formula'

class Butler < Formula
  homepage 'https://github.com/michaeldfallen/butler'
  url 'https://github.com/michaeldfallen/butler/archive/0.1.tar.gz'
  sha1 '13d053fe7d016a9178640c99c08c72dbe5976658'

  head 'https://github.com/michaeldfallen/butler.git'

  def install
    bin.install 'butler' => 'butler'
  end
end
