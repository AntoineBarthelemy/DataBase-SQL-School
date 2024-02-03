class PostsView
  # TODO: implement some methods here when controller needs to `puts` or `gets`

  def when_index_called(list_all_posts)
    list_all_posts.each do |post|
      puts post.title
    end
  end

  def create_post_interface
    puts "Which title you want to add"
    title_selected = gets.chomp.to_s
    puts "Which url is associated"
    url_selected = gets.chomp.to_s
    return title_selected, url_selected
  end

  def ask_for_post_id()
    puts "Which post you want to update ?"
    index_selected = gets.chomp.to_i
    # variable = Post.find(index_selected)
    puts "Which is the title, you want updata"
    title_updated = gets.chomp.to_s
    puts "Which is the url, you want to update"
    url_selected = gets.chomp.to_s
    return index_selected, title_updated, url_selected


  end
end
