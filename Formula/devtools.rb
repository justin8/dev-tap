class Devtools < Formula
  desc "Developer tools script"
  homepage "https://github.com/justin8/homebrew-dev-tap"
  url "file:///dev/null"
  version "1.0.0"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  def install
    (bin/"devtools").write <<~EOS
      #!/bin/bash
      echo "working"
    EOS
  end

  test do
    assert_equal "working\n", shell_output(bin/"devtools")
  end
end
