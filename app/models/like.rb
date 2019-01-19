class Like < ApplicationRecord
  # 常に両方存在させる
  validates :user_id, {presence: true}
  validates :post_id, {presence: true}
end
