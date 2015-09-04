class AddActorIdToMovie < ActiveRecord::Migration
  def change
    add_reference :movies, :actor_id, index: true

  end
end
