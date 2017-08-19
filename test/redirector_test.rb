require 'minitest/autorun'
require_relative '../lib/redirector'

class TestRedirector < Minitest::Test
  def test_redirect_link_to_cafecode_root
    assert_equal 'https://cafecode.co/', Redirector.link
  end

  def test_redirect_link_with_url_path
    assert_equal 'https://cafecode.co/foo/bar', Redirector.link(splat: ['foo/bar'])
    assert_equal 'https://cafecode.co/foo/bar.html', Redirector.link(splat: ['foo/bar.html'])
  end

  def test_redirect_to_root_with_campaign
    assert_equal 'https://cafecode.co/?utm_source=brv&utm_campaign=301-redirects', Redirector.link(redirect_campaign: true)
  end

  def test_redirect_with_url_path_and_campaign
    assert_equal 'https://cafecode.co/foo/bar?utm_source=brv&utm_campaign=301-redirects', Redirector.link(splat: ['foo/bar'], redirect_campaign: true)
    assert_equal 'https://cafecode.co/foo/bar.html?utm_source=brv&utm_campaign=301-redirects', Redirector.link(splat: ['foo/bar.html'], redirect_campaign: true)
  end
end