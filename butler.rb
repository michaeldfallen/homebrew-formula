require 'formula'

class Butler < Formula
  homepage 'https://github.com/michaeldfallen/butler'
  url 'https://bintray.com/artifact/download/michaelallen/homebrew-releases/butler-0.7.tar.gz'
  sha1 '3f0d08a1fa46133ca3acf33d992fc43f2be39438'

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
