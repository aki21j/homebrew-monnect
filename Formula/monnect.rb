class Monnect < Formula
  include Language::Python::Virtualenv

  desc "Automatically connect or disconnect a Bluetooth speaker when a specific display is connected on macOS"
  homepage "https://github.com/aki21j/Monnect"
  url "https://files.pythonhosted.org/packages/source/m/monnect/monnect-1.0.1.tar.gz"
  sha256 "dccda49d0250907e58cd4b5df0ebf9a6716d3899e350e00de651136a2f206c29"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/monnect", "--version"
  end
end
