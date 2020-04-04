class RankingController < ApplicationController
  layout 'review_site' #レイアウトファイルを指定するものです。
  # レイアウトファイルとはapp/views/layouts/の下に入っているHTMLファイルです。
  # レイアウトファイルはURLにアクセスして対応するコントローラが呼ばれたあと、
  # 最初に表示されるHTMLのことです。実は今まで修正していたshow.html.erbなどの
  # ファイルはレイアウトファイルの中に呼び出されています。


  before_action :ranking

  def ranking
    # @ranking = Product.limit(5)
    product_ids = Review.group(:product_id).order('count_product_id DESC').limit(5).count(:product_id).keys
      @ranking = product_ids.map { |id| Product.find(id) }
  end
end
