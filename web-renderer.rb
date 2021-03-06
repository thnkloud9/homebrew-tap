# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class WebRenderer < Formula
  homepage "https://github.com/thnkloud9/web-renderer"
  url "https://github.com/thnkloud9/web-renderer/archive/0.0.1.tar.gz"
  sha1 ""

  depends_on :php56 
  depends_on :php56-pdo-pgsql 
  depends_on :postgresql
  depends_on :composer

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    #system "./configure", "--disable-debug",
    #                      "--disable-dependency-tracking",
    #                      "--disable-silent-rules",
    #                      "--prefix=#{prefix}"
    #system "make", "install" # if this fails, try separate make/make install steps

    system "./scripts/osx/webrenderer_osx_install.sh --full"
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
