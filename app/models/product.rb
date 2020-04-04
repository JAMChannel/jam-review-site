class Product < ApplicationRecord
  has_many :reviews

  # def review_average
  #   self.reviews.average(:rate).round
  # end

  def review_average
    reviews.average(:rate).round  #self省略可能
  end
  

end
