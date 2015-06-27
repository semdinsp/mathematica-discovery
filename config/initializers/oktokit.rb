# Be sure to restart your server when you modify this file.

Octokit.configure do |c|
  c.login = ENV['github']
  c.password = ENV['gitpass']
end


