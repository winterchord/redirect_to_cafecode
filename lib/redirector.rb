class Redirector
  def self.link(options = {splat: [], redirect_campaign: false})
    result = "https://cafecode.co/"
    result = "https://cafecode.co/#{options[:splat].join}" if options[:splat]
    result = result << '?utm_source=brv&utm_campaign=redirects-301' if options[:redirect_campaign]

    result
  end
end