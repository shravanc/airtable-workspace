# Workspace
class WorkSpace < ApplicationRecord
  validates_presence_of :title, :description
end
