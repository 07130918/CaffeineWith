class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :nickname, presence: true
  # ニックネームを必ず入力させる
  has_one_attached :image
  has_many :logs
  has_many :caffes, through: :logs
  # logsテーブルを通すとusers,caffesは多対多
  
  # ↓簡易ログイン用
  def self.guest
    find_or_create_by!(email: 'guest@com', nickname: 'guest') do |user|
    user.password = SecureRandom.urlsafe_base64
    end
  end
  
end
