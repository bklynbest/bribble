class Shot < ApplicationRecord
    belongs_to :user
    validates :title, presence: true
    mount_uploader :user_shot, UserShotUploader
end
