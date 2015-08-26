require 'formula'

# Homebrew formula that installs git-radar
class GitRadar < Formula
  homepage 'https://github.com/michaeldfallen/git-radar'
  url 'https://github.com/michaeldfallen/git-radar/archive/0.2.tar.gz'
  sha1 'ed09c09d0d2d5e502b24696cf00c5cb3e401cc92'

  head 'https://github.com/michaeldfallen/git-radar.git'

  depends_on 'coreutils'

  def install
    libexec.install 'git-radar'
    libexec.install 'radar-base.sh'
    libexec.install 'prompt.zsh'
    libexec.install 'prompt.bash'
    libexec.install 'fetch.sh'
    bin.install_symlink libexec/'git-radar'

    ohai "Bash and Zsh installation

Bash
  export PS1=\"\W\$(git-radar --bash --fetch) \"

Zsh
  export PROMPT=\"%1/%\$(git-radar --zsh --fetch) \"
"
  end
end
