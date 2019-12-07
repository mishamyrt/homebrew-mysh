class Mysh < Formula
    desc "A tool for improving SSH user experience"
    homepage "https://github.com/mishamyrt/mysh/"
    url "https://github.com/mishamyrt/mysh/releases/download/v0.1.0/mysh_0.1.0_darwin_amd64.tar.gz"
    version "0.1.0"
    sha256 "f034bf2dd1b56126f4af72e782acfaa18e386506bae626006a75924983bf1663"
  
    def install
      bin.install "mysh"
      bin.install "core_mysh"
      bash_completion.install "mysh.bash" => "mysh"
      fish_completion.install "mysh.fish" => "mysh"
    end
end