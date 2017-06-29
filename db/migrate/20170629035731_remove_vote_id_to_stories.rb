class RemoveVoteIdToStories < ActiveRecord::Migration[5.1]
  def change
    remove_column :stories, :vote_id, :integer
  end
end
