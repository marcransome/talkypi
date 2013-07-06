#
#  talkypi
#
#  Copyright (c) 2013 Marc Ransome <marc.ransome@fidgetbox.co.uk>
#
#  Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to
#  deal in the Software without restriction, including without limitation the
#  rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
#  sell copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in
#  all copies or substantial portions of the Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
#  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
#  DEALINGS IN THE SOFTWARE.
#

require 'prowl'

class Talkypi
  
  def self.run
    config_file = "~/.talkypi"
    
    begin
      userkey = File.read(File.expand_path(config_file))
    rescue
      puts "Unable to read configuration file #{config_file}"
      exit 1
    end
    
    if not ARGV.count == 2 then
      puts "Usage: #{File.basename($0)} [EVENT][DESCRIPTION]"
      exit
    end
    
    event = ARGV[0]
    description = ARGV[1]
    
    Prowl.add(
      :apikey => userkey.chomp,
      :application => "talkypi",
      :event => event,
      :description => description
    )
  end
end