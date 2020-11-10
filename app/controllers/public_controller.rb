class PublicController < ApplicationController
  def home
    # select all parent categories
    @categories = Category.where(parent_id: nil)
  end

  def send_enquiry_to_person
    @post = Post.find(params[:post_id])

    if @post.present?
      ContactMailer.post_enquiry(@post.id, params[:email], params[:message]).deliver_now
      @notice = "Message sent successfully."
    else
      @notice = "Message not sent."
    end

    redirect_to post_path(@post), notice: notice
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
