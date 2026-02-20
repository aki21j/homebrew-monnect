class Monnect < Formula
  include Language::Python::Virtualenv

  desc "Automatically connect or disconnect a Bluetooth speaker when a specific display is connected on macOS"
  homepage "https://github.com/aki21j/Monnect"
  url "https://files.pythonhosted.org/packages/source/m/monnect/monnect-1.0.0.tar.gz"
  sha256 "eadddeedf82e7d59f7ac91000bfe69dc296ae54780fcad3dde868fd498710a45"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/monnect", "--version"
  end
end