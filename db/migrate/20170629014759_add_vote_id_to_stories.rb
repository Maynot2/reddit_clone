class AddVoteIdToStories < ActiveRecord::Migration[5.1]
  def change
    add_column :stories, :vote_id, :integer
  end
end
