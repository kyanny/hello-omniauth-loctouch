class User < ActiveRecord::Base
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.screen_name = auth['info']['nickname']
      user.avatar_image_url = auth['info']['image']
      user.profile_url = auth['info']['link']
    end
  end
end
