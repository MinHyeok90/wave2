class User < ActiveRecord::Base
    has_one :setting, dependent: :destroy
    has_many :identities, dependent: :destroy
end
