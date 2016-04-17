class Task < ActiveRecord::Base
  has_ancestry

  belongs_to :board

end