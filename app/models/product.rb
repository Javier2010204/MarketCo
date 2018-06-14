# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  name                :string
#  pricing             :decimal(, )
#  description         :text
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  user_id             :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Product < ApplicationRecord
  belongs_to :user
  validates_presence_of :name, message: 'Debes ponerle nombre a tu producto'
  validates_presence_of :pricing, message: 'Debes asignarle un precio a tu producto'
end
