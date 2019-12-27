class Mysh < Formula
    desc "A tool for improving SSH user experience"
    homepage "https://github.com/mishamyrt/mysh/"
    url "https://github.com/mishamyrt/mysh/releases/download/v0.1.1/mysh_0.1.1_darwin_amd64.tar.gz"
    version "0.1.1"
    sha256 "07c7097252eee39b1b6895a470458bf6a9bee4e64305f89dbe2104d6ff437445"
  
    def install
      bin.install "mysh"
      bin.install "core_mysh"
      bash_completion.install "mysh.bash" => "mysh"
      fish_completion.install "mysh.fish" => "mysh"
    end

    test do
        assert_match "improving SSH user experience", shell_output("#{bin}/mysh help")
    end
end