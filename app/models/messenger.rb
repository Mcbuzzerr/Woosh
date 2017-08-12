class Messenger < ApplicationRecord
    belongs_to :user
    def self.recent
       all.order "created_at ASC" 
    end
end
