class Node < ActiveRecord::Base
  belongs_to :parent, class_name: Node.name
  has_many :children, class_name: Node.name, foreign_key: :parent_id, dependent: :nullify

  scope :root, -> { where(parent_id: nil) }
end
