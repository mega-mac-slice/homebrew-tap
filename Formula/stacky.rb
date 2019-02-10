
class Stacky < Formula
  include Language::Python::Virtualenv
  desc "Stacky"
  homepage "https://github.com/mega-mac-slice/stacky"
  url "https://raw.githubusercontent.com/mega-mac-slice/stacky/master/dist/stacky-0.0.1.tar.gz"
  sha256 "758e6b63bf23bf2c0a29d085a2d5bd0907ba6ce0e3ab51ab3b7883f7ece9fc65"
  version "0.0.1"
  depends_on "python"
  depends_on "python3"
  def install
    venv = virtualenv_create(libexec, "python3")
    venv.pip_install resources
    venv.pip_install_and_link buildpath
  end
  test do
    system "stacky"
  end
end