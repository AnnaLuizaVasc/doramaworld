class Serie < ApplicationRecord

    def not_recommended? 
        classification < 5
    end

    def self.created_at
        where('created_at <= ?', Time.now).order('created_at desc')
    end
end
