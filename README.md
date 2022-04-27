# Solr Test

Very quick and dirty implementation of a Solr search index as proof of concept.

## Setup/running

1. Run `bundle install` to install all the gems
2. Run `bundle exec rake sunspot:solr:start` to start the local dev Solr instance (requires JRE)
3. Run `bundle exec rake db:seed` to generate some test data

In the `rails console`, you can search using `Post.search` (see [here](https://github.com/sunspot/sunspot#searching-objects) for documentation), or `Post.fuzzy_find('term')` to use a standard fuzzy searching approach (see [here](https://github.com/pacosgrove/solr-test/blob/b99139cdec89b5d7abb9b44341baba44f7818de0/app/models/application_record.rb#L4) for the code).
