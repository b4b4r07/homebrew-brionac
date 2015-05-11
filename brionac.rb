require "formula"

class Brionac < Formula
    homepage "https://github.com/b4b4r07/brionac"
    version '0.1.0'

    if Hardware.is_64_bit?
        url "https://github.com/b4b4r07/brionac/releases/download/v0.1.0/brionac_darwin_amd64"
        sha1 "6e9a767cccc485ef987146fd3dd32abff95c8370"
        KIND="amd64"
    else
        url "https://github.com/b4b4r07/brionac/releases/download/v0.1.0/brionac_darwin_386"
        sha1 "c551a95a872126085450ce3e55f3dff49cf75321"
        KIND="386"
    end

    def install
        system 'mv', "brionac_darwin_#{KIND}", 'brionac'
        bin.install 'brionac'
    end

    def caveats; <<-EOS.undent
        Type `brionac' to start
        EOS
    end
end
