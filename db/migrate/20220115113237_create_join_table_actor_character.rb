class CreateJoinTableActorCharacter < ActiveRecord::Migration[7.0]
  def change
    create_join_table :actors, :characters do |t|
      t.index %i[actor_id character_id], unique: true
    end
  end
end
