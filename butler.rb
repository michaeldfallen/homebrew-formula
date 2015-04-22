require 'formula'

class Butler < Formula
  homepage 'https://github.com/michaeldfallen/butler'
  url 'https://bintray.com/artifact/download/michaelallen/homebrew-releases/butler-0.6.tar.gz'
  sha1 '5189bfa0d46a99c3ea9b18ee509dfadcc8b9004f'

  head 'https://github.com/michaeldfallen/butler.git'

  depends_on 'coreutils'

  def install
    libexec.install 'butler'
    libexec.install 'butler-base.sh'
    libexec.install 'complete.zsh'
    libexec.install 'complete.bash'
    libexec.install 'init.sh'
    bin.install_symlink libexec/'butler'

    ohai "Bash and Zsh completion

To enable completion add:

    source \"$(butler --init-completion)\"

To your ~/.bashrc or ~/.zshrc"
  end
end
