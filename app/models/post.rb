class Post < ApplicationRecord
    #validaciones
    validates :title, presence: true
    validates :image_url, presence: true
    validates :content, presence: true

    #callbacks
    before_save :sense_word

    def sense_word
        self.content = self.content.upcase.gsub "SPOILER", ""
    end
end
