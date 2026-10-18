class CommonLispHyperspec < Formula
  desc "HTML reference for the ANSI Common Lisp standard"
  homepage "https://www.lispworks.com/documentation/HyperSpec/Front/index.htm"
  url "https://ftp.lispworks.com/pub/software_tools/reference/HyperSpec-7-0.tar.gz"
  version "7.0"
  sha256 "1ac1666a9dc697dbd8881262cad4371bcd2e9843108b643e2ea93472ba85d7c3"

  def install
    prefix.install "HyperSpec"
  end

  def caveats
    <<~EOS
      Open the HyperSpec in your browser at:
        file://#{opt_prefix}/HyperSpec/Front/index.htm
    EOS
  end

  test do
    assert_path_exists prefix/"HyperSpec/Front/index.htm"
  end
end
