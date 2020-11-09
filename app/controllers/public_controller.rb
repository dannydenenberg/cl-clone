class PublicController < ApplicationController
  def home
    # select all parent categories
    @categories = Category.where(parent_id: nil)
  end

  def faqs
  end

  def scams
  end

  def safety
  end

  def terms
  end
end
