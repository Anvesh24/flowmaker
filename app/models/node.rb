class Node < ActiveRecord::Base
  attr_accessor :topic
  belongs_to :nodable, :polymorphic => true
  has_many :comments, :as => :nodable
end
