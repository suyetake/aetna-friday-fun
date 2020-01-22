# aetna-friday-fun
sample coding for a chat on Friday Jan 10, 2020

# Sue Uyetake API Code inspections
# Testing is Looking!

It is time to run some tests against OMDb API - The Open Movie Database!

## Tips:
  - You can find documentation on the api at http://www.omdbapi.com/#usage
  - Information on MiniTest can be found at https://github.com/seattlerb/minitest
  - Use byebug to pause/debug test execution
  - Follow the same pattern on all api requests (e.g. `request('GET', '?s=star', {}, 'http://www.omdbapi.com/')`)

## Tasks:
1) Fetch a personal api key for omdbapi.com to implement on all of your api requests

2) Add an assertion to suite/test_no_api_key to ensure the response at runtime matches what is currently displayed with the api key missing

3) Extend suite/api_test.rb by creating a test that performs a search on 'thomas'.
(note: you can use a different search term, but we are not responsible for the display of any content returned)
    - Verify all titles are a relevant match
    - Verify keys include Title, Year, imdbID, Type, and Poster for all records in the response
    - Verify values are all string
    - Verify year matches correct format

4) Add a test that uses the i parameter to verify each title on page 1 is accessible via imdbID

5) Add a test that verifies none of the poster links on page 1 are broken

=====
## Error Troubleshooting
=====
/Users/Topaz/.rvm/rubies/ruby-2.2.3/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require': cannot load such file -- minitest/autorun (LoadError)
	from /Users/Topaz/.rvm/rubies/ruby-2.2.3/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
	from /Users/Topaz/workspace/interviews/Aetna/aetna-friday-fun/support/test_helper.rb:4:in `<top (required)>'
	from /Users/Topaz/.rvm/rubies/ruby-2.2.3/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
	from /Users/Topaz/.rvm/rubies/ruby-2.2.3/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
	from api_test.rb:1:in `<main>'

$ gem list

*** LOCAL GEMS ***

bigdecimal (1.2.6)
bundler (1.10.6)
bundler-unload (1.0.2)
executable-hooks (1.3.2)
gem-wrappers (1.2.7)
io-console (0.4.3)
json (1.8.1)
psych (2.0.8)
rake (10.4.2)
rdoc (4.2.0)
rubygems-bundler (1.4.4)
rvm (1.11.3.9)

(mac-laptop-ruby-2.2.3) Sue Uyetake
Topaz-Sue:suite $ gem install minitest
ERROR:  Could not find a valid gem 'minitest' (>= 0), here is why:
          Unable to download data from https://rubygems.org/ - SSL_connect returned=1 errno=0 state=SSLv3 read server certificate B: certificate verify failed (https://api.rubygems.org/specs.4.8.gz)

(mac-laptop-ruby-2.2.3) Sue Uyetake
Topaz-Sue:suite $ ruby -v
ruby 2.2.3p173 (2015-08-18 revision 51636) [x86_64-darwin14]

