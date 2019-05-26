class Stacky < Formula
  include Language::Python::Virtualenv
  desc "Stacky"
  homepage "https://github.com/mega-mac-slice/stacky"
  url "https://raw.githubusercontent.com/mega-mac-slice/stacky/master/dist/mms-stacky-0.0.5.tar.gz"
  sha256 "09e50260858064254ae40cc46fdaac165b9416b27725358cf74327c7842cfe3a"
  version "0.0.5"
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