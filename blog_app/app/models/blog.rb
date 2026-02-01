class Blog < ApplicationRecord
    has_many:comments, dependent: :destroy
    scope:published,->{where(published:true)}

    validates :title, presence: true , length: { minimum: 5 }
    validates :content, presence: true

    before_validation :normalize_title

    private

    def normalize_title
       self.title = title.strip.capitalize if title.present?
    end	
end
