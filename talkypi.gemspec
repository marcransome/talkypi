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

Gem::Specification.new do |s|
	s.name			= 'talkypi'
	s.version		= '1.0.0'
	s.date			= '2013-07-06'
	s.summary		= 'Command-line Prowl noticiations'
	s.description	= 'A simple command-line tool for delivering Prowl notifications.'
	s.authors		= ["Marc Ransome"]
	s.email			= 'marc.ransome@fidgetbox.co.uk'
	s.files			= `git ls-files`.split("\n")
	s.executables		<< 'talkypi' 
	s.add_runtime_dependency 'prowl', '>= 0.1.3'
	s.homepage		= 'http://github.com/marcransome/talkypi'
	s.license		= 'MIT'
end
