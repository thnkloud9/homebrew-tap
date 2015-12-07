# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Newscoop < Formula
  homepage "https://github.com/sourcefabric/Newscoop"
  url "https://github.com/sourcefabric/Newscoop/archive/4.4.6.tar.gz"
  sha1 "3d150201408349c0ec9618ef5e093a2398b86b6f6b81fbf2692fb253762f2c69"

  depends_on "php56"
  depends_on "php56-pdo-pgsql"
  depends_on "postgresql"
  depends_on "composer"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    #system "./configure", "--disable-debug",
    #                      "--disable-dependency-tracking",
    #                      "--disable-silent-rules",
    #                      "--prefix=#{prefix}"
    #system "make", "install" # if this fails, try separate make/make install steps

    system "./scripts/osx/newscoop_osx_install.sh"
  end

  #test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test formalfridayclub`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    #system "false"
  #end
end
