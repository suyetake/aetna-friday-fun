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
Error Troubleshooting
=====

$ ruby api_test.rb
C:/code/Ruby26-x64/lib/ruby/2.6.0/rubygems/core_ext/kernel_require.rb:54:in `require': cannot load such file -- rest_client (LoadError)
        from C:/code/Ruby26-x64/lib/ruby/2.6.0/rubygems/core_ext/kernel_require.rb:54:in `require'
        from C:/code/projects/aetna-friday-fun/support/request_helper.rb:1:in `<top (required)>'
        from C:/code/projects/aetna-friday-fun/support/test_helper.rb:11:in `require_relative'
        from C:/code/projects/aetna-friday-fun/support/test_helper.rb:11:in `<top (required)>'
        from C:/code/Ruby26-x64/lib/ruby/2.6.0/rubygems/core_ext/kernel_require.rb:54:in `require'
        from C:/code/Ruby26-x64/lib/ruby/2.6.0/rubygems/core_ext/kernel_require.rb:54:in `require'
        from api_test.rb:1:in `<main>'

crystal@DESKTOP-P8SHL0G MINGW64 /c/code/projects/aetna-friday-fun/suite (win-laptop-ruby-2.6.5)
$ gem list
bigdecimal (default: 1.4.1)
bundler (default: 1.17.2)
byebug (11.1.0)
cmath (default: 1.0.0)
csv (default: 3.0.9)
date (default: 2.0.0)
dbm (default: 1.0.0)
did_you_mean (1.3.0)
e2mmap (default: 0.1.0)
etc (default: 1.0.1)
fcntl (default: 1.0.0)
fiddle (default: 1.0.0)
fileutils (default: 1.1.0)
forwardable (default: 1.2.0)
gdbm (default: 2.0.0)
io-console (default: 0.4.7)
ipaddr (default: 1.2.2)
irb (default: 1.0.0)
json (default: 2.1.0)
logger (default: 1.3.0)
matrix (default: 0.1.0)
minitest (5.14.0, 5.11.3)
mutex_m (default: 0.1.0)
net-telnet (0.2.0)
openssl (default: 2.1.2)
ostruct (default: 0.1.0)
power_assert (1.1.3)
prime (default: 0.1.0)
psych (default: 3.1.0)
rake (12.3.2)
rdoc (default: 6.1.2)
rexml (default: 3.1.9)
rss (default: 0.2.7)
scanf (default: 1.0.0)
sdbm (default: 1.0.0)
shell (default: 0.7)
stringio (default: 0.0.2)
strscan (default: 1.0.0)
sync (default: 0.5.0)
test-unit (3.2.9)
thwait (default: 0.1.0)
tracer (default: 0.1.0)
webrick (default: 1.4.2)
xmlrpc (0.3.0)
zlib (default: 1.0.0)

crystal@DESKTOP-P8SHL0G MINGW64 /c/code/projects/aetna-friday-fun/suite (win-laptop-ruby-2.6.5)
$ ruby -v
ruby 2.6.5p114 (2019-10-01 revision 67812) [x64-mingw32]


