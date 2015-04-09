require 'formula'

class Butler < Formula
  homepage 'https://github.com/michaeldfallen/butler'
  url 'https://github.com/michaeldfallen/butler/archive/0.1.tar.gz'
  sha1 '2ae30a468db6abe40db5da4452e6e8e4c7eaa278'

  head 'https://github.com/michaeldfallen/butler.git'

  def install
    bin.install 'butler' => 'butler'
  end
end
