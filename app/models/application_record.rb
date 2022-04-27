class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def self.fuzzy_find(term)
    if self.respond_to?(:search)
      self.search do
        fulltext "#{term}~2"
      end.results
    else
      raise StandardError
    end
  end
end
