class Post < ActiveRecord::Base
	belongs_to :user
	validates :content, length: {minimum: 1, maximum: 5000}
  # validates :user_id, presence: true

  def create
    @post = current_user.posts.build(post_params.merge(user_id: current_user.id))
    puts @post
    if @post.save
      flash[:success] = "Post created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  private

    def post_params
      params.require(:post).permit(:content, :title)
    end
end
