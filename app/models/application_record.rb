class ApplicationRecord < ActiveRecord::Base
  extend RDL::Annotate
  self.abstract_class = true
end
