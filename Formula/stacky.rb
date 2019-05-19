class Stacky < Formula
  include Language::Python::Virtualenv
  desc "Stacky"
  homepage "https://github.com/mega-mac-slice/stacky"
  url "https://raw.githubusercontent.com/mega-mac-slice/stacky/master/dist/stacky-0.0.3.tar.gz"
  sha256 "3fcb84b2572f62dac0401ef2b7f2b9c5e5ed39f58b9ae808b18ed0578e681c27"
  version "0.0.3"
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