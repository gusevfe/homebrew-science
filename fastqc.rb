require 'formula'

class Fastqc < Formula
  homepage 'http://www.bioinformatics.babraham.ac.uk/projects/fastqc/'
  url 'https://github.com/gusevfe/fastqc/releases/download/v0.10.1-single-profile/FastQC-0.10.1-single-profile.zip'
  sha1 '805091b4c0381ada4ef77ea085d14105aff43fd3'

  def install
    chmod 0755, 'fastqc'
    prefix.install Dir['*']
    mkdir_p bin
    ln_s prefix/'fastqc', bin/'fastqc'
  end

  def test
    system "fastqc", "-h"
  end
end
