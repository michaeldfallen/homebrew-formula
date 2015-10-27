require 'formula'

# Homebrew formula that installs git-radar
class GitRadar < Formula
  homepage 'https://github.com/michaeldfallen/git-radar'
  url 'https://github.com/michaeldfallen/git-radar/releases/download/v0.5/git-radar-0.5.tar.gz'
  sha1 '629bf547fda1e9fa54332998169c011040a179df'

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
