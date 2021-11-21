require "open-uri"

puts 'jp.reuters.comのurlを入力してください:'
url = gets.chomp
matches = /^https:\/\/jp.reuters.com\/article\//.match?(url)
if !matches
  puts 'jp.reuters.comのみの対応ができます。もう一度やり直してください。'
end

str = html.scan(%r{<title>(.+?)</title>})
puts str

str = html.scan(%r{<p class="Paragraph-paragraph-2Bgue ArticleBody-para-TD_9x">(.+?)</p>})
puts str

str = html.scan(%r{<meta name="sailthru.date" (.+?)/>})
puts str