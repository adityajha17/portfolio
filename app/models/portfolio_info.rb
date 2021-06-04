class PortfolioInfo < ApplicationRecord
    validates_presence_of :title, :body
end
