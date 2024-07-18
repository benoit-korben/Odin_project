require 'net/http'
require 'open-uri'
require "timeout"

remote_base_url = "https://en.wikipedia.org/wiki"

[1900, 1910, 'xj3490', 2000].each do |yr|
  begin
    rpage = URI.open("#{remote_base_url}/#{yr}")
  rescue StandardError=>e
    puts "Error: #{e}"
  else
    rdata = rpage.read
  ensure
    puts "sleeping"
    sleep 5
  end

  if rdata
    File.open("copy-of-#{yr}.html", "w"){|f| f.write(rdata) }

  end
end
