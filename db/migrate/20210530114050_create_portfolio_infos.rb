class CreatePortfolioInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :portfolio_infos do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.text :main_image
      t.text :thumb_image

      t.timestamps
    end
  end
end
