class Task < ActiveRecord::Base
  belongs_to :context, polymorphic: true, required: true
end
