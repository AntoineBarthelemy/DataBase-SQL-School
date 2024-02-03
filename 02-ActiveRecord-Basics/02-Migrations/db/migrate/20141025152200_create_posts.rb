class CreatePosts < ActiveRecord::Migration[7.0]
    # TODO: your code here to create the posts table
     def change
      create_table :posts do |column|
        column.string :title
        column.string :url
        column.timestamps
      end


    end
end
