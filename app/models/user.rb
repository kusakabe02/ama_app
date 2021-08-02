class User < ApplicationRecord
  authenticates_with_sorcery!
  validates :password, length: {minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  #ここからcrypted_passwordの記述
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :email, presence: true, uniqueness: true
  validates :user_name, presence: true, length: { maximum: 250 }
  # validates :last_name, presence: true, length: { maximum: 250 }
  # validates :first_name, presence: true, length: { maximum: 250 }
end
