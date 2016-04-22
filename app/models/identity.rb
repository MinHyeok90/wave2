class Identity < ActiveRecord::Base
    has_many :subjects, dependent: :destroy
end
