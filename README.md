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


