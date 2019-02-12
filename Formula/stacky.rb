class Stacky < Formula
  include Language::Python::Virtualenv
  desc "Stacky"
  homepage "https://github.com/mega-mac-slice/stacky"
  url "https://raw.githubusercontent.com/mega-mac-slice/stacky/master/dist/stacky-0.0.2.tar.gz"
  sha256 "d8fad884229c26db592caa982937c850a4018a943766afeb79ddf18bebd3e7cc"
  version "0.0.2"
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