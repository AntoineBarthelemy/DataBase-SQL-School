require_relative "../views/posts_view"

class PostsController
  def initialize
    @view = PostsView.new
  end

  def index
    # DO NOT WRITE SQL QUERIES
    # TODO: gather all posts from the database
    # TODO: give them to the view to be printed

    select_data = Post.all
    @view.when_index_called(select_data)


  end

  def create()
    # DO NOT WRITE SQL QUERIES
    # TODO: create a post

    @view = view.create_post_interface
    select_data = Post.create(title: view[0], url: view[1])
  end

  def update
    # DO NOT WRITE SQL QUERIES
    # TODO: update a post
    view = @view

    data = view.ask_for_post_id()
    Post.find(data[0])
    p data
  end

  def destroy
    # DO NOT WRITE SQL QUERIES
    # TODO: destroy a post
  end

  def upvote
    # DO NOT WRITE SQL QUERIES
    # TODO: increment the `votes` column for a post
  end
end
