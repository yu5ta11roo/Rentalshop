class Item < ApplicationRecord
  has_many :likes, dependent: :destroy

  def self.search(search)
    return Item.all unless search
    Item.where(['title LIKE ?', "%#{search}%"])
  end

  def cart(user)
    likes.create(user_id: user.id)
  end

  def notcart(user)
    likes.find_by(user_id: user.id).destroy
  end
end
