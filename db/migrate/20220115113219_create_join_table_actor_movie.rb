class CreateJoinTableActorMovie < ActiveRecord::Migration[7.0]
  def change
    create_join_table :actors, :movies do |t|
      t.index [:actor_id, :movie_id]
    end
  end
end
