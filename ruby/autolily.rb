#!/usr/bin/ruby
#===============================================================================================================#
# Program name: Autolily                                                                                        #
# LICENSE: PUBLIC DOMAIN                                                                                        #
# This program takes 1 argument, the name of a lilypond file (*.ly), and watches it for changes every 1 second. #
# If there has been any change, it simply calls lilypond on it to create a new .pdf/.ps/.midi of it.            #
#                                                                                                               #
# Place this script somewhere, like in ~/scripts                                                                #
# Then, open up a terminal and call it like so: ~/scripts/autolily.rb [lilypond file]                           #
# Be sure to call it from the directory where the lilypond file is located -- i.e., don't do [path/to/file]     #
#                                                                                                               #
# To exit, type CTRL-C.                                                                                         #
#===============================================================================================================#

def get_lily_files path
  entries = Dir.new(path).entries
  lily_files = []
  entries.each do |entry|
    next if entry == '.' || entry == '..'
    if entry =~ /(.*?)\.ly$/
      lily_files << $1
    end
  end
  lily_files
end
dirname = File.dirname(__FILE__)

if ARGV.size > 0
  dirname = ARGV.shift
end
puts "Monitoring directory #{dirname}"
while true
  lily_files = get_lily_files( dirname )
  lily_files.each do |lily_name|
    lily_file = "#{dirname}/#{lily_name}.ly"
    pdf_file = "#{dirname}/#{lily_name}.pdf"
    lily_cmd = "lilypond #{lily_file};touch #{pdf_file}"
    ly_time = File.open(lily_file).mtime
#    puts "Checking #{lily_file}..."
#    puts "ly_time: #{ly_time}"
#    puts "pdf_time: #{pdf_time}"
    if !File.exist?(pdf_file) || ly_time > File.open(pdf_file).mtime
      puts "Processing #{lily_file}"
      `#{lily_cmd}`
      puts "Finished.\n"
      puts
    end
  end
  sleep 1
end
