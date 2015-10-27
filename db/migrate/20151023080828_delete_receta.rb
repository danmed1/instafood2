class DeleteReceta < ActiveRecord::Migration
def up
    drop_table :receta
end
end
